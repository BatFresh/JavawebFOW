package com.OTOF.domain;

import java.io.Serializable;

public class User implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int id;
	private String Username;
	private String Userpwd;
	private int Usertel;
	private String Useraddr;
	private String PersonnalName;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public int getUsertel() {
		return Usertel;
	}
	public void setUsertel(int usertel) {
		Usertel = usertel;
	}
	public String getUseraddr() {
		return Useraddr;
	}
	public void setUseraddr(String useraddr) {
		Useraddr = useraddr;
	}
	public String getPersonnalName() {
		return PersonnalName;
	}
	public void setPersonnalName(String personnalName) {
		PersonnalName = personnalName;
	}
	
	
}
