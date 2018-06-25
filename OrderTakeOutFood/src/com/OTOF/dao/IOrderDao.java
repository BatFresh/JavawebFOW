package com.OTOF.dao;

import java.util.List;

import com.OTOF.bean.OrderContentbean;
import com.OTOF.domain.Order;
import com.OTOF.domain.Store;
import com.OTOF.domain.form.OrderForm;

public interface IOrderDao {
	/*��Ӷ���
	 * param:order
	 * 
	 */
	boolean doadd(OrderForm order,int userid);
	/*�������
	 * param:order
	 * 
	 */
	boolean dofinish(Order order);
	/*����ö����Ų�ѯ����
	 * param:���id��������
	 * return:�����б�
	 */
	List dostoreselectedfind(int storeid,String ordernumber);
	/*��Ҳ�ѯ���ж���
	 * param:���id��������
	 * return:�����б�
	 */
	List dostorefind(int storeid,int orderstatus);
	
	/*�û��ö����Ų�ѯ����
	 * param:�û�id��������
	 * return:�����б�
	 */
	List docustomerallfind(int userid);
	/*�û���ѯ���ж���
	 * param:�û�id��������
	 * return:�����б�
	 */
	List docustomerselectedfind(int userid,int ordernumber);
	
	
	boolean doaddcontent(OrderContentbean ordercontent);
	
	boolean doacceptorder(Order order);
	
	List dofindordercontent(String ordernumber);
	
}
