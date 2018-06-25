package com.OTOF.service;

import java.util.List;

import com.OTOF.bean.OrderContentbean;
import com.OTOF.domain.Order;
import com.OTOF.domain.form.OrderForm;

public interface IOrderService {
    /**
     * �ṩ�û���չʾ���ж�������
     * @param useid
    * @param 
     * @return order list
    */
    List<Order> customerdisplayallOrder(int useid);
    /**
     * �ṩ�û����ö����Ų�ѯ��������
     * @param useid ordernumber
    * @param 
     * @return order list
    */
    List<Order> customerdisplayselectedOrder(int useid,int ordernumber);
    /**
     * �ṩ���̶�չʾ��������(���ݶ���״̬)
     * @param storeid
    * @param 
     * @return order list
    */
    List<Order> storedisplayOrder(int storeid,int orderstatus);
    /**
     * �ṩ���̶��ö����Ų�ѯ��������
     * @param storeid ordernumber
    * @param 
     * @return order list
    */
    List<Order> storedisplayselectedOrder(int storeid,String ordernumber);
    /**
     * �ṩ���̶˸��¶��������Ϣ����
     * @param order
    * @param 
     * @return 
    */
    boolean storefinishorder(Order order);
    /**
     * �ṩ�û�����Ӷ�����Ϣ����
     * @param order
    * @param 
     * @return 
    */
    boolean customeraddorder(OrderForm order,int userid);
    
    boolean addordercontent(OrderContentbean ordercontent);
    
    boolean acceptorder(Order order);
    
    List displayordercontent(String ordernumber);
    
}
