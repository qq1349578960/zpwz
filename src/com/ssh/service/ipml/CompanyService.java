package com.ssh.service.ipml;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssh.dao.ICompanyDao;
import com.ssh.service.ICompanyService;

@Service("companyService")
public class CompanyService implements ICompanyService{
	@Autowired
	private ICompanyDao companyDao;

}
