/**
 * 
 */
package com.hpe.service;

import com.hpe.pojo.User;

/**
 * @author 晓
 *
 */
public interface IUserService {

	/** 
	 * 方法描述：登陆
	 * @param userno
	 * @param pwd
	 * @return
	 */
	User login(String userno, String pwd);

}
