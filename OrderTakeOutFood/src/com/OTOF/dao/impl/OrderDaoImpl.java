package com.OTOF.dao.impl;

import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.OTOF.bean.CustomerOrderbean;
import com.OTOF.bean.OrderContentbean;
import com.OTOF.bean.StoreOrderbean;
import com.OTOF.dao.IOrderDao;
import com.OTOF.domain.Order;
import com.OTOF.domain.form.OrderForm;
import com.OTOF.util.JdbcUtils;

public class OrderDaoImpl implements IOrderDao{

	@Override
	public boolean doadd(OrderForm order,int userid) {
		
		try {
			
			QueryRunner runner = new QueryRunner(JdbcUtils.getDataSource());  
		     String sql = "insert into orders(Ordernumber,StoreID,UserID,Sumprice,OrderTime,Useraddr"
		     		+ ",Personalname,Usertel,Orderstatus) values(?,?,?,?,?,?,?,?,?)"; 
		     Object []params = {order.getOrdernumber(),order.getStoreid(),
		    		 userid,order.getSumprice(),order.getOrdertime(),
		    		 order.getUseraddr(),order.getPersonalname(),order.getUsertel(),order.getOrderstatus()};
		     runner.update(sql,params);
			
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	@Override
	public boolean dofinish(Order order) {
		try {
			QueryRunner runner = new QueryRunner(JdbcUtils.getDataSource());  
		     String sql = "update orders set FinishTime = ?"; 
		     Object []params = {order.getFinishTime()};
		     runner.update(sql,params);
			
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	@Override
	public List dostoreselectedfind(int storeid, String ordernumber) {
		try {
			QueryRunner runner = new QueryRunner(JdbcUtils.getDataSource());  
			 String sql = "select OrderNumber,PersonalName,OrderStatus,Usertel,OrderTime,\r\n" + 
			 		"Sumprice,Deliverytime from \r\n" + 
			 		"orders,store  where orders.OrderID in \r\n" + 
			 		"(select orders.OrderID from orders where orders.StoreID = ?)\r\n" + 
			 		"and store.StoreID = ? and "
			 		+ "orders.Ordernumber = ?";  
			 Object[] params = {storeid,storeid,ordernumber};
			 List orders = (List) runner.query(sql, params,new BeanListHandler(StoreOrderbean.class));
			 System.out.println(orders);
			 return orders;
			
		}catch(Exception e)
		{
			throw new RuntimeException(e);
		}
	}

	@Override
	public List dostorefind(int storeid,int orderstatus) {
		try {
			QueryRunner runner = new QueryRunner(JdbcUtils.getDataSource());  
			 String sql = "select OrderNumber,Personalname,OrderStatus,Usertel,OrderTime, \r\n" + 
			 		"	Sumprice,Deliverytime from \r\n" + 
			 		"	orders,store where orders.OrderID in \r\n" + 
			 		"	(select orders.OrderID from orders where orders.StoreID = ?) \r\n" + 
			 		"	and orders.OrderStatus = ? and store.StoreID =?";  
			 Object[] params = {storeid,orderstatus,storeid};
			 List orders = (List) runner.query(sql, params,new BeanListHandler(StoreOrderbean.class));
			 System.out.println(storeid);
			 System.out.println(orderstatus);
			 return orders;
			
		}catch(Exception e)
		{
			throw new RuntimeException(e);
		}
	}

	@Override
	public List docustomerallfind(int userid) {
		try {
			System.out.println(userid);
			QueryRunner runner = new QueryRunner(JdbcUtils.getDataSource());  
			 String sql = "select store.StoreID,OrderNumber,StorePicture,Storename,OrderStatus,Storetel,OrderTime,\r\n" + 
			 		"Deliverytime,Sumprice from orders  join store  on store.StoreID = orders.StoreID\r\n" + 
			 		"where orders.userid = ?";  
			 Object[] params = {userid};
			 List orders = (List) runner.query(sql, params,new BeanListHandler(CustomerOrderbean.class));
			 //System.out.println(orders);
			 return orders;
		}catch(Exception e)
		{
			throw new RuntimeException(e);
		}
	}

	@Override
	public List docustomerselectedfind(int userid, int ordernumber) {
		try {
			QueryRunner runner = new QueryRunner(JdbcUtils.getDataSource());  
			 String sql = "select * from orders where UserID = ? and Ordernumber = ?";  
			 Object[] params = {userid,ordernumber};
			 List orders = (List) runner.query(sql, params,new BeanListHandler(Order.class));
			 return orders;
			
		}catch(Exception e)
		{
			throw new RuntimeException(e);
		}
	}

	@Override
	public boolean doaddcontent(OrderContentbean ordercontent) {
		try {
			QueryRunner runner = new QueryRunner(JdbcUtils.getDataSource());  
		     String sql = "insert into ordercontent(Ordernumber,FoodName,Foodprice,FoodselectNumber) values(?,?,?,?)"; 
		     Object []params = {ordercontent.getOrderNumber(),
		    		 ordercontent.getFoodname(),ordercontent.getFoodprice(),ordercontent.getSelectNumber()};
		     runner.update(sql,params);
			
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;

	}

	@Override
	public boolean doacceptorder(Order order) {
		// TODO Auto-generated method stub
		try {
			QueryRunner runner = new QueryRunner(JdbcUtils.getDataSource());  
		     String sql = "update orders set orderstatus = ? where ordernumber = ?"; 
		     
		     Object []params = {order.getOrderStatus(),order.getOrderNumber()};
		     runner.update(sql,params);
			
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	@Override
	public List dofindordercontent(String ordernumber) {
		// TODO Auto-generated method stub
		try {
			QueryRunner runner = new QueryRunner(JdbcUtils.getDataSource());  
			 String sql = "select ordercontent.Ordernumber,foodname,foodprice,foodselectnumber,Useraddr from ordercontent join orders on \r\n" + 
			 		"ordercontent.OrderNumber = orders.ordernumber\r\n" + 
			 		"where ordercontent.ordernumber = ?";  
			 Object[] params = {ordernumber};
			 List orders = (List) runner.query(sql, params,new BeanListHandler(OrderContentbean.class));
			 //System.out.println(orders);
			 return orders;
		}catch(Exception e)
		{
			throw new RuntimeException(e);
		}
	}
	
}
