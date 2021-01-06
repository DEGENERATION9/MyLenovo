/**
 * 
 */
package com.hpe.dao.impl;

import com.hpe.dao.IUserDao;
import com.hpe.pojo.User;
import com.hpe.util.DBUtil;

/**
 * @author 晓
 *
 */
public class UserDaoImpl implements IUserDao {

	private DBUtil dbutil = new DBUtil();

	@Override
	public User login(String userno, String pwd) {

		String sql = "select * from user where userno=? and password=?";
		Object[] param = { userno, pwd };
		User user = null;
		try {
			user = (User) dbutil.getObject(User.class, sql, param);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return user;
	}

	/* (non-Javadoc)
	 * @see com.hpe.dao.IUserDao#update(com.hpe.pojo.User)
	 */
	@Override
	public int update(User user) {
		String sql = "update user set userno =?,password=?,name=?,sex=?,address=?,phone=?,email=? where id=?";
		 Object[] objects = { user.getUserno(), user.getPassword(), user.getname(), user.getSex(), user.getAddress(), user.getPhone(), user.getEmail(), Integer.valueOf(user.getId()) };

		    int result = 0;
		    try  {
			      result = this.dbutil.execute(sql, objects);
		    }
		    catch (Exception e)
		    {
		      e.printStackTrace();
		    }
		    return result;
	}

	/* (non-Javadoc)
	 * @see com.hpe.dao.IUserDao#findByName(java.lang.String)
	 */
	@Override
	public User findByName(String userno) {
		String sql = "select * from user where userno=?";
		Object[] objects = { userno };
	    User u = null;
	    try
	    {
	      u = (User)this.dbutil.getObject(User.class, sql, objects);
	    }
	    catch (Exception e)
	    {
	      e.printStackTrace();
	    }
	    return u;
	}

	/* (non-Javadoc)
	 * @see com.hpe.dao.IUserDao#userReg(com.hpe.pojo.User, java.lang.Object[])
	 */
	@Override
	public int userReg(User user) {
		 String Isql = "insert into user(userno,password,phone,email) values(?,?,?,?)";
		 Object[] ob = { user.getUserno(),user.getPassword(),user.getPhone(),user.getEmail() };
		 int result=0;
	      try
	      {
	        result = this.dbutil.execute(Isql, ob);
	      }
	      catch (Exception e)
	      {
	        e.printStackTrace();
	      }
		return result;
	}

}
