package com.OTOF.bean;

import java.util.Map;

import net.sf.json.JSONObject;

public class Responsebean {

	private int code;
	private String type;
	private String message;
	private Map<String,Object> data;
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Map<String, Object> getData() {
		return data;
	}
	public void setData(Map<String, Object> data) {
		this.data = data;
	}
	public void addData(String key,Object value) {
		this.data.put(key, value);
	}
	public static JSONObject createdsuccess(Map data,String message) {
		
		Responsebean rs = new Responsebean();
		rs.setCode(200);
		rs.setData(data);
		rs.setMessage(message);
		rs.setType("Success");
		return JSONObject.fromObject(rs);
	}
	public static JSONObject createderror(String message) {
		
		Responsebean rs = new Responsebean();
		rs.setCode(400);
		rs.setMessage(message);
		rs.setType("Error");
		return JSONObject.fromObject(rs);
	}
}
