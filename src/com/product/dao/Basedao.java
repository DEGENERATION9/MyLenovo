package com.product.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

//import com.sun.corba.se.pept.transport.Connection;
//罗子维
public class Basedao {
	
	static {
		//加载驱动
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
	}
	
	public static Connection getconn(){ //连接
		//创建连接对象
		Connection conn = null;
		
		try {
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/lenovo?useSSL=false&serverTimezone=UTC","root","123456");
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
		
		return conn;
	}
	
	public int exectuIUD(String sql, Object[] params){ //增删改
		int count = 0;
		Connection conn = Basedao.getconn();
		//准备SQL
		PreparedStatement ps = null;
		
		//插入
		try {
			//准备sql
			ps = conn.prepareStatement(sql);
			
			for(int i = 0; i<params.length; i++) {
				ps.setObject(i+1, params[i]);
			}
			
			count = ps.executeUpdate();
			
		} catch (Exception e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}finally {
			Basedao.closeall(null, ps, conn);
		}
		
		return count;
	}
	
	
	public static void closeall(ResultSet rs, PreparedStatement ps, Connection conn) { //关闭
		try {
			if(rs != null) {
				
				rs.close();
			}
			if(ps != null) {
				ps.close();
			}
			if(conn != null) {
				conn.close();
			}
		
	    } catch (SQLException e) {
		// TODO 自动生成的 catch 块
		e.printStackTrace();
	    }
		
	}
	
	
	
}
