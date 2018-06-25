package com.OTOF.service;

import java.util.List;

import com.OTOF.bean.OrderContentbean;
import com.OTOF.domain.Order;
import com.OTOF.domain.form.OrderForm;

public interface IOrderService {
    /**
     * 提供用户端展示所有订单服务
     * @param useid
    * @param 
     * @return order list
    */
    List<Order> customerdisplayallOrder(int useid);
    /**
     * 提供用户端用订单号查询订单服务
     * @param useid ordernumber
    * @param 
     * @return order list
    */
    List<Order> customerdisplayselectedOrder(int useid,int ordernumber);
    /**
     * 提供店铺端展示订单服务(根据订单状态)
     * @param storeid
    * @param 
     * @return order list
    */
    List<Order> storedisplayOrder(int storeid,int orderstatus);
    /**
     * 提供店铺端用订单号查询订单服务
     * @param storeid ordernumber
    * @param 
     * @return order list
    */
    List<Order> storedisplayselectedOrder(int storeid,String ordernumber);
    /**
     * 提供店铺端更新订单完成信息服务
     * @param order
    * @param 
     * @return 
    */
    boolean storefinishorder(Order order);
    /**
     * 提供用户端添加订单信息服务
     * @param order
    * @param 
     * @return 
    */
    boolean customeraddorder(OrderForm order,int userid);
    
    boolean addordercontent(OrderContentbean ordercontent);
    
    boolean acceptorder(Order order);
    
    List displayordercontent(String ordernumber);
    
}
