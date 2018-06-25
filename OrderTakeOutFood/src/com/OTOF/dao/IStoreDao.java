package com.OTOF.dao;

import java.util.List;

import com.OTOF.domain.Store;

public interface IStoreDao {
	/*模糊查询店家
	 * param:店家名字
	 * return:和店家名字相关的店家列表
	 */
	List<Store> dolikefind(Store store);
	/*查询所有正在营业的店家
	 * param:无
	 * return:展示所有店家
	 */
	List<Store> doallfind();
	/*添加店家
	 * param:店家
	 * 
	 */
	boolean doadd(Store store);
	/*查询店家是否注册
	 * param:店家
	 * return 目标店家
	 */
	Store dofind(Store store);
	/*查询店家是否注册
	 * param:店家
	 * return 目标店家
	 */
	boolean modifyStoreinfo(Store store);
	
	boolean doupdatepicture(Store store);
	
	List dofindverify(Store store);
	
	Store dofindstorebyid(Store store);
}
