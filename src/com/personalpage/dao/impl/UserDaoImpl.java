package dao.impl;

import dao.IUserDao;
import pojo.User;
import util.DBUtil;

public class UserDaoImpl implements IUserDao {

	private DBUtil dbUtil = new DBUtil();
	@Override
	public int update(User user) {
		String sql = "update user set uesrno =?,password=?,name=?,sex=?,address=?,phone=?,email=?, where id=?";
	    
	    Object[] objects = { user.getName(), user.getPwd(), user.getRealname(), user.getSex(), user.getAddress(), user.getPhone(), user.getEmail(), Integer.valueOf(user.getId()) };
	    
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
	public User findByName(String name) {
		String sql = "select * from user where name=?";
	    
	    Object[] objects = { name };
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
	    String Ssql = "select * from users where name=?";
	    Object[] object = { user.getName() };
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

}
