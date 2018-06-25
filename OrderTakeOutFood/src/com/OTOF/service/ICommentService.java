package com.OTOF.service;

import java.util.List;

import com.OTOF.domain.form.CommentForm;

public interface ICommentService {
	boolean addcomment(CommentForm comment);
	boolean updatecomment(CommentForm comment);
	boolean delcomment(CommentForm comment);
	List findcomment(CommentForm comment);
}
