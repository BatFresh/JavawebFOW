package com.OTOF.bean;

import java.util.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import com.OTOF.domain.Order;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class CustomerOrderbean {
	private static final int Plantime = 0;
	private String OrderNumber;
	private String StorePicture;
	private String Storename;
	private int OrderStatus;
	private String Storetel;
	private Date OrderTime;
	private int Deliverytime;
	private int Sumprice;
	private int Storeid;
	
	public int getStoreid() {
		return Storeid;
	}

	public void setStoreid(int storeid) {
		Storeid = storeid;
	}

	@Override
	public String toString() {
		return "CustomerOrderbean [OrderNumber=" + OrderNumber + ", StorePicture=" + StorePicture + ", Storename="
				+ Storename + ", OrderStatus=" + OrderStatus + ", Storetel=" + Storetel + ", OrderTime=" + OrderTime
				+ ", Deliverytime=" + Deliverytime + ", Sumprice=" + Sumprice + "]";
	}

	public String getOrderNumber() {
		return OrderNumber;
	}
	public void setOrderNumber(String orderNumber) {
		OrderNumber = orderNumber;
	}
	public String getStorePicture() {
		return StorePicture;
	}
	public void setStorePicture(String storePicture) {
		StorePicture = storePicture;
	}
	public String getStorename() {
		return Storename;
	}
	public void setStorename(String storename) {
		Storename = storename;
	}
	public int getOrderStatus() {
		return OrderStatus;
	}
	public void setOrderStatus(int orderStatus) {
		OrderStatus = orderStatus;
	}
	public String getStoretel() {
		return Storetel;
	}
	public void setStoretel(String storetel) {
		Storetel = storetel;
	}
	public Date getOrdertime() {
		return new java.util.Date(OrderTime.getTime());
	}
	public void setOrdertime(Date ordertime) {
		OrderTime = ordertime;
	}
	public int getDeliverytime() {
		return Deliverytime;
	}
	public void setDeliverytime(int deliverytime) {
		Deliverytime = deliverytime;
	}
	public int getSumprice() {
		return Sumprice;
	}
	public void setSumprice(int sumprice) {
		Sumprice = sumprice;
	}
	
}
