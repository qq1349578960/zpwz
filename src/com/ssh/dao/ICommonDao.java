package com.ssh.dao;

import com.ssh.bean.User;

public interface ICommonDao {
	public User login(String userName, String password);
	
	public User userNameValidation(String userName);
	
	public String registeredUser(User user);
}
