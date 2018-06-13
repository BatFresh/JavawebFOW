package com.OTOF.service.impl;

import com.OTOF.dao.IUserDao;
import com.OTOF.dao.impl.UserDaoImpl;
import com.OTOF.domain.User;
import com.OTOF.exception.UserExistException;
import com.OTOF.service.IUserService;

public class UserServiceImpl implements IUserService{
	
	private IUserDao userDao = new UserDaoImpl();
	@Override
	public void registerUser(User user) throws UserExistException {
		if (userDao.find(user.getUsername())!=null) {
				//这里抛编译时异常的原因：是我想上一层程序处理这个异常，以给用户一个友好提示
				throw new UserExistException("注册的用户名已存在！！！");
				}
				userDao.add(user);
	}

	@Override
	public User loginUser(String userName, String userPwd) {
		return userDao.find(userName, userPwd);
	}

}
