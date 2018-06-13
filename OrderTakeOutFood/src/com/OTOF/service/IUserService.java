package com.OTOF.service;

import com.OTOF.domain.User;
import com.OTOF.exception.UserExistException;

public interface IUserService {
	/**
	     * �ṩע�����
	      * @param user
	      * @throws UserExistException
	     */
	     void registerUser(User user) throws UserExistException;
	 
	    /**
	      * �ṩ��¼����
	      * @param userName
	     * @param userPwd
	      * @return
	     */
	     User loginUser(String userName, String userPwd);
}
