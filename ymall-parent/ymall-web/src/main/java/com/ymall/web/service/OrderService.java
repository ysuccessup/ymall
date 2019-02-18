package com.ymall.web.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.ymall.common.service.HttpClientService;
import com.ymall.common.vo.SysResult;
import com.ymall.web.pojo.Order;
import com.ymall.web.pojo.OrderItem;
import com.ymall.web.pojo.OrderShipping;
import com.ymall.web.pojo.Shipping;

@Service
public class OrderService {

    @Autowired
    private HttpClientService httpClientService;

    private static final ObjectMapper MAPPER = new ObjectMapper();

    /**
     * 创建订单返回订单号
     * 
     * @param order
     * @return
     */
    public String createOrder(Order order) {
        try {
            String url = "http://order.7mall.com/order/create";
            String json = MAPPER.writeValueAsString(order);
            String jsonData = httpClientService.doPostJson(url, json);
            JsonNode jsonNode = MAPPER.readTree(jsonData);
            return jsonNode.asText();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public Order queryOrderById(String id) {
        try {
            String url = "http://order.7mall.com/order/query/" + id;
            String jsonData = httpClientService.doGet(url);
            return MAPPER.readValue(jsonData, Order.class);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

	/**
     * 根据用户id查询用户地址信息
     * @param userId
     * @return
     */
	@SuppressWarnings("unchecked")
	public List<OrderShipping> queryAddressByUserId(Long userId) {
		  String url = "http://order.7mall.com/order/queryAddressByUserId/" +userId;
	        try {
	        	String jsonData = httpClientService.doPost(url,null);
	            SysResult sysResult = SysResult.formatToList(jsonData, Shipping.class);
	            return (List<OrderShipping>) sysResult.getData();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return null;
	}
	
	/**
	 * 添加地址
	 * @param ship
	 */
	public Boolean addAddress(Shipping ship) {
		 String url = "http://order.7mall.com/order/addAddress";
		 Map<String, String> params = new HashMap<String, String>();
		 params.put("userId", String.valueOf(ship.getUserId()));
		 params.put("receiverAddress", ship.getReceiverAddress());
		 params.put("receiverCity", ship.getReceiverCity());
		 params.put("receiverMobile", ship.getReceiverMobile());
		 params.put("receiverName", ship.getReceiverName());
		 params.put("receiverState", ship.getReceiverState());
		 params.put("receiverZip", ship.getReceiverZip());
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
	public List<OrderItem> queryOrderItemByUserId(Long userId) {
		 String url = "http://order.7mall.com/order/queryOrderItemByUserId/"+userId;
		 try {
	        	String jsonData = httpClientService.doPost(url,null);
	            SysResult sysResult = SysResult.formatToList(jsonData, OrderItem.class);
	            return (List<OrderItem>) sysResult.getData();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return null;
	}

}
