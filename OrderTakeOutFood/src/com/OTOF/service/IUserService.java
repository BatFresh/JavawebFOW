package com.OTOF.service;

import java.util.List;

import com.OTOF.domain.User;
import com.OTOF.exception.UserExistException;

public interface IUserService {
	/**
	     * 提供注册服务
	      * @param user
	      * @throws UserExistException
	     */
		boolean registerUser(User user) throws UserExistException;
	 
	    /**
	      * 提供登录服务
	      * @param userName
	     * @param userPwd
	      * @return
	     */
	     User loginUser(String userName, String userPwd);
	     /**
	      * 提供登录服务
	      * @param user
	     * @param 
	      * @return
	     */
	     boolean modifyUserinfo(User user);
	     
	     List finduser(User user);
	     
	     List findalluser();
	     
	     User finduserbyid(User user);
	     
}
