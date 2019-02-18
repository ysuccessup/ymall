package com.ymall.cart.service;

import com.ymall.cart.pojo.Cart;
import com.ymall.common.vo.SysResult;

public interface CartService {

	SysResult saveItem(Cart cart);

	SysResult queryCartList(Long userId);

	void updateNum(Long userId, Long itemId, Integer num);

	SysResult delete(Long userId, Long itemId);

	SysResult queryCartItem(Long userId, Long itemId);

}
