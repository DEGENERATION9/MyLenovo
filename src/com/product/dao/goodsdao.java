package com.product.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.product.entity.goods;
//罗子维
public class goodsdao {

	public static goods selectById(int id) {
		goods it = null;
		
		ResultSet rs = null;
		Connection conn = Basedao.getconn();
		
		PreparedStatement ps =null;
		
		try {
			String sql = "select * from goods where id=?";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			rs = ps.executeQuery();

			while(rs.next()) {
				it = new goods(
						rs.getInt("id"),
						rs.getInt("type"),
						rs.getString("img"),
						rs.getString("title"),
						rs.getString("info"),
						rs.getInt("price"),
						rs.getInt("num"),
						rs.getString("text"),
						rs.getString("config")
						);
				
				
			}
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		} finally {
			Basedao.closeall(rs, ps, conn);
		}
			
		
		return it;
	}
	
	public static ArrayList<goods> selectAllBytype(int type) {
		ArrayList<goods> list = new ArrayList<goods>();
		
		ResultSet rs = null;
		Connection conn = Basedao.getconn();
		
		PreparedStatement ps =null;
		
		try {
			String sql = "select * from goods where type=?";
			ps = conn.prepareStatement(sql);
			
			ps.setInt(1, type);
			
			rs = ps.executeQuery();

			while(rs.next()) {
				goods it = new goods(
						rs.getInt("id"),
						rs.getInt("type"),
						rs.getString("img"),
						rs.getString("title"),
						rs.getString("info"),
						rs.getInt("price"),
						rs.getInt("num"),
						rs.getString("text"),
						rs.getString("config")
						);
				list.add(it);
				
			}
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		} finally {
			Basedao.closeall(rs, ps, conn);
		}
			
		
		return list;
	}
	
	
	public static ArrayList<goods> selectAllById(ArrayList<Integer> ids) {
		ArrayList<goods> Lastlist = new ArrayList<goods>();
		
		ResultSet rs = null;
		Connection conn = Basedao.getconn();
		
		PreparedStatement ps =null;
		

		try {
			for(int i = 0; i < ids.size(); i++) {
				String sql = "select * from goods where id=?";
				ps = conn.prepareStatement(sql);
				
				ps.setInt(1, ids.get(i));
				
				rs = ps.executeQuery();
	
				while(rs.next()) {
					goods it = new goods(
							rs.getInt("id"),
							rs.getInt("type"),
							rs.getString("img"),
							rs.getString("title"),
							rs.getString("info"),
							rs.getInt("price"),
							rs.getInt("num"),
							rs.getString("text"),
							rs.getString("config")
							);
					Lastlist.add(it);
					
				}
			}
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		} finally {
			Basedao.closeall(rs, ps, conn);
		}
			
		
		return Lastlist;
	}
	
	

}
