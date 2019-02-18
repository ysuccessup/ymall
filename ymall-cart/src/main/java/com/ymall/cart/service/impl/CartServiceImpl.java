package com.ymall.cart.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ymall.cart.mapper.CartMapper;
import com.ymall.cart.pojo.Cart;
import com.ymall.cart.service.CartService;
import com.ymall.common.vo.SysResult;

@Service
public class CartServiceImpl implements CartService{

	    @Autowired
	    private CartMapper cartMapper;

	    public SysResult saveItem(Cart newCart) {
	        // 判断商品是否存在购物车中，如果存在，数量+1
	        Cart cart = cartMapper.queryCartByUserIdAndItemId(newCart.getUserId(), newCart.getItemId());
	        if (cart == null) {
	            cartMapper.save(newCart);
	            return SysResult.oK(newCart.getId());
	        } else {
	            cart.setNum(cart.getNum() + newCart.getNum());
	            cartMapper.updateCartNum(cart);
	            return SysResult.build(202, "该商品已经存在购物车中!商品数量+n", null);
	        }
	    }

	    public SysResult queryCartList(Long userId) {
	        List<Cart> carts = cartMapper.queryCartList(userId);
	        return SysResult.oK(carts);
	    }

	    /**
	     * 修改购物车数量
	     * 
	     * @param userId
	     * @param itemId
	     * @param num
	     * @return
	     */
	    public void updateNum(Long userId, Long itemId, Integer num) {
	        cartMapper.updateCartNumByUserIdAndItemId(userId, itemId, num);
	    }

	    /**
	     * 删除商品
	     * 
	     * @param userId
	     * @param itemId
	     * @return
	     */
	    public SysResult delete(Long userId, Long itemId) {
	        Integer count = cartMapper.delete(userId, itemId);
	        if (count == null || count.intValue() == 0) {
	            return SysResult.build(201, "该商品不存在购物车中!");
	        }
	        return SysResult.oK();
	    }
	    
	    
		@Override
		public SysResult queryCartItem(Long userId, Long itemId) {
			  Cart cart = cartMapper.queryCartItem(userId,itemId);
			  return SysResult.oK(cart);
		}

	}
