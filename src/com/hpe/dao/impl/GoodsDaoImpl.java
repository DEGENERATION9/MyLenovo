/**
 * 
 */
package com.hpe.dao.impl;

import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.converters.BigDecimalConverter;

import com.hpe.dao.BaseDao;
import com.hpe.dao.IGoodsDao;
import com.hpe.pojo.Goods;
import com.hpe.util.DBUtil;
import com.mysql.jdbc.PreparedStatement;

/**
 * @author 晓
 *
 */
public class GoodsDaoImpl implements IGoodsDao {

	private DBUtil dbutil = new DBUtil();
	private BaseDao baseDao = new BaseDao();

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

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.hpe.dao.IGoodsDao#asc()
	 */
	@Override
	public List<Goods> asc() {
		String sql = "select * FROM goods ORDER BY price ASC";
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
	 * 
	 * 方法描述：通过id查找最近浏览
	 * 
	 * @param ids
	 * @return
	 */
	@Override
	public ArrayList<Goods> selectAllById(ArrayList<Integer> ids) {
		ArrayList<Goods> Lastlist = new ArrayList<Goods>();

		ResultSet rs = null;
		Connection conn = baseDao.getConn();

		java.sql.PreparedStatement ps = null;

		try {
			for (int i = 0; i < ids.size(); i++) {
				String sql = "select * from goods where id=?";
				ps = conn.prepareStatement(sql);

				ps.setInt(1, ids.get(i));

				rs = ps.executeQuery();

				while (rs.next()) {
					Goods it = new Goods(rs.getInt("id"), rs.getInt("type"), rs.getString("img"), rs.getString("title"),
							rs.getString("info"), rs.getBigDecimal("price"), rs.getInt("num"), rs.getString("text"),
							rs.getString("config"));
					Lastlist.add(it);

				}
			}
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		} finally {
			baseDao.closeall(rs, ps, conn);
		}

		return Lastlist;
	}

}
