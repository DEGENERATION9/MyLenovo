/**
 * 
 */
package com.hpe.dao.impl;

import java.util.List;

import com.hpe.dao.IGoodsDao;
import com.hpe.pojo.Goods;
import com.hpe.util.DBUtil;

/**
 * @author 晓
 *
 */
public class GoodsDaoImpl implements IGoodsDao {

	private DBUtil dbutil=new DBUtil();
	@Override
	public List<Goods> findByType(int type) {
		String sql="select * from goods where type=?";
		Object[] param={type};
		List list =null;
		try {
			list=dbutil.getQueryList(Goods.class, sql, param);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
	
	@Override
	public Goods getGoodsById(int goodsid) {
		String sql="select * from goods where id=?";
		Object[] param={goodsid};
		Goods goods=null;
		try {
			goods=(Goods) dbutil.getObject(Goods.class, sql, param);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		return goods;
		
	}

	@Override
	public List<Goods> findAll() {
		String sql="select * from goods";
		List list =null;
		try {
			list=dbutil.getQueryList(Goods.class, sql, null);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}

}
