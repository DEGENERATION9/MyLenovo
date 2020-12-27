/**
 * 
 */
package com.hpe.service.impl;

import java.util.List;

import com.hpe.dao.IOrderDao;
import com.hpe.dao.impl.OrderDaoImpl;
import com.hpe.pojo.ShoppingCar;
import com.hpe.service.IOrderService;

/**
 * @author 晓
 *
 */
public class OrderServiceImpl implements IOrderService {

	private IOrderDao orderdao=new OrderDaoImpl();
	@Override
	public boolean addOrder(int id, List<ShoppingCar> list) {
		// TODO Auto-generated method stub
		return orderdao.addOrder(id,list);
	}

}
