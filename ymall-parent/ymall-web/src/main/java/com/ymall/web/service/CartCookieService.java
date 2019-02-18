package com.ymall.web.service;

import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.ymall.common.util.CookieUtils;
import com.ymall.web.pojo.Cart;
import com.ymall.web.pojo.Item;

@Service
public class CartCookieService {

    private static final String YMALL_CART = "YMALL_CART";

    private static final ObjectMapper MAPPER = new ObjectMapper();

    private static final Integer COOKIE_TIME = 60 * 60 * 24 * 30;

    @Autowired
    private ItemService itemService;

    public void addItemToCart(Long itemId,Integer num, HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        // 读取cookie中购物车的数据
        String cookieData = CookieUtils.getCookieValue(request, YMALL_CART);
        List<Cart> carts = null;
        if (StringUtils.isEmpty(cookieData)) {
            // 将商品数据保存到cookie中
            carts = new ArrayList<Cart>(1);
            carts.add(itemToCart(itemId,num));
        } else {
            carts = queryCartByUser(request, response, false);
            // 判断，该商品是否存在购物车中
            boolean bool = false;
            Cart cart = null;
            for (Cart c : carts) {
                if (c.getItemId().intValue() == itemId.intValue()) {
                    bool = true;
                    cart = c;
                    break;
                }
            }

            if (bool) {
                // 存在
                cart.setNum(cart.getNum() + num);
            } else {
                carts.add(itemToCart(itemId,num));
            }
        }
        CookieUtils.setCookie(request, response, YMALL_CART, MAPPER.writeValueAsString(carts), COOKIE_TIME);
    }

    private Cart itemToCart(Long itemId,Integer num) throws Exception {
        Item item = this.itemService.queryItemById(itemId);
        Cart cart = new Cart();
        cart.setItemId(itemId);
        String[] images = item.getImages();
        if (images == null) {
            cart.setItemImage("");
        } else {
            cart.setItemImage(images[0]);
        }
        cart.setItemPrice(item.getPrice());
        // 编码
        String title = URLEncoder.encode(item.getTitle(), "UTF-8");
        cart.setItemTitle(title);
        cart.setNum(num);
        cart.setCreated(new Date());
        return cart;
    }

    public List<Cart> queryCartByUser(HttpServletRequest request, HttpServletResponse response,
            boolean isDecode) throws Exception {
        // 读取cookie中购物车的数据
        String cookieData = CookieUtils.getCookieValue(request, YMALL_CART);
        if (null == cookieData) {
            return null;
        }
        List<Cart> carts = MAPPER.readValue(cookieData,
                MAPPER.getTypeFactory().constructCollectionType(List.class, Cart.class));
        if (isDecode) {
            for (Cart cart : carts) {
                String title = URLDecoder.decode(cart.getItemTitle(), "UTF-8");
                cart.setItemTitle(title);
            }
        }
        return carts;
    }

    public void deleteCart(Long itemId, HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        List<Cart> carts = queryCartByUser(request, response, false);
        for (int i = 0; i < carts.size(); i++) {
            Cart cart = carts.get(i);
            if (cart.getItemId().intValue() == itemId.intValue()) {
                carts.remove(i);
                break;
            }
        }
        // 写入到cookie中
        CookieUtils.setCookie(request, response, YMALL_CART, MAPPER.writeValueAsString(carts), COOKIE_TIME);
    }

    public void updateCart(HttpServletRequest request, HttpServletResponse response, Long itemId, Integer num)throws Exception {
        List<Cart> carts = queryCartByUser(request, response, false);
        for (int i = 0; i < carts.size(); i++) {
            Cart cart = carts.get(i);
            if (cart.getItemId().intValue() == itemId.intValue()) {
                cart.setNum(num);
                break;
            }
        }
        // 写入到cookie中
        CookieUtils.setCookie(request, response, YMALL_CART, MAPPER.writeValueAsString(carts), COOKIE_TIME);
    }

}
