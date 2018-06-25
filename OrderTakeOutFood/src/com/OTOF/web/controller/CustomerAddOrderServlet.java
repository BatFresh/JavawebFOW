package com.OTOF.web.controller;

import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.OTOF.bean.OrderContentbean;
import com.OTOF.bean.Responsebean;
import com.OTOF.domain.Order;
import com.OTOF.domain.User;
import com.OTOF.domain.form.OrderForm;
import com.OTOF.service.IOrderService;
import com.OTOF.service.impl.OrderServiceImpl;
import com.OTOF.util.JsonUtils;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * Servlet implementation class CustomerAddOrderServlet
 */

@WebServlet("/CustomerAddOrderServlet")
public class CustomerAddOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerAddOrderServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try { 
			
			response.setContentType("text/json;charset=utf-8");
			response.setHeader("Cache-Control", "no-cache");
			PrintWriter out  = response.getWriter();
			JSONObject jsonobject = null;
			JSONObject jsonarray = null;
			User user = (User) request.getSession().getAttribute("user");
			if(user != null)
			{
				int userid = user.getUserID();
				Map foods = new HashMap();
				foods.put("foodlist",OrderContentbean.class);
				OrderForm data = (OrderForm) JSONObject.toBean(
						JsonUtils.getRequestBodyData(request), OrderForm.class,foods);
				
				String ordernumber = Order.getOrderNumberByUUId();
				data.setOrdernumber(ordernumber);
				
	//			order.setOrderNumber(ordernumber);
	//			order.setStoreID(Integer.parseInt(storeid));
	//			order.setOrderTime(Timestamp.valueOf(ordertime));
	//			order.setOrderStatus(Integer.parseInt(orderstatus));
	//			order.setSumprice(Integer.parseInt(sumprice));
				
				IOrderService os = new OrderServiceImpl();
				if(!os.customeraddorder(data,userid))
				{
					jsonobject = Responsebean.createderror("生成订单失败");
				}
				else
				{	
					List<OrderContentbean> foodlist = data.getFoodlist();
					
					for(OrderContentbean food : foodlist)
					{
						food.setOrderNumber(ordernumber);
						
						if(!os.addordercontent(food))
						{
							jsonobject = Responsebean.createderror("生成订单失败");
						}
					}
					System.out.println("dasdas");
					jsonobject = Responsebean.createdsuccess(null, "生成订单成功");
				}	
			}
			else 
			{
				jsonobject = Responsebean.createderror("用户处于未登录状态");
			}
			out = response.getWriter();
			out.println(jsonobject);
		}catch (Exception e)
		{
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
