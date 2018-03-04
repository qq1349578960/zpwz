package com.ssh.service;

import java.util.List;

import com.ssh.bean.User;
/**
 * 求职者service
 */
public interface ISimpleUserService {
	/**
	 * 查询所有用户（测试）
	 * @return
	 */
	List<User> query();
}
