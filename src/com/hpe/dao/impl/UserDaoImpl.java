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

}
