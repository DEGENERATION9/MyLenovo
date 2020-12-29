package com.dao.impl;

import com.dao.IUserDao;
import com.pojo.User;
import com.util.DBUtil;


public class UserDaoImpl implements IUserDao {
	private DBUtil dbUtil = new DBUtil();
	@Override
	public int update(User user) {
		String sql = "update user set uesrno =?,password=?,name=?,sex=?,address=?,phone=?,email=?, where id=?";
	    
	    Object[] objects = { user.getUserno(), user.getPassword(), user.getName(), user.getSex(), user.getAddress(), user.getPhone(), user.getEmail(), Integer.valueOf(user.getId()) };
	    
	    int result = 0;
	    try
	    {
	      result = this.dbUtil.execute(sql, objects);
	    }
	    catch (Exception e)
	    {
	      e.printStackTrace();
	    }
	    return result;
	}

	@Override
	public User findByName(String userno) {
		String sql = "select * from user where userno=?";
	    
	    Object[] objects = { userno };
	    User u = null;
	    try
	    {
	      u = (User)this.dbUtil.getObject(User.class, sql, objects);
	    }
	    catch (Exception e)
	    {
	      e.printStackTrace();
	    }
	    return u;
	}
	
	 public int userReg(User user, Object[] ob)
	  {
	    String Ssql = "select * from user where userno=?";
	    Object[] object = { user.getUserno() };
	    User uz = null;
	    try
	    {
	      uz = (User)this.dbUtil.getObject(User.class, Ssql, object);
	    }
	    catch (Exception e)
	    {
	      e.printStackTrace();
	    }
	    int result = 0;
	    if (uz == null)
	    {
	      String Isql = "insert into user(userno,password,name,sex,address,phone,email) values(?,?,?,?,?,?,?)";
	      try
	      {
	        result = this.dbUtil.execute(Isql, ob);
	      }
	      catch (Exception e)
	      {
	        e.printStackTrace();
	      }
	    }
	    else
	    {
	      return result = -1;
	    }
	    return result;
	  }
	 
	 @Override
	public User login(String userno, String pwd) {

			String sql = "select * from user where userno=? and password=?";
			Object[] param = { userno, pwd };
			User user = null;
			try {
				user = (User) dbUtil.getObject(User.class, sql, param);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			return user;
		}
}
