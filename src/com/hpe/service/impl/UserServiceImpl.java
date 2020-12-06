/**
 * 
 */
package com.hpe.service.impl;

import com.hpe.dao.IUserDao;
import com.hpe.dao.impl.UserDaoImpl;
import com.hpe.pojo.User;
import com.hpe.service.IUserService;

/**
 * @author 晓
 *
 */
public class UserServiceImpl implements IUserService {

	IUserDao userDao=new UserDaoImpl();
	@Override
	public User login(String userno, String pwd) {
		// TODO Auto-generated method stub
		return userDao.login(userno,pwd);
	}

}
