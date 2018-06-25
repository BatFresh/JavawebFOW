package com.OTOF.service;

import java.util.List;

import com.OTOF.domain.Food;

public interface IFoodService {
	List browseBystore(int storeid);
	
	List browseByfoodname(String foodname,int storeid);
	
	boolean delfood(int foodid,int storeid);
	
	boolean addfood(Food food);
	
	boolean updatefood(Food food);
	
	boolean updatefoodstatus(Food food);
	
	boolean updatefoodpicture(Food food);
}
