package com.ssh.service;

import com.ssh.bean.User;

public interface ICommonService {
	public User login(String userName,String age);
	
	public String userNameValidation(String userName);
	
	public String registeredUser(User user);
	
	
}
