package com.service;

import com.pojo.User;

public interface IUserService {
	public abstract int update(User paramUsersPo);
	public abstract int userReg(User paramUsersPo, Object[] paramArrayOfObject);
	/** 
	 * 方法描述：登陆
	 * @param userno
	 * @param pwd
	 * @return
	 */
	User login(String userno, String pwd);
}
