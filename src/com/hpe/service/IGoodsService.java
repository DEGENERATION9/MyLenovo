/**
 * 
 */
package com.hpe.service;

import java.util.List;

import com.hpe.pojo.Goods;

/**
 * @author 晓
 *
 */
public interface IGoodsService {

	/** 
	 * 方法描述：
	 * @param type 
	 * @return
	 */
	List<Goods> findByType(int type);

	/** 
	 * 方法描述：
	 * @param goodsid
	 * @return
	 */
	Goods getGoodsById(int goodsid);

	/** 
	 * 方法描述：
	 * @return
	 */
	List<Goods> findAll();

}
