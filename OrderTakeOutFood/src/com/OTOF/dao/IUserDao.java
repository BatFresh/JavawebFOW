package com.OTOF.dao;

import java.util.List;

import com.OTOF.domain.User;

public interface IUserDao {
	/**根据用户名和密码来查找用户
	 * @param Username
	 * @param Userpwd
	 * @return 返回查到的用户
	 */
	User find(String Username,String Userpwd);

	/**添加用户
	 * @param User
	 * 
	 * 
	 */
	boolean add(User user);
	/**修改用户信息
	 * @param User
	 * 
	 * 
	 */
	boolean doupdateuserinfo(User user);
	
	List dofindalluser();
	
	User dofinduserbyid(User user);
	
	List dofinduser(User user);
}
