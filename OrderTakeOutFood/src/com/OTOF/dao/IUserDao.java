package com.OTOF.dao;

import com.OTOF.domain.User;

public interface IUserDao {
	/**�����û����������������û�
	 * @param Username
	 * @param Userpwd
	 * @return ���ز鵽���û�
	 */
	User find(String Username,String Userpwd);
	/**�����û��������û�
	 * @param Username
	 * @return ���ز鵽���û�
	 */
	User find(String Username);
	/**����û�
	 * @param User
	 * 
	 * 
	 */
	void add(User user);
}
