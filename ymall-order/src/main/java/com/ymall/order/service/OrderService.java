package com.ymall.order.service;

import com.ymall.common.vo.SysResult;
import com.ymall.order.pojo.Order;
import com.ymall.order.pojo.Shipping;

public interface OrderService {

	String create(Order order);

	Order queryById(String orderId);

	SysResult queryAddressByUserId(Long userId);

	void addAddress(Shipping ship);

	SysResult queryOrderItemByUserId(Long userId);
	
}
