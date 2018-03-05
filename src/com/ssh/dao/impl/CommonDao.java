package com.ssh.dao.impl;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ssh.bean.User;
import com.ssh.dao.ICommonDao;

@Repository("commonDao")
@Transactional
public class CommonDao implements ICommonDao{
	@Autowired
	protected SessionFactory sessionFactory;

	@Override
	public User login(String userName, String password) {
		System.out.println("进入dao"+sessionFactory);
		@SuppressWarnings("unchecked")
		List<User> list=sessionFactory.getCurrentSession()
			.createQuery("from User where login_name=:name and password=:password")
			.setString("name", userName)
			.setString("password", password)
			.list();
		if(list.isEmpty()){
			return null;
		}
		return list.get(0);
	}
	
	@Override
	public User userNameValidation(String userName) {
		@SuppressWarnings("unchecked")
		List<User> list=sessionFactory.getCurrentSession()
			.createQuery("from User where login_name=:name")
			.setString("name", userName)
			.list();
		if(list.isEmpty()){
			return null;
		}
		return list.get(0);
	}
	
	
	@Override
	public String registeredUser(User user) {
		//需要修改
		Session session = sessionFactory.openSession();
		Transaction beginTransaction = session.beginTransaction();
		   session.save(user);              
		   beginTransaction.commit();  
           	//session.close();   
		return "成功";
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}




}
