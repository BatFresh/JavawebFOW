package com.OTOF.service.impl;

import java.util.List;

import com.OTOF.dao.IStoreDao;
import com.OTOF.dao.impl.StoreDaoImpl;
import com.OTOF.domain.Store;
import com.OTOF.service.IStoreService;

public class StoreServiceImpl implements IStoreService{
	private IStoreDao sd = new StoreDaoImpl();
	@Override
	public boolean registerStore(Store store) {
		return sd.doadd(store);
		
	}

	@Override
	public Store loginStore(Store store) {
		// TODO Auto-generated method stub
		return sd.dofind(store);
	}

	@Override
	public List displayallStore() {
		// TODO Auto-generated method stub
		return sd.doallfind();
	}

	@Override
	public List displayselectedStore(Store store) {
		// TODO Auto-generated method stub
		return sd.dolikefind(store);
	}
	@Override
	public boolean updatastoreinfo(Store store) {
		// TODO Auto-generated method stub
		return sd.modifyStoreinfo(store);
		
	}

	@Override
	public boolean updatepicture(Store store) {
		// TODO Auto-generated method stub
		return sd.doupdatepicture(store);
	}

	@Override
	public List verify(Store store) {
		// TODO Auto-generated method stub
		return sd.dofindverify(store);
	}

	@Override
	public Store findstorebyid(Store store) {
		// TODO Auto-generated method stub
		return sd.dofindstorebyid(store);
	}
	

}
