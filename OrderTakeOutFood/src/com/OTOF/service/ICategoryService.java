package com.OTOF.service;

import java.util.List;

import com.OTOF.domain.form.CategoryForm;

public interface ICategoryService {
	boolean addcategory(CategoryForm category);
	boolean delcategory(CategoryForm category);
	boolean updatecategory(CategoryForm category);
	List findcategory(CategoryForm category);
}
