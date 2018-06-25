package com.OTOF.service;

import java.util.List;

import com.OTOF.bean.StoreOrderbean;
import com.OTOF.domain.Store;
import com.OTOF.domain.User;
import com.OTOF.exception.UserExistException;

public interface IStoreService {
	/**
     * 提供店铺端注册服务
      * @param store
      * 
     */
     boolean registerStore(Store store);
     
     boolean updatepicture(Store store);
     
    /**
      * 提供店铺端登录服务
      * @param Storeloginname
     * @param Storepwd
      * @return store
     */
     Store loginStore(Store store);
     /**
      * 提供用户端展示店铺服务
      * @param 
     * @param 
      * @return store list
     */
     List<Store> displayallStore();
     /**
      * 提供用户端查询店铺服务
      * @param storename
     * @param 
      * @return store list
     */
     List<Store> displayselectedStore(Store store);
     /**
      * 提供店铺端更新店铺信息服务
      * @param store
     * @param 
      * @return store list
     */
     boolean updatastoreinfo(Store store);
     
     List verify(Store store);
     
     Store findstorebyid(Store store);
}
