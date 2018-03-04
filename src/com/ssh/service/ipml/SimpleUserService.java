package com.ssh.service.ipml;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssh.bean.User;
import com.ssh.dao.ISimpleUserDao;
import com.ssh.service.ISimpleUserService;

@Service("simpleUserService")
public class SimpleUserService implements ISimpleUserService{
	@Autowired
	private ISimpleUserDao simpleUserDao;
	
	//≤‚ ‘
	@Override
	public List<User> query() {
		return simpleUserDao.query();
	}

}
