package com.ssh.service;

import java.util.List;

import com.ssh.bean.User;
/**
 * ��ְ��service
 */
public interface ISimpleUserService {
	/**
	 * ��ѯ�����û������ԣ�
	 * @return
	 */
	List<User> query();
}
