package com.ssh.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ssh.bean.User;
import com.ssh.dao.ISimpleUserDao;

@Repository("simpleUserDao")
@Transactional
public class SimpleUserDao extends CommonDao implements ISimpleUserDao{
	//≤‚ ‘
	public List<User> query(){
		@SuppressWarnings("unchecked")
		List<User> users=sessionFactory.getCurrentSession().createQuery("from User where user_type='1'")
		.list();
		return users;
	}
}
