package com.OTOF.bean;

import java.util.Date;

public class StoreOrderbean {
	private String Ordernumber;
	private String PersonalName;
	private int OrderStatus;
	private String Usertel;
	private Date OrderTime;
	private int Sumprice;
	private int Deliverytime;
	@Override
	public String toString() {
		return "StoreOrderbean [Ordernumber=" + Ordernumber + ", PersonalName=" + PersonalName + ", OrderStatus="
				+ OrderStatus + ", Usertel=" + Usertel + ", Sumprice=" + Sumprice + ", Deliverytime=" + Deliverytime
				+ "]";
	}
	public String getOrdernumber() {
		return Ordernumber;
	}
	public void setOrdernumber(String ordernumber) {
		Ordernumber = ordernumber;
	}
	public String getPersonalName() {
		return PersonalName;
	}
	public void setPersonalName(String personalName) {
		PersonalName = personalName;
	}
	public int getOrderStatus() {
		return OrderStatus;
	}
	public void setOrderStatus(int orderStatus) {
		OrderStatus = orderStatus;
	}
	public String getUsertel() {
		return Usertel;
	}
	public void setUsertel(String usertel) {
		Usertel = usertel;
	}
	public Date getOrderTime() {
		return new java.util.Date(OrderTime.getTime());
	}
	public void setOrderTime(Date orderTime) {
		OrderTime = orderTime;
	}
	public int getSumprice() {
		return Sumprice;
	}
	public void setSumprice(int sumprice) {
		Sumprice = sumprice;
	}
	public int getDeliverytime() {
		return Deliverytime;
	}
	public void setDeliverytime(int deliverytime) {
		Deliverytime = deliverytime;
	}
	
}
