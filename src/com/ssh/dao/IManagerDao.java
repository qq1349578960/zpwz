package com.ssh.dao;
/**
 * ����Աdao
 */
import com.ssh.bean.User;

public interface IManagerDao {
	public User login(String userName, String password);
}
