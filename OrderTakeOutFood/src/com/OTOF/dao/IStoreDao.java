package com.OTOF.dao;

import java.util.List;

import com.OTOF.domain.Store;

public interface IStoreDao {
	/*ģ����ѯ���
	 * param:�������
	 * return:�͵��������صĵ���б�
	 */
	List<Store> dolikefind(Store store);
	/*��ѯ��������Ӫҵ�ĵ��
	 * param:��
	 * return:չʾ���е��
	 */
	List<Store> doallfind();
	/*��ӵ��
	 * param:���
	 * 
	 */
	boolean doadd(Store store);
	/*��ѯ����Ƿ�ע��
	 * param:���
	 * return Ŀ����
	 */
	Store dofind(Store store);
	/*��ѯ����Ƿ�ע��
	 * param:���
	 * return Ŀ����
	 */
	boolean modifyStoreinfo(Store store);
	
	boolean doupdatepicture(Store store);
	
	List dofindverify(Store store);
	
	Store dofindstorebyid(Store store);
}
