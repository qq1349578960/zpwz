package com.ssh.dao;
/**
 * ��ҵdao
 */
import com.ssh.bean.User;

public interface ICompanyDao {
	public User login(String userName, String password);
}
