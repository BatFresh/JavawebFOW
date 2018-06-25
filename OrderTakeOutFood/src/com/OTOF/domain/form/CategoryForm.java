package com.OTOF.domain.form;

public class CategoryForm {
	private int CategoryID;
	private String Categoryname;
	private int StoreID;
	public int getCategoryID() {
		return CategoryID;
	}
	public void setCategoryID(int categoryID) {
		CategoryID = categoryID;
	}
	public String getCategoryname() {
		return Categoryname;
	}
	public void setCategoryname(String categoryname) {
		Categoryname = categoryname;
	}
	public int getStoreID() {
		return StoreID;
	}
	public void setStoreID(int storeID) {
		StoreID = storeID;
	}
	@Override
	public String toString() {
		return "CategoryForm [CategoryID=" + CategoryID + ", Categoryname=" + Categoryname + ", StoreID=" + StoreID
				+ "]";
	}
	
	
}
