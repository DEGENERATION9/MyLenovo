/**
 * 
 */
package com.hpe.service;

import java.util.List;

import com.hpe.pojo.ShoppingCar;

/**
 * @author 晓
 *
 */
public interface IOrderService {

	/** 
	 * 方法描述：
	 * @param id
	 * @param list
	 * @return
	 */
	boolean addOrder(int id, List<ShoppingCar> list);

}
