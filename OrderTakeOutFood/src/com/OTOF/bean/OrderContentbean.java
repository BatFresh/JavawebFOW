package com.OTOF.bean;

public class OrderContentbean {
	private String OrderNumber;
	private String Foodname;
	private int SelectNumber;
	private float Foodprice;
	private int Foodid;
	private String Useraddr;
	
	public String getUseraddr() {
		return Useraddr;
	}
	public void setUseraddr(String useraddr) {
		Useraddr = useraddr;
	}
	public String getOrderNumber() {
		return OrderNumber;
	}
	public void setOrderNumber(String orderNumber) {
		OrderNumber = orderNumber;
	}
	public String getFoodname() {
		return Foodname;
	}
	public void setFoodname(String foodname) {
		Foodname = foodname;
	}
	public int getSelectNumber() {
		return SelectNumber;
	}
	public void setSelectNumber(int selectNumber) {
		SelectNumber = selectNumber;
	}
	public float getFoodprice() {
		return Foodprice;
	}
	public void setFoodprice(float foodprice) {
		Foodprice = foodprice;
	}
	public int getFoodid() {
		return Foodid;
	}
	public void setFoodid(int foodid) {
		Foodid = foodid;
	}
	@Override
	public String toString() {
		return "OrderContentbean [OrderNumber=" + OrderNumber + ", Foodname=" + Foodname + ", SelectNumber="
				+ SelectNumber + ", Foodprice=" + Foodprice + ", Foodid=" + Foodid + "]";
	}
	
}
