package com.OTOF.dao.impl;

import com.OTOF.dao.IUserDao;
import com.OTOF.domain.User;
import com.OTOF.util.JdbcUtils;

import javax.management.RuntimeErrorException;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.QueryRunner;

public class UserDaoImpl implements IUserDao {
	@SuppressWarnings({ "deprecation", "unchecked", "rawtypes" })
	@Override
	public User find(String Username,String Userpwd) {
		try {
			 QueryRunner runner = new QueryRunner(JdbcUtils.getDataSource());  
		     String sql = "select * from user where Username=? and Userpwd=?";  
		     Object []params = {Username,Userpwd};
		     User user = (User) runner.query(sql,params, new BeanHandler(User.class));
		     return user;
		}catch(Exception e)
		{
			throw new RuntimeException(e);
		}
		
	}

	@SuppressWarnings({ "deprecation", "unchecked", "rawtypes" })
	@Override
	public User find(String Username) {
		try {
			QueryRunner runner = new QueryRunner(JdbcUtils.getDataSource());  
			 String sql = "select * from user where Username=?";  
			 Object []params = {Username};
			 User user = (User) runner.query(sql,params, new BeanHandler(User.class));
			 return user;
			
		}catch(Exception e)
		{
			throw new RuntimeException(e);
		}
	}

	@SuppressWarnings("deprecation")
	@Override
	public void add(User user) {
		
		try {
			
			QueryRunner runner = new QueryRunner(JdbcUtils.getDataSource());  
		     String sql = "insert into user(Username,Userpwd) values(?,?)"; 
		     Object []params = {user.getUsername(),user.getUserpwd()};
		     runner.update(sql,params);
			
		}catch (Exception e) {
			throw new RuntimeException();
		}
		
		
	}
}
