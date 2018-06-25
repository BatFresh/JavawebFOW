package com.OTOF.domain;

public class Store {
	private int storeid;
	private String Storename;
	private String Storepwd;
	private String Storetel;
	private boolean Storestatus;
	private String Storeaddr;
	private String Storepicture;
	private float Sendingfee;
	
	private float Deliverycost;
	private float rank;
	private float Deliverytime;
	private String Storeloginname;
	@Override
	public String toString() {
		return "Store [storeid=" + storeid + ", Storename=" + Storename + ", Storepwd=" + Storepwd + ", Storetel="
				+ Storetel + ", StoreStatus=" + Storestatus + ", Storeaddr=" + Storeaddr + ", StorePicture="
				+ Storepicture + ", Sendingfee=" + Sendingfee + ", Deliverycost=" + Deliverycost + ", rank=" + rank
				+ ", Deliverytime=" + Deliverytime + ", Storeloginname=" + Storeloginname + "]";
	}
	public String getStoreloginname() {
		return Storeloginname;
	}
	public void setStoreloginname(String storeloginname) {
		Storeloginname = storeloginname;
	}
	public int getStoreid() {
		return storeid;
	}
	public void setStoreid(int storeid) {
		this.storeid = storeid;
	}
	public String getStorename() {
		return Storename;
	}
	public void setStorename(String storename) {
		Storename = storename;
	}
	public String getStorepwd() {
		return Storepwd;
	}
	public void setStorepwd(String storepwd) {
		Storepwd = storepwd;
	}
	public String getStoretel() {
		return Storetel;
	}
	public void setStoretel(String storetel) {
		Storetel = storetel;
	}
	public boolean isStoreStatus() {
		return Storestatus;
	}
	public void setStoreStatus(boolean storestatus) {
		Storestatus = storestatus;
	}
	public String getStoreaddr() {
		return Storeaddr;
	}
	public void setStoreaddr(String storeaddr) {
		Storeaddr = storeaddr;
	}
	public String getStorePicture() {
		return Storepicture;
	}
	public void setStorePicture(String storePicture) {
		Storepicture = storePicture;
	}
	public float getSendingfee() {
		return Sendingfee;
	}
	public void setSendingfee(float sendingfee) {
		Sendingfee = sendingfee;
	}
	public float getDeliverycost() {
		return Deliverycost;
	}
	public void setDeliverycost(float deliverycost) {
		Deliverycost = deliverycost;
	}
	public float getRank() {
		return rank;
	}
	public void setRank(float rank) {
		this.rank = rank;
	}
	public float getDeliverytime() {
		return Deliverytime;
	}
	public void setDeliverytime(float deliverytime) {
		Deliverytime = deliverytime;
	}
	
}
