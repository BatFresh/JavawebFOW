package com.OTOF.service;

import java.util.List;

import com.OTOF.domain.User;
import com.OTOF.exception.UserExistException;

public interface IUserService {
	/**
	     * �ṩע�����
	      * @param user
	      * @throws UserExistException
	     */
		boolean registerUser(User user) throws UserExistException;
	 
	    /**
	      * �ṩ��¼����
	      * @param userName
	     * @param userPwd
	      * @return
	     */
	     User loginUser(String userName, String userPwd);
	     /**
	      * �ṩ��¼����
	      * @param user
	     * @param 
	      * @return
	     */
	     boolean modifyUserinfo(User user);
	     
	     List finduser(User user);
	     
	     List findalluser();
	     
	     User finduserbyid(User user);
	     
}
