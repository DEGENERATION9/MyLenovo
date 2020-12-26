package service;

import pojo.User;

public interface IUserService {
	public abstract int update(User paramUsersPo);
	public abstract int userReg(User paramUsersPo, Object[] paramArrayOfObject);
}
