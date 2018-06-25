package com.OTOF.dao;

import java.util.List;

import com.OTOF.bean.OrderContentbean;
import com.OTOF.domain.Order;
import com.OTOF.domain.Store;
import com.OTOF.domain.form.OrderForm;

public interface IOrderDao {
	/*添加订单
	 * param:order
	 * 
	 */
	boolean doadd(OrderForm order,int userid);
	/*订单完成
	 * param:order
	 * 
	 */
	boolean dofinish(Order order);
	/*店家用订单号查询订单
	 * param:店家id，订单号
	 * return:订单列表
	 */
	List dostoreselectedfind(int storeid,String ordernumber);
	/*店家查询所有订单
	 * param:店家id，订单号
	 * return:订单列表
	 */
	List dostorefind(int storeid,int orderstatus);
	
	/*用户用订单号查询订单
	 * param:用户id，订单号
	 * return:订单列表
	 */
	List docustomerallfind(int userid);
	/*用户查询所有订单
	 * param:用户id，订单号
	 * return:订单列表
	 */
	List docustomerselectedfind(int userid,int ordernumber);
	
	
	boolean doaddcontent(OrderContentbean ordercontent);
	
	boolean doacceptorder(Order order);
	
	List dofindordercontent(String ordernumber);
	
}
