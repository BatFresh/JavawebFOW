package com.OTOF.dao;

import com.OTOF.domain.User;

public interface IUserDao {
	/**根据用户名和密码来查找用户
	 * @param Username
	 * @param Userpwd
	 * @return 返回查到的用户
	 */
	User find(String Username,String Userpwd);
	/**根据用户名查找用户
	 * @param Username
	 * @return 返回查到的用户
	 */
	User find(String Username);
	/**添加用户
	 * @param User
	 * 
	 * 
	 */
	void add(User user);
}
