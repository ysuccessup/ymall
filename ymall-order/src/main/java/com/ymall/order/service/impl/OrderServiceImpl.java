package com.ymall.order.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ymall.common.vo.SysResult;
import com.ymall.order.mapper.OrderMapper;
import com.ymall.order.pojo.Order;
import com.ymall.order.pojo.OrderItem;
import com.ymall.order.pojo.OrderShipping;
import com.ymall.order.pojo.Shipping;
import com.ymall.order.service.OrderService;

@Service
public class OrderServiceImpl implements OrderService {

	
	@Autowired
	private OrderMapper orderMapper;
	
	@Override
	public String create(Order order) {
		String orderId = order.getUserId() +""+ System.currentTimeMillis();
		order.setOrderId(orderId);
		
		orderMapper.create(order);
		return orderId;
	}

	@Override
	public Order queryById(String orderId) {
		return orderMapper.queryById(orderId);
	}
	
	@Override
	public SysResult queryAddressByUserId(Long userId) {
		List<OrderShipping> orderShips = orderMapper.queryAddressByUserId( userId);
		return SysResult.oK(orderShips);
	}

	@Override
	public void addAddress(Shipping ship) {
		orderMapper.addAddress( ship);
	}

	@Override
	public SysResult queryOrderItemByUserId(Long userId) {
		List<OrderItem> orderItems = orderMapper.queryOrderItemByUserId(userId);
		return SysResult.oK(orderItems);
	}
}
