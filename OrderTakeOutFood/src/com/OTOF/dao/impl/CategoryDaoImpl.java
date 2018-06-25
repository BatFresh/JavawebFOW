package com.OTOF.dao.impl;

import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.OTOF.dao.ICategoryDao;
import com.OTOF.domain.form.CategoryForm;
import com.OTOF.util.JdbcUtils;

public class CategoryDaoImpl implements ICategoryDao{

	@Override
	public boolean doadd(CategoryForm category) {
		try {
			QueryRunner runner = new QueryRunner(JdbcUtils.getDataSource()); 
			String sql = "insert into Category(CategoryName,StoreID) values(?,?)";
			Object []params = {category.getCategoryname(),category.getStoreID()};
			runner.update(sql,params);
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
		return true;
	}

	@Override
	public boolean dodel(CategoryForm category) {
		try {
			QueryRunner runner = new QueryRunner(JdbcUtils.getDataSource()); 
			String sql = "delete from Category where CategoryID = ?";
			Object []params = {category.getCategoryID()};
			runner.update(sql,params);
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
		return true;
	}

	@Override
	public boolean doupdate(CategoryForm category) {
		try {
			QueryRunner runner = new QueryRunner(JdbcUtils.getDataSource()); 
			String sql = "update  Category  set Categoryname = ? where CategoryID = ?";
			Object []params = {category.getCategoryname(),category.getCategoryID()};
			runner.update(sql,params);
			return true;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
		
	}

	@Override
	public List<CategoryForm> dofind(CategoryForm category) {
		try {
			QueryRunner runner = new QueryRunner(JdbcUtils.getDataSource()); 
			String sql = "select * from Category where StoreID = ?";
			Object []params = {category.getStoreID()};
			List<CategoryForm> categorylist = (List<CategoryForm>) runner.query(sql,params,new BeanListHandler(CategoryForm.class));
			return categorylist;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return null;
		}
		
	}

}
