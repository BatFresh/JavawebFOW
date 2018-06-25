package com.OTOF.domain.form;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import com.OTOF.bean.OrderContentbean;

public class OrderForm {
	private int storeid;
	
	private int sumprice;
	
	private Date ordertime;
	
	private int orderstatus;
	
	private String ordernumber;
	
	private String usertel;
	
	private String useraddr;
	
	private String personalname;
	
	
	public String getUsertel() {
		return usertel;
	}

	public void setUsertel(String usertel) {
		this.usertel = usertel;
	}

	public String getUseraddr() {
		return useraddr;
	}

	public void setUseraddr(String useraddr) {
		this.useraddr = useraddr;
	}

	public String getPersonalname() {
		return personalname;
	}

	public void setPersonalname(String personalname) {
		this.personalname = personalname;
	}

	private List<OrderContentbean> foodlist;
	
	public String getOrdernumber() {
		return ordernumber;
	}

	public void setOrdernumber(String ordernumber) {
		this.ordernumber = ordernumber;
	}

	public int getStoreid() {
		return storeid;
	}

	public void setStoreid(int storeid) {
		this.storeid = storeid;
	}

	public int getSumprice() {
		return sumprice;
	}

	public void setSumprice(int sumprice) {
		this.sumprice = sumprice;
	}

	public Date getOrdertime() {
		return ordertime;
	}

	public void setOrdertime(Date ordertime) {
		this.ordertime = ordertime;
	}

	public int getOrderstatus() {
		return orderstatus;
	}

	public void setOrderstatus(int orderstatus) {
		this.orderstatus = orderstatus;
	}

	

	public List<OrderContentbean> getFoodlist() {
		return foodlist;
	}

	public void setFoodlist(List<OrderContentbean> foodlist) {
		this.foodlist = foodlist;
	}

	@Override
	public String toString() {
		return "OrderForm [storeid=" + storeid + ", sumprice=" + sumprice + ", ordertime=" + ordertime
				+ ", orderstatus=" + orderstatus + ", ordernumber=" + ordernumber + ", foodlist=" + foodlist + "]";
	}

	
	
	
}
