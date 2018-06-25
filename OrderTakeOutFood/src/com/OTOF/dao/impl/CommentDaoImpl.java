package com.OTOF.dao.impl;

import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.OTOF.dao.ICommentDao;
import com.OTOF.domain.form.CommentForm;
import com.OTOF.util.JdbcUtils;
import com.sun.xml.internal.fastinfoset.stax.events.CommentEvent;

public class CommentDaoImpl implements ICommentDao{

	@Override
	public boolean doadd(CommentForm comment) {
		try {
			
			QueryRunner runner = new QueryRunner(JdbcUtils.getDataSource()); 
			String sql = "insert into Comments(Comments,UserID,StoreID,Publishtime,Commentstatus,OrderNumber) values(?,?,?,?,?,?)";
			Object []params = {comment.getCommentcontent(),
					comment.getUserid(),comment.getStoreid(),comment.getPublishtime(),comment.getCommentstatus(),
					comment.getOrdernumber()};
			runner.update(sql,params);
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
		return true;

	}

	@Override
	public boolean dodel(CommentForm comment) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean doupdate(CommentForm comment) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List dofind(CommentForm comment) {
		try {
			QueryRunner runner = new QueryRunner(JdbcUtils.getDataSource()); 
			String sql = "select Personalname,Publishtime,Comments,Commentstatus from "
					+ "comments,user where comments.StoreID = ? and user.UserID = ?";
			Object []params = {comment.getStoreid(),comment.getUserid()};
			List commentslist = (List) runner.query(sql,params,new BeanListHandler(CommentForm.class));
			return commentslist;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return null;
		}
		
	}

}
