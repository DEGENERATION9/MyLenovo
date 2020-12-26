package service.impl;

import dao.IUserDao;
import dao.impl.UserDaoImpl;
import pojo.User;
import service.IUserService;
import util.DBUtil;

public class UserServiceImpl implements IUserService {
	private IUserDao ud = new UserDaoImpl();
	private DBUtil dbUtil = new DBUtil();
	@Override
	public int update(User user) {
		User uPo = this.ud.findByName(user.getName());
	    return this.ud.update(user);
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
	      return -1;
	    }
	    return result;
	  }
}
