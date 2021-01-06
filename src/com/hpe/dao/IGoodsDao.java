/**
 * 
 */
package com.hpe.dao;

import java.util.ArrayList;
import java.util.List;

import com.hpe.pojo.Goods;

/**
 * @author 晓
 *
 */
public interface IGoodsDao {

	/**
	 * @author xyh
	 * @date 2020/12/23 15:49
	 */
	List search(String title);
	
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

	/** 
	 * 方法描述：
	 * @return
	 */
	List<Goods> asc();
	
	/**
	 * 
	 * 方法描述：通过id查找最近浏览
	 * @param ids
	 * @return
	 */
	ArrayList<Goods> selectAllById(ArrayList<Integer> ids); 
}
