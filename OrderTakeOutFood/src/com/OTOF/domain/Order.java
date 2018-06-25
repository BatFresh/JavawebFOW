package com.OTOF.domain;

import java.sql.Timestamp;
import java.util.Date;
import java.util.UUID;

public class Order {
	
	@Override
	public String toString() {
		return "Order [OrderID=" + OrderID + ", OrderNumber=" + OrderNumber + ", StoreID=" + StoreID + ", UserID="
				+ UserID + ", Sumprice=" + Sumprice + ", OrderTime=" + OrderTime + ", FinishTime=" + FinishTime
				+ ", OrderStatus=" + OrderStatus + "]";
	}
	private int OrderID;
	private String OrderNumber;
	private int StoreID;
	private int UserID;
	private float Sumprice;
	private Timestamp OrderTime;
	private Timestamp FinishTime;
	private int OrderStatus;
	
	public int getOrderStatus() {
		return OrderStatus;
	}
	public void setOrderStatus(int orderStatus) {
		OrderStatus = orderStatus;
	}
	public static String getOrderNumberByUUId() {
        int machineId = 1;//最大支持1-9个集群机器部署
        int hashCodeV = UUID.randomUUID().toString().hashCode();
        if(hashCodeV < 0) {//有可能是负数
            hashCodeV = - hashCodeV;
        }
        // 0 代表前面补充0     
        // 4 代表长度为4     
        // d 代表参数为正数型
        return machineId + String.format("%010d", hashCodeV);
    }
	public int getOrderID() {
		return OrderID;
	}
	public void setOrderID(int orderID) {
		OrderID = orderID;
	}
	public String getOrderNumber() {
		return OrderNumber;
	}
	public void setOrderNumber(String orderNumber) {
		OrderNumber = orderNumber;
	}
	public int getStoreID() {
		return StoreID;
	}
	public void setStoreID(int storeID) {
		StoreID = storeID;
	}
	public int getUserID() {
		return UserID;
	}
	public void setUserID(int userID) {
		UserID = userID;
	}
	public float getSumprice() {
		return Sumprice;
	}
	public void setSumprice(float sumprice) {
		Sumprice = sumprice;
	}
	public Timestamp getOrderTime() {
		return OrderTime;
	}
	public void setOrderTime(Timestamp orderTime) {
		OrderTime = orderTime;
	}
	public Date getFinishTime() {
		return FinishTime;
	}
	public void setFinishTime(Timestamp finishTime) {
		FinishTime = finishTime;
	}
	
	
}
