package com.OTOF.dao.impl;

import com.OTOF.dao.IUserDao;
import com.OTOF.domain.User;
import com.OTOF.util.JdbcUtils;

import java.util.List;

import javax.management.RuntimeErrorException;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
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
		}
		catch(Exception e)
		{
			throw new RuntimeException(e);
		}
		
		
	}



	@SuppressWarnings("deprecation")
	@Override
	public boolean add(User user) {
		try {
			
			QueryRunner runner = new QueryRunner(JdbcUtils.getDataSource());  
		     String sql = "insert into user(Username,Userpwd) values(?,?)"; 
		     Object []params = {user.getUsername(),user.getUserpwd()};
		     runner.update(sql,params);
			
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
		
	}

	@Override
	public boolean doupdateuserinfo(User user) {
		// TODO Auto-generated method stub
		try {
			
			QueryRunner runner = new QueryRunner(JdbcUtils.getDataSource());  
		     String sql = "update user set PersonalName = ?,Usertel = ? ,Useraddr = ? where UserID = ?"; 
		     Object []params = {user.getPersonalName(),user.getUsertel(),user.getUseraddr(),user.getUserID()};
		     runner.update(sql,params);
		     
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	@Override
	public List dofindalluser() {
		try {
			
			 QueryRunner runner = new QueryRunner(JdbcUtils.getDataSource());  
		     String sql = "select Username,Useraddr,Usertel,PersonalName from user"; 
		     
		     List userlist = runner.query(sql,new BeanListHandler<>(User.class));
		     return userlist;
		}catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		
	}

	@Override
	public List dofinduser(User user) {
		// TODO Auto-generated method stub
		try {
			
			 QueryRunner runner = new QueryRunner(JdbcUtils.getDataSource());  
		     String sql = "select * from user where Username = ?"; 
		     Object []params = {user.getUsername()};
		     List userlist = runner.query(sql,params,new BeanListHandler<>(User.class));
		     return userlist;
		}catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
		@Override
		public User dofinduserbyid(User user) {
			// TODO Auto-generated method stub
			try {
				
				 QueryRunner runner = new QueryRunner(JdbcUtils.getDataSource());  
			     String sql = "select * from user where UserID = ?"; 
			     Object []params = {user.getUserID()};
			     User userlist = runner.query(sql,params,new BeanHandler<>(User.class));
			     return userlist;
			}catch (Exception e) {
				e.printStackTrace();
				return null;
			}
	}
}
