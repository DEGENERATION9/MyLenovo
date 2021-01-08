package com.hpe.dao;

import com.hpe.pojo.Order;

public interface IOrderDao {
	/**
	 * 
	 * @param order
	 * @return
	 */
	 int pay(Order order);

}
