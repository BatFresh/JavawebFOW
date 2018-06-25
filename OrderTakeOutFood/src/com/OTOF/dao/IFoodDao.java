package com.OTOF.dao;

import java.util.List;

import com.OTOF.domain.Food;

public interface IFoodDao {
	List dobrowseBystore(int storeid);
	
	List dobrowseByfoodname(String foodname,int storeid);
	
	boolean doadd(Food food);
	
	boolean dodel(int foodid,int storeid);
	
	boolean doupdate(Food food);
	
	boolean doupdateStatus(Food food);
	
	boolean doupdatepicture(Food food);
}
