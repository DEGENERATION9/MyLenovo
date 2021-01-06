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
	 * @author xyh
	 * @date 2020/12/23 15:49
	 */
	 List search(String title);
	 
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

	/** 
	 * 方法描述：价格升序
	 * @return
	 */
	List<Goods> asc();

}
