package com.OTOF.domain;

import java.io.Serializable;

public class User implements Serializable{

	@Override
	public String toString() {
		return "User [UserID=" + UserID + ", Username=" + Username + ", Userpwd=" + Userpwd + ", Usertel=" + Usertel
				+ ", Useraddr=" + Useraddr + ", PersonalName=" + PersonalName + "]";
	}
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Integer UserID;
	private String Username;
	private String Userpwd;
	private String Usertel;
	private String Useraddr;
	private String PersonalName;
	public Integer getUserID() {
		return UserID;
	}
	public void setUserID(Integer UserID) {
		this.UserID = UserID;
	}
	public String getUsername() {
		return Username;
	}
	public void setUsername(String username) {
		Username = username;
	}
	public String getUserpwd() {
		return Userpwd;
	}
	public void setUserpwd(String userpwd) {
		Userpwd = userpwd;
	}
	public String getUsertel() {
		return Usertel;
	}
	public void setUsertel(String usertel) {
		Usertel = usertel;
	}
	public String getUseraddr() {
		return Useraddr;
	}
	public void setUseraddr(String useraddr) {
		Useraddr = useraddr;
	}
	public String getPersonalName() {
		return PersonalName;
	}
	public void setPersonalName(String personalname) {
		PersonalName = personalname;
	}
	
	
}
