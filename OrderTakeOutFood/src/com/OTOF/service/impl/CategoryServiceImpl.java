package com.OTOF.service.impl;

import java.util.List;

import com.OTOF.dao.ICategoryDao;
import com.OTOF.dao.impl.CategoryDaoImpl;
import com.OTOF.domain.form.CategoryForm;
import com.OTOF.service.ICategoryService;

public class CategoryServiceImpl implements ICategoryService{
	private ICategoryDao cd = new CategoryDaoImpl();
	@Override
	public boolean addcategory(CategoryForm category) {
		// TODO Auto-generated method stub
		return cd.doadd(category);
	}

	@Override
	public boolean delcategory(CategoryForm category) {
		// TODO Auto-generated method stub
		return cd.dodel(category);
	}

	@Override
	public boolean updatecategory(CategoryForm category) {
		// TODO Auto-generated method stub
		return cd.doupdate(category);
	}

	@Override
	public List findcategory(CategoryForm category) {
		// TODO Auto-generated method stub
		return cd.dofind(category);
	}

}
