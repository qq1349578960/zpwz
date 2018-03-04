package com.ssh.service.ipml;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssh.dao.IManagerDao;
import com.ssh.service.IManagerService;

@Service("managerService")
public class ManagerService implements IManagerService{
	@Autowired
	private IManagerDao managerDao;
	

}
