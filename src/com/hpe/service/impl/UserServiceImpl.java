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
	/* (non-Javadoc)
	 * @see com.hpe.service.IUserService#update(com.hpe.pojo.User)
	 */
	@Override
	public int update(User user) {
		//User uPo = userDao.findByName(user.getname());
	    return userDao.update(user);
	}
	/* (non-Javadoc)
	 * @see com.hpe.service.IUserService#userReg(com.hpe.pojo.User, java.lang.Object[])
	 */
	@Override
	public int userReg(User user) {
		User user1=userDao.findByName(user.getname());
		if(user1!=null){
			//用户名重复
			return -1;
		}else{
			return userDao.userReg(user);
		}
	}

}
