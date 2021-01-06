/**
 * 
 */
package com.hpe.dao;

import java.sql.*;

/**
 * @author 晓
 *数据库基类(公共类,用于操作数据库)
 *
 */
public class BaseDao {
	private String driver="com.mysql.jdbc.Driver";
	private String url="jdbc:mysql://localhost:3306/lenovo";
	private String userno="root";
	private String pwd="123456";
	
	public Connection conn;//存储数据库连接信息
	public PreparedStatement ps;//执行sql命令
	public ResultSet rs;//存储执行结果
	
	/**
	 * 获得数据库连接
	 */
	public Connection getConn(){
		try {
			//1、加载驱动
			Class.forName(driver);
			//2、获取数据库连接
			this.conn=DriverManager.getConnection(url, userno, pwd);
			return conn;
		} catch (Exception e) {
			// (任意异常：Exception)将异常信息写入指定文件（日志文件）
			e.printStackTrace();
		}
		
		return null;
	}
	public static void main(String[] args) {
		Connection conn=new BaseDao().getConn();
		System.out.println(conn);
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
