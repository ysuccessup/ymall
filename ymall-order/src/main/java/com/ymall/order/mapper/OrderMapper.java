package com.ymall.order.mapper;

import java.util.Date;
import java.util.List;

import com.ymall.order.pojo.Order;
import com.ymall.order.pojo.OrderItem;
import com.ymall.order.pojo.OrderShipping;
import com.ymall.order.pojo.Shipping;

public interface OrderMapper {
	
	public Order queryById(String orderId);
	
	public void create(Order order);
	
	public void paymentOrderScan(Date date);

	public List<OrderShipping> queryAddressByUserId(Long userId);

	public void addAddress(Shipping ship);

	public List<OrderItem> queryOrderItemByUserId(Long userId);
}
