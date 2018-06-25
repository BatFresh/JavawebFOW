package com.OTOF.service.impl;

import java.util.List;

import com.OTOF.dao.ICommentDao;
import com.OTOF.dao.impl.CommentDaoImpl;
import com.OTOF.domain.form.CommentForm;
import com.OTOF.service.ICommentService;

public class CommentServiceImpl implements ICommentService{
	private ICommentDao cd = new CommentDaoImpl();
	@Override
	public boolean addcomment(CommentForm comment) {
		// TODO Auto-generated method stub
		return cd.doadd(comment);
	}

	@Override
	public boolean updatecomment(CommentForm comment) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delcomment(CommentForm comment) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List findcomment(CommentForm comment) {
		// TODO Auto-generated method stub
		return cd.dofind(comment);
	}

}
