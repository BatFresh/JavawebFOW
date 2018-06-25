package com.OTOF.service.impl;

import java.util.List;

import com.OTOF.dao.IFoodDao;
import com.OTOF.dao.impl.FoodDaoImpl;
import com.OTOF.domain.Food;
import com.OTOF.service.IFoodService;

public class FoodServletImpl implements IFoodService{
	IFoodDao fd = new FoodDaoImpl();
	@Override
	public List browseBystore(int storeid) {
		// TODO Auto-generated method stub
		return fd.dobrowseBystore(storeid);
	}

	@Override
	public List browseByfoodname(String foodname,int storeid) {
		// TODO Auto-generated method stub
		return fd.dobrowseByfoodname(foodname,storeid);
	}

	@Override
	public boolean delfood(int foodid,int storeid) {
		// TODO Auto-generated method stub
		return fd.dodel(foodid,storeid);
	}

	@Override
	public boolean addfood(Food food) {
		// TODO Auto-generated method stub
		return fd.doadd(food);
	}

	@Override
	public boolean updatefood(Food food) {
		// TODO Auto-generated method stub
		return fd.doupdate(food);
	}

	@Override
	public boolean updatefoodstatus(Food food) {
		// TODO Auto-generated method stub
		return fd.doupdateStatus(food);
	}

	@Override
	public boolean updatefoodpicture(Food food) {
		// TODO Auto-generated method stub
		return fd.doupdatepicture(food);
	}
	
}
