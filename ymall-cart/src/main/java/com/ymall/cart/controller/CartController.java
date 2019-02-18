package com.ymall.cart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ymall.cart.pojo.Cart;
import com.ymall.cart.service.CartService;
import com.ymall.common.vo.SysResult;

@RequestMapping(value = "/cart")
@Controller
public class CartController {

    @Autowired
    private CartService cartService;

    /**
     * 添加商品到购物车
     * 
     * @param cart
     * @return
     */
    @RequestMapping(value = "save", method = RequestMethod.POST)
    @ResponseBody
    public SysResult saveItem(Cart cart) {
        return cartService.saveItem(cart);
    }

    /**
     * 根据用户ID查询购物车数据
     * 
     * @return
     */
    @RequestMapping(value = "query/{userId}", method = RequestMethod.GET)
    @ResponseBody
    public SysResult queryCartList(@PathVariable("userId") Long userId) {
        return cartService.queryCartList(userId);
    }
    
    /**
     * 根据用户id、商品id查询购物车商品信息
     * 
     * @return
     */
    @RequestMapping(value = "queryChecked/{userId}/{itemId}", method = RequestMethod.GET)
    @ResponseBody
    public SysResult queryCartList(@PathVariable("userId") Long userId,@PathVariable("itemId") Long itemId) {
        return cartService.queryCartItem(userId,itemId);
    }

    /**
     * 更新商品数量
     * 
     * @param userId
     * @param itemId
     * @param num
     * @return
     */
    @RequestMapping(value = "update/num/{userId}/{itemId}/{num}", method = RequestMethod.POST)
    @ResponseBody
    public void updateNum(@PathVariable("userId") Long userId, @PathVariable("itemId") Long itemId,
            @PathVariable("num") Integer num) {
        cartService.updateNum(userId, itemId, num);
    }

    /**
     * 删除购物车中的商品数据
     * 
     * @param userId
     * @param itemId
     * @return
     */
    @RequestMapping(value = "delete/{userId}/{itemId}", method = RequestMethod.POST)
    @ResponseBody
    public SysResult delete(@PathVariable("userId") Long userId, @PathVariable("itemId") Long itemId) {
        return cartService.delete(userId, itemId);
    }
    
}

