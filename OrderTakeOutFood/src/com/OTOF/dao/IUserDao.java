package com.OTOF.dao;

import java.util.List;

import com.OTOF.domain.User;

public interface IUserDao {
	/**�����û����������������û�
	 * @param Username
	 * @param Userpwd
	 * @return ���ز鵽���û�
	 */
	User find(String Username,String Userpwd);

	/**����û�
	 * @param User
	 * 
	 * 
	 */
	boolean add(User user);
	/**�޸��û���Ϣ
	 * @param User
	 * 
	 * 
	 */
	boolean doupdateuserinfo(User user);
	
	List dofindalluser();
	
	User dofinduserbyid(User user);
	
	List dofinduser(User user);
}
