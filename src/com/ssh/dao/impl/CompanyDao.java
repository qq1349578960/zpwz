package com.ssh.dao.impl;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ssh.dao.ICompanyDao;
@Repository("companyDao")
@Transactional
public class CompanyDao extends CommonDao implements ICompanyDao{

}
