package com.ymall.web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ymall.web.pojo.Cart;
import com.ymall.web.pojo.User;
import com.ymall.web.service.CartCookieService;
import com.ymall.web.service.CartService;
import com.ymall.web.threadlocal.UserThreadLocal;

@RequestMapping(value = "cart")
@Controller
public class CartController {

    @Autowired
    private CartService cartService;
    
    @Autowired
    private CartCookieService cartCookieService;

    @RequestMapping("add/{itemId}/{num}")
    public String addItemToCart(@PathVariable("itemId") Long itemId,@PathVariable("num") Integer num,HttpServletRequest request,HttpServletResponse response) {
        // 判断用户是否登录
        User user = UserThreadLocal.get();
        if (user == null) {
            // 未登录，将商品数据保存到cookie中
            try {
                cartCookieService.addItemToCart(itemId,num,request, response);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            // 登录，将商品数据保存到数据库中
            cartService.addItemToCart(user, itemId,num);
        }
        return "redirect:/cart/show.html";
    }

    @RequestMapping("show")
    public String showCart(HttpServletRequest request,HttpServletResponse response,Model model) {
        User user = UserThreadLocal.get();
        List<Cart> carts = null;
        if (user == null) {
            // 未登录，从cookie中查询商品
            try {
                carts =  cartCookieService.queryCartByUser(request,response,true);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            carts = cartService.queryCartByUser(user);
        }
        if(carts==null || carts.isEmpty()) {
        	return "cart-empty";
        }
        model.addAttribute("cartList", carts);
        return "cart";
    }

    @RequestMapping("delete/{itemId}")
    @ResponseBody
    public void deleteCart(@PathVariable("itemId") Long itemId,HttpServletRequest request,HttpServletResponse response) {
        User user = UserThreadLocal.get();
        if (user == null) {
            // 未登录，从cookie中查询商品
            try {
                cartCookieService.deleteCart(itemId, request, response);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            cartService.deleteCart(user, itemId);
        }
    }

    /**
     * 更新数量
     * @param itemId
     * @param num
     * @return
     */
    @RequestMapping(value = "update/num/{itemId}/{num}")
    @ResponseBody
    public void updateCart(@PathVariable("itemId") Long itemId, @PathVariable("num") Integer num,HttpServletRequest request,HttpServletResponse response) {
        User user = UserThreadLocal.get();
        if (user == null) {
            // 未登录，从cookie中查询商品
            try {
                cartCookieService.updateCart(request,response,itemId, num);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            cartService.updateCart(user, itemId, num);
        }
    }

}
