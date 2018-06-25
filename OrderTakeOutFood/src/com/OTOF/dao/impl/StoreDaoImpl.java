package com.OTOF.dao.impl;

import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.OTOF.dao.IStoreDao;
import com.OTOF.domain.Store;
import com.OTOF.util.JdbcUtils;

public class StoreDaoImpl implements IStoreDao{
	
	@SuppressWarnings({ "deprecation", "unchecked", "rawtypes" })
	public List doallfind() {
		try {
			QueryRunner runner = new QueryRunner(JdbcUtils.getDataSource());  
			 String sql = "select Storename,Storetel,Storestatus,Storeaddr,StorePicture,rank,"
			 		+ "Deliverytime,Sendingfee,Deliverycost,StoreID from store";  
			 List store = (List) runner.query(sql, new BeanListHandler(Store.class));
			 return store;
			
		}catch(Exception e)
		{
			throw new RuntimeException(e);
		}
	}

	@SuppressWarnings("deprecation")
	public boolean doadd(Store store) {
		
		try {
			
			QueryRunner runner = new QueryRunner(JdbcUtils.getDataSource());  
		     String sql = "insert into store(Storeloginname,Storepwd,Storename,Storeaddr,Storetel,StoreStatus) values(?,?,?,?,?,?)"; 
		     Object []params = {store.getStoreloginname(),store.getStorepwd(),
		    		 store.getStorename(),store.getStoreaddr(),store.getStoretel(),store.isStoreStatus()};
		     runner.update(sql,params);
			
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
		
	}

	public boolean modifyStoreinfo(Store store) {
		;
		try {
			QueryRunner runner = new QueryRunner(JdbcUtils.getDataSource());  
			 String sql = "update store set Sendingfee=?,Deliverycost=?,"
			 		+ "StoreStatus=?,Storetel=?  where StoreID = ?"; 
			 Object[] params = {store.getSendingfee(),store.getDeliverycost(),
					 store.isStoreStatus(),
					 store.getStoretel(),store.getStoreid()};
			 runner.update(sql,params);
			
		}catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
		return true;
	}

	@Override
	public boolean doupdatepicture(Store store) {
		try {
			QueryRunner runner = new QueryRunner(JdbcUtils.getDataSource());  
			 String sql = "update store set StorePicture=? where StoreID = ?"; 
			 Object[] params = {store.getStorePicture(),store.getStoreid()};
			 runner.update(sql,params);
			
		}catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
		return true;
	}

	@Override
	public List<Store> dolikefind(Store store) {
		try {
			 QueryRunner runner = new QueryRunner(JdbcUtils.getDataSource());  
		     String sql = "select * from store where Storename like%?%";  
		     Object []params = {store.getStorename()};
		     
		     List storelist = (List) runner.query(sql,params, new BeanListHandler(Store.class));
		     return storelist;
		}catch(Exception e)
		{
			throw new RuntimeException(e);
		}
	}

	@Override
	public Store dofind(Store store) {
		try {
			QueryRunner runner = new QueryRunner(JdbcUtils.getDataSource());  
			 String sql = "select * from store where Storeloginname = ? and Storepwd = ?"; 
			 Object[] params = {store.getStoreloginname(),store.getStorepwd()};
			 Store storelist = (Store)runner.query(sql,params, new BeanHandler(Store.class));
			 return storelist;
			 
		}catch(Exception e)
		{
			throw new RuntimeException(e);
		}
	}
	@Override
	public List dofindverify(Store store) {
		try {
			System.out.println(store);
			QueryRunner runner = new QueryRunner(JdbcUtils.getDataSource());  
			 String sql = "select * from store where Storeloginname = ? "; 
			 Object[] params = {store.getStoreloginname()};
			 List storelist = (List)runner.query(sql,params, new BeanListHandler(Store.class)); 
			 System.out.println(storelist);
			 return storelist;
			
		}catch(Exception e)
		{
			throw new RuntimeException(e);
		}
	}

	@Override
	public Store dofindstorebyid(Store store) {
		// TODO Auto-generated method stub
		try {
			QueryRunner runner = new QueryRunner(JdbcUtils.getDataSource());  
			 String sql = "select * from store where StoreID = ? "; 
			 Object[] params = {store.getStoreid()};
			 Store storelist = (Store)runner.query(sql,params, new BeanHandler(Store.class));
			 return storelist;
			 
		}catch(Exception e)
		{
			throw new RuntimeException(e);
		}
	}
	
}
