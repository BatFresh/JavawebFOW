package com.OTOF.dao.impl;

import java.util.List;

import javax.management.RuntimeErrorException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.OTOF.bean.StoreOrderbean;
import com.OTOF.dao.IFoodDao;
import com.OTOF.domain.Food;
import com.OTOF.util.JdbcUtils;

public class FoodDaoImpl implements IFoodDao{

	@Override
	public List dobrowseBystore(int storeid) {
		try {
			QueryRunner runner = new QueryRunner(JdbcUtils.getDataSource()); 
			String sql = "select * from food where StoreID = ?";
			Object []params = {storeid};
		    List foodlist = (List) runner.query(sql, params,new BeanListHandler(Food.class));
		    return foodlist;
		}catch(Exception e)
		{
			throw new RuntimeException(e);
		}
		
	}

	@Override
	public List dobrowseByfoodname(String foodname,int storeid) {
		try {
			QueryRunner runner = new QueryRunner(JdbcUtils.getDataSource()); 
			String sql = "select * from food where FoodName like ? and StoreID = ?";
			Object []params = {foodname,storeid};
		    List foodlist = (List) runner.query(sql, params,new BeanListHandler(Food.class));
		    return foodlist;
		}catch(Exception e)
		{
			throw new RuntimeException(e);
		}
	}

	@Override
	public boolean doadd(Food food) {
		
		try {
			QueryRunner runner = new QueryRunner(JdbcUtils.getDataSource()); 
			String sql = "insert into food(FoodName,FoodStatus,Foodprice,FoodPicture,CategoryID,StoreID) values(?,?,?,?,?,?)";
			Object []params = {food.getFoodName(),food.isFoodStatus(),
					food.getFoodprice(),food.getFoodPicture(),food.getCategoryID(),food.getStoreID()};
		    runner.update(sql,params);
		    
		}catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
		return true;
	}

	@Override
	public boolean dodel(int foodid,int storeid) {
		
		try {
			QueryRunner runner = new QueryRunner(JdbcUtils.getDataSource()); 
			String sql = "delete from food where FoodID = ? and StoreID = ?";
			Object []params = {foodid,storeid};
		    runner.update(sql,params);
		    
		}catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
		return true;
	}

	@Override
	public boolean doupdate(Food food) {
		
		try {
			QueryRunner runner = new QueryRunner(JdbcUtils.getDataSource()); 
			String sql = "update food set FoodName=?,Foodprice=?,CategoryID = ? where "
					+ "FoodID = ?";
			Object []params = {food.getFoodName(),
					food.getFoodprice(),food.getCategoryID(),food.getFoodID()};
		    runner.update(sql,params);
		    
		}catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
		return true;
	}

	@Override
	public boolean doupdateStatus(Food food) {
		try {
			QueryRunner runner = new QueryRunner(JdbcUtils.getDataSource()); 
			String sql = "update food set FoodStatus=? where "
					+ "FoodID = ?";
			Object []params = {food.isFoodStatus(),food.getFoodID()};
		    runner.update(sql,params);
		    
		}catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
		return true;
	}

	@Override
	public boolean doupdatepicture(Food food) {
		try {
			QueryRunner runner = new QueryRunner(JdbcUtils.getDataSource()); 
			String sql = "update food set FoodPicture = ? where "
					+ "FoodID = ?";
			Object []params = {food.getFoodPicture(),food.getFoodID()};
		    runner.update(sql,params);
		    
		}catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
		return true;
	}

}
