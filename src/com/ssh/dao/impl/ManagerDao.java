package com.ssh.dao.impl;


import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ssh.dao.IManagerDao;

@Repository("managerDao")
@Transactional
public class ManagerDao extends CommonDao implements IManagerDao{
	
}
