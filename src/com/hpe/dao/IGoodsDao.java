/**
 * 
 */
package com.hpe.dao;

import java.util.List;

import com.hpe.pojo.Goods;

/**
 * @author 晓
 *
 */
public interface IGoodsDao {

	/** 
	 * 方法描述：通过type查找不同类型的产品
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
