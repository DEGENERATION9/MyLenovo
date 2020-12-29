package com.dao;

import com.pojo.User;

/**
 * @author maple
 *
 */
public interface IUserDao {
	public abstract int update(User paramUsersPo);
	public abstract User findByName(String paramString);
	public abstract int userReg(User paramUsersPo, Object[] paramArrayOfObject);
	/** 
	 * 方法描述：登陆
	 * @param userno
	 * @param pwd
	 * @return
	 */
	User login(String userno, String pwd);
}
