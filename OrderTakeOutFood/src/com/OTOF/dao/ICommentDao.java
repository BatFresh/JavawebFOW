package com.OTOF.dao;

import java.util.List;

import com.OTOF.domain.form.CommentForm;

public interface ICommentDao {
	boolean doadd(CommentForm comment);
	boolean dodel(CommentForm comment);
	boolean doupdate(CommentForm comment);
	List dofind(CommentForm comment);
	
}
