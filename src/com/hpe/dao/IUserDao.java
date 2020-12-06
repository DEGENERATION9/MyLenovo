/**
 * 
 */
package com.hpe.dao;

import com.hpe.pojo.User;

/**
 * @author 晓
 *
 */
public interface IUserDao {

	/** 
	 * 方法描述：登陆
	 * @param userno
	 * @param pwd
	 * @return
	 */
	User login(String userno, String pwd);

}
