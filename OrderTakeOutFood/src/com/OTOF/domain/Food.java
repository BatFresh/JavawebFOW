package com.OTOF.domain;

public class Food {
	private int FoodID;
	private String FoodName;
	private boolean FoodStatus;
	private float Foodprice;
	private String FoodPicture;
	private int CategoryID;
	private int StoreID;
	
	public int getStoreID() {
		return StoreID;
	}
	public void setStoreID(int storeID) {
		StoreID = storeID;
	}
	public int getCategoryID() {
		return CategoryID;
	}
	public void setCategoryID(int categoryID) {
		CategoryID = categoryID;
	}
	public int getFoodID() {
		return FoodID;
	}
	public void setFoodID(int foodID) {
		FoodID = foodID;
	}
	public String getFoodName() {
		return FoodName;
	}
	public void setFoodName(String foodName) {
		FoodName = foodName;
	}
	public boolean isFoodStatus() {
		return FoodStatus;
	}
	public void setFoodStatus(boolean foodStatus) {
		FoodStatus = foodStatus;
	}
	public float getFoodprice() {
		return Foodprice;
	}
	public void setFoodprice(float foodprice) {
		Foodprice = foodprice;
	}
	public String getFoodPicture() {
		return FoodPicture;
	}
	public void setFoodPicture(String foodPicture) {
		FoodPicture = foodPicture;
	}
	@Override
	public String toString() {
		return "Food [FoodID=" + FoodID + ", FoodName=" + FoodName + ", FoodStatus=" + FoodStatus + ", Foodprice="
				+ Foodprice + ", FoodPicture=" + FoodPicture + ", CategoryID=" + CategoryID + "]";
	}
	
	
}
