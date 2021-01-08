package com.hpe.service.impl;

import com.hpe.dao.IOrderDao;
import com.hpe.dao.impl.OrderDaoImpl;
import com.hpe.pojo.Order;
import com.hpe.service.IOrderService;

public class OrderServiceImpl implements IOrderService{
	IOrderDao orderDao=new OrderDaoImpl();

	@Override
	public int pay(Order order) {
		// TODO Auto-generated method stub
		 return orderDao.pay(order);			
	}
	
	
}
