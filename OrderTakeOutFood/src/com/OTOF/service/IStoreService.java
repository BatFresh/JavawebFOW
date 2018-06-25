package com.OTOF.service;

import java.util.List;

import com.OTOF.bean.StoreOrderbean;
import com.OTOF.domain.Store;
import com.OTOF.domain.User;
import com.OTOF.exception.UserExistException;

public interface IStoreService {
	/**
     * �ṩ���̶�ע�����
      * @param store
      * 
     */
     boolean registerStore(Store store);
     
     boolean updatepicture(Store store);
     
    /**
      * �ṩ���̶˵�¼����
      * @param Storeloginname
     * @param Storepwd
      * @return store
     */
     Store loginStore(Store store);
     /**
      * �ṩ�û���չʾ���̷���
      * @param 
     * @param 
      * @return store list
     */
     List<Store> displayallStore();
     /**
      * �ṩ�û��˲�ѯ���̷���
      * @param storename
     * @param 
      * @return store list
     */
     List<Store> displayselectedStore(Store store);
     /**
      * �ṩ���̶˸��µ�����Ϣ����
      * @param store
     * @param 
      * @return store list
     */
     boolean updatastoreinfo(Store store);
     
     List verify(Store store);
     
     Store findstorebyid(Store store);
}
