package com.OTOF.dao;

import java.util.List;

import com.OTOF.domain.form.CategoryForm;

public interface ICategoryDao {

	boolean doadd(CategoryForm category);
	
	boolean dodel(CategoryForm category);
	
	boolean doupdate(CategoryForm category);
	
	List dofind(CategoryForm category);
}
