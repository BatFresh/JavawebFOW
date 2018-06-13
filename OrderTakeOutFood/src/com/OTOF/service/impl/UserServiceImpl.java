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
				//�����ױ���ʱ�쳣��ԭ����������һ�����������쳣���Ը��û�һ���Ѻ���ʾ
				throw new UserExistException("ע����û����Ѵ��ڣ�����");
				}
				userDao.add(user);
	}

	@Override
	public User loginUser(String userName, String userPwd) {
		return userDao.find(userName, userPwd);
	}

}
