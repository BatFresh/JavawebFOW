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
        int machineId = 1;//���֧��1-9����Ⱥ��������
        int hashCodeV = UUID.randomUUID().toString().hashCode();
        if(hashCodeV < 0) {//�п����Ǹ���
            hashCodeV = - hashCodeV;
        }
        // 0 ����ǰ�油��0     
        // 4 ������Ϊ4     
        // d �������Ϊ������
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
