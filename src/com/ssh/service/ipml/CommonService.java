package com.ssh.service.ipml;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssh.bean.User;
import com.ssh.dao.ICommonDao;
import com.ssh.service.ICommonService;

@Service("commonService")
public class CommonService implements ICommonService {
	@Autowired
	private ICommonDao commonDao;
	
	@Override
	public User login(String userName, String age) {
		return commonDao.login(userName, age);
	}

	public ICommonDao getCommonDao() {
		return commonDao;
	}

	public void setCommonDao(ICommonDao commonDao) {
		this.commonDao = commonDao;
	}

	@Override
	public String userNameValidation(String userName) {
		User user = commonDao.userNameValidation(userName);
		if(user!=null){
			return "已存在";
		}
		return "可用";
	}

	@Override
	public String registeredUser(User user) {
		
		return commonDao.registeredUser(user);
	}

}
