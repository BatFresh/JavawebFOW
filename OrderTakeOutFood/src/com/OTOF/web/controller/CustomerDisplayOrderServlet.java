package com.OTOF.web.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.OTOF.bean.CustomerOrderbean;
import com.OTOF.bean.Responsebean;
import com.OTOF.domain.Order;
import com.OTOF.domain.Store;
import com.OTOF.domain.User;
import com.OTOF.service.IOrderService;
import com.OTOF.service.IStoreService;
import com.OTOF.service.impl.OrderServiceImpl;
import com.OTOF.service.impl.StoreServiceImpl;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * Servlet implementation class CustomerDisplayOrderServlet
 */
@WebServlet("/CustomerDisplayOrderServlet")
public class CustomerDisplayOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerDisplayOrderServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			response.setContentType("text/json;charset=utf-8");
			response.setHeader("Cache-Control", "no-cache");
			PrintWriter out  = response.getWriter();
			JSONObject jsonobject = null;
			JSONArray jsonarray = null;
			User user = (User) request.getSession().getAttribute("user");
			if(user != null)
			{
			int userid = user.getUserID();
			
			IOrderService os = new OrderServiceImpl();
			List orders = os.customerdisplayallOrder(userid);
			System.out.println(userid);
			
			if (orders.isEmpty())
			{
				 jsonobject = Responsebean.createderror("获取订单失败");
			}else
			{
				 HashMap<String,Object> hs = new HashMap<String,Object>();
				 hs.put("orderList", orders);
				 jsonobject = Responsebean.createdsuccess(hs, "获取订单成功");
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
