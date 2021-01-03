/**
 * 
 */
package com.hpe.dao.impl;

import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.converters.BigDecimalConverter;

import com.hpe.dao.IGoodsDao;
import com.hpe.pojo.Goods;
import com.hpe.util.DBUtil;

/**
 * @author 晓
 *
 */
public class GoodsDaoImpl implements IGoodsDao {

	private DBUtil dbutil = new DBUtil();

	@Override
	public List<Goods> findByType(int type) {
		String sql = "select * from goods where type=?";
		Object[] param = { type };
		try {
			List<Map<String, Object>> queryList = dbutil.getQueryList(sql, param);
			return queryList.stream().map(map -> {
				Goods goods = new Goods();
				try {
					BeanUtils.populate(goods, map);
					
					BigDecimalConverter bd = new BigDecimalConverter(BigDecimal.ZERO);    
					ConvertUtils.register(bd, java.math.BigDecimal.class);
				} catch (IllegalAccessException | InvocationTargetException e) {
					e.printStackTrace();
				}
				return goods;
			}).collect(Collectors.toList());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;

	/*
	 * String sql="select * from goods where type=?"; Object[] param={type};
	 * List list =null; try {
	 * 
	 * list=dbutil.getQueryList(sql, param); } catch (Exception e) { // TODO
	 * Auto-generated catch block e.printStackTrace(); }
	 * 
	 * return list;
	 */
	}

	@Override
	public Goods getGoodsById(int goodsid) {
		String sql = "select * from goods where id=?";
		Object[] param = { goodsid };
		Goods goods = null;
		try {
			goods = (Goods) dbutil.getObject(Goods.class, sql, param);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return goods;

	}

	@Override
	public List<Goods> findAll() {
		String sql = "select * from goods";
		List list = null;
		try {
			list = dbutil.getQueryList(Goods.class, sql, null);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;
	}

	/**
	 * @author xyh
	 * @date 2020/12/23 15:50
	 */
	@Override
	public List search(String title) {
		String sql = "select * from goods where title like concat('%',?,'%')";
		Object[] param = { title };
		try {
			List<Map<String, Object>> queryList = dbutil.getQueryList(sql, param);
			return queryList.stream().map(map -> {
				Goods goods = new Goods();
				try {
					BeanUtils.populate(goods, map);
				} catch (IllegalAccessException | InvocationTargetException e) {
					e.printStackTrace();
				}
				return goods;
			}).collect(Collectors.toList());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
