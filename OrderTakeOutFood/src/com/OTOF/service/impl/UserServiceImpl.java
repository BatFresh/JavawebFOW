package com.OTOF.service.impl;

import java.util.List;

import com.OTOF.dao.IUserDao;
import com.OTOF.dao.impl.UserDaoImpl;
import com.OTOF.domain.User;
import com.OTOF.exception.UserExistException;
import com.OTOF.service.IUserService;

public class UserServiceImpl implements IUserService{
	
	private IUserDao userDao = new UserDaoImpl();
	@Override
	public boolean registerUser(User user) throws UserExistException {
		return userDao.add(user);
	}

	@Override
	public User loginUser(String userName, String userPwd) {
		return userDao.find(userName, userPwd);
	}

	@Override
	public boolean modifyUserinfo(User user) {
		// TODO Auto-generated method stub
		return userDao.doupdateuserinfo(user);
	}

	@Override
	public List findalluser() {
		// TODO Auto-generated method stub
		return userDao.dofindalluser();
	}

	@Override
	public List finduser(User user) {
		// TODO Auto-generated method stub
		return userDao.dofinduser(user);
	}

	@Override
	public User finduserbyid(User user) {
		// TODO Auto-generated method stub
		return userDao.dofinduserbyid(user);
	}

}
