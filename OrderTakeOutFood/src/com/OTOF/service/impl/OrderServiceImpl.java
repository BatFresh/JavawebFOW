package com.OTOF.service.impl;

import java.util.List;

import com.OTOF.bean.OrderContentbean;
import com.OTOF.dao.IOrderDao;
import com.OTOF.dao.impl.OrderDaoImpl;
import com.OTOF.domain.Order;
import com.OTOF.domain.form.OrderForm;
import com.OTOF.service.IOrderService;

public class OrderServiceImpl implements IOrderService{
	private IOrderDao od = new OrderDaoImpl(); 
	@Override
	public List customerdisplayallOrder(int useid) {
		
		return od.docustomerallfind(useid);
	}

	@Override
	public List<Order> customerdisplayselectedOrder(int useid, int ordernumber) {
		// TODO Auto-generated method stub
		return od.docustomerselectedfind(useid,ordernumber);
	}

	@Override
	public List storedisplayOrder(int storeid,int orderstatus) {
		// TODO Auto-generated method stub
		return od.dostorefind(storeid,orderstatus);
	}

	@Override
	public List storedisplayselectedOrder(int storeid, String ordernumber) {
		// TODO Auto-generated method stub
		return od.dostoreselectedfind(storeid,ordernumber);
	}

	@Override
	public boolean storefinishorder(Order order) {
		return od.dofinish(order);
		
	}
	@Override
	public boolean customeraddorder(OrderForm order,int userid) {
		return od.doadd(order,userid);
		
	}

	@Override
	public boolean addordercontent(OrderContentbean ordercontent) {
		// TODO Auto-generated method stub
		return od.doaddcontent(ordercontent);
	}

	@Override
	public boolean acceptorder(Order order) {
		// TODO Auto-generated method stub
		return od.doacceptorder(order);
	}

	@Override
	public List displayordercontent(String ordernumber) {
		// TODO Auto-generated method stub
		return od.dofindordercontent(ordernumber);
	}

}
