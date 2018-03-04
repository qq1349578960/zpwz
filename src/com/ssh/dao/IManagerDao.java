package com.ssh.dao;
/**
 * π‹¿Ì‘±dao
 */
import com.ssh.bean.User;

public interface IManagerDao {
	public User login(String userName, String password);
}
