package com.product.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.product.entity.types;

//罗子维

public class typesdao {
	public static types selectById(int id) {
		types blog = null;
		
		ResultSet rs = null;
		Connection conn = Basedao.getconn();
		
		PreparedStatement ps =null;
		
		try {
			String sql = "select * from types where id=?";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			rs = ps.executeQuery();

			while(rs.next()) {
				blog = new types(
						rs.getInt("id"),
						rs.getString("name")
						);
				
				
			}
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		} finally {
			Basedao.closeall(rs, ps, conn);
		}
			
		
		return blog;
	}
	
}
