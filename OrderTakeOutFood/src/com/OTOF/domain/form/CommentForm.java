package com.OTOF.domain.form;

import java.util.Date;

public class CommentForm {
	private int Commentid;
	private int Storeid;
	private int Userid;
	private String Commentcontent;
	private Date Publishtime;
	private int Commentstatus;
	private String Ordernumber;
	
	@Override
	public String toString() {
		return "CommentForm [Commentid=" + Commentid + ", Storeid=" + Storeid + ", Userid=" + Userid
				+ ", Commentcontent=" + Commentcontent + ", Publishtime=" + Publishtime + ", Commentstatus="
				+ Commentstatus + ", Ordernumber=" + Ordernumber + "]";
	}
	public String getOrdernumber() {
		return Ordernumber;
	}
	public void setOrdernumber(String ordernumber) {
		Ordernumber = ordernumber;
	}
	public Date getPublishtime() {
		return Publishtime;
	}
	public void setPublishtime(Date publishtime) {
		Publishtime = publishtime;
	}
	public int getCommentstatus() {
		return Commentstatus;
	}
	public void setCommentstatus(int commentstatus) {
		Commentstatus = commentstatus;
	}
	public int getCommentid() {
		return Commentid;
	}
	public void setCommentid(int commentid) {
		Commentid = commentid;
	}
	public int getStoreid() {
		return Storeid;
	}
	public void setStoreid(int storeid) {
		Storeid = storeid;
	}
	public int getUserid() {
		return Userid;
	}
	public void setUserid(int userid) {
		Userid = userid;
	}
	public String getCommentcontent() {
		return Commentcontent;
	}
	public void setCommentcontent(String commentcontent) {
		Commentcontent = commentcontent;
	}
	
	
	
}
