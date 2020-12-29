package com.service.impl;

import com.dao.IUserDao;
import com.dao.impl.UserDaoImpl;
import com.pojo.User;
import com.service.IUserService;
import com.util.DBUtil;



public class UserServiceImpl implements IUserService {

	private IUserDao ud = new UserDaoImpl();
	private DBUtil dbUtil = new DBUtil();
	@Override
	public int update(User user) {
	    return this.ud.update(user);
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
	      return -1;
	    }
	    return result;
	  }

	public User login(String userno, String pwd) {
		return ud.login(userno,pwd);
	}
}
