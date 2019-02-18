package com.ymall.web.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.ymall.common.service.HttpClientService;
import com.ymall.common.spring.exetend.PropertyConfig;
import com.ymall.common.vo.SysResult;
import com.ymall.web.pojo.Cart;
import com.ymall.web.pojo.Item;
import com.ymall.web.pojo.User;

@Service
public class CartService {

    @Autowired
    private ItemService itemService;

    @Autowired
    private HttpClientService httpClientService;

    @PropertyConfig
    private String CART_7MALL;

    private static final ObjectMapper MAPPER = new ObjectMapper();

    public Boolean addItemToCart(User user, Long itemId,Integer num) {
        // 通过商品id查询商品数据
        Item item = itemService.queryItemById(itemId);
        // 调用购物车系统的API添加商品
        String url = CART_7MALL + "/cart/save";
        Map<String, String> params = new HashMap<String, String>();
        params.put("userId", String.valueOf(user.getId()));
        params.put("itemId", String.valueOf(itemId));
        params.put("itemTitle", item.getTitle());
        String[] images = item.getImages();
        if (null == images) {
            params.put("itemImage", "");
        } else {
            params.put("itemImage", images[0]);
        }
        params.put("itemPrice", String.valueOf(item.getPrice()));
        params.put("num",String.valueOf(num));// 默认为：1
        try {
            String jsonData = httpClientService.doPost(url, params, "UTF-8");
            JsonNode jsonNode = MAPPER.readTree(jsonData);
            Integer status = jsonNode.get("status").intValue();
            if (status == 200 || status == 202) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    @SuppressWarnings("unchecked")
    public List<Cart> queryCartByUser(User user) {
        String url = CART_7MALL + "/cart/query/" + user.getId();
        try {
            String jsonData = httpClientService.doGet(url);
            SysResult sysResult = SysResult.formatToList(jsonData, Cart.class);
            return (List<Cart>) sysResult.getData();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * 删除
     * 
     * @param user
     * @param itemId
     * @return
     */
    public Boolean deleteCart(User user, Long itemId) {
        String url = CART_7MALL + "/cart/delete/" + user.getId() + "/" + itemId;
        try {
            String jsonData = httpClientService.doPost(url, null);
            JsonNode jsonNode = MAPPER.readTree(jsonData);
            Integer status = jsonNode.get("status").intValue();
            if (status == 200) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    /**
     * 更新数量
     * @param user
     * @param itemId
     * @param num
     * @return
     */
    public void updateCart(User user, Long itemId, Integer num) {
        String url = CART_7MALL + "/cart/update/num/" + user.getId() + "/" + itemId + "/" + num;
        try {
        	httpClientService.doPost(url, null);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    /**
     * 根据用户id、商品id查询购物车商品信息
     * @param user
     * @param itemId
     * @return
     */
	public Cart queryCartByUserAndItemId(User user, Long itemId) {
		 String url = CART_7MALL + "/cart/queryChecked/" + user.getId()+"/"+itemId;
	        try {
	            String jsonData = httpClientService.doGet(url);
	            SysResult sysResult = SysResult.formatToPojo(jsonData, Cart.class);
	            return (Cart) sysResult.getData();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return null;
	}

}
