package dao;

import pojo.User;

public interface IUserDao {
	public abstract int update(User paramUsersPo);
	public abstract User findByName(String paramString);
	public abstract int userReg(User paramUsersPo, Object[] paramArrayOfObject);
}
