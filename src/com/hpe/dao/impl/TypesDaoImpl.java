/**
 * 
 */
package com.hpe.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.hpe.dao.BaseDao;
import com.hpe.dao.ITypesDao;
import com.hpe.pojo.Types;

/**
 * @author 晓
 *
 */
public class TypesDaoImpl implements ITypesDao {

	private BaseDao baseDao = new BaseDao();
	@Override
	public Types selectById(int id) {
		Types blog = null;

		ResultSet rs = null;
		Connection conn = baseDao.getConn();

		PreparedStatement ps = null;

		try {
			String sql = "select * from types where id=?";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			rs = ps.executeQuery();

			while (rs.next()) {
				blog = new Types(rs.getInt("id"), rs.getString("name"));

			}
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		} finally {
			baseDao.closeall(rs, ps, conn);
		}

		return blog;
	}

}
