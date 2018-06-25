package com.OTOF.web.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.OTOF.bean.Responsebean;
import com.OTOF.domain.Food;
import com.OTOF.domain.Store;
import com.OTOF.service.IFoodService;
import com.OTOF.service.impl.FoodServletImpl;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * Servlet implementation class FoodModifyInfoServlet
 */
@WebServlet("/FoodModifyInfoServlet")
public class FoodModifyInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FoodModifyInfoServlet() {
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
			JSONArray jsonarray = null;
			Store store = (Store) request.getSession().getAttribute("store");
			if(store != null)
			{
				int storeid = store.getStoreid();
				String foodname = request.getParameter("foodname");
				String categoryid = request.getParameter("categoryid");
				String foodprice = request.getParameter("foodprice");
				String foodid = request.getParameter("foodid");
				IFoodService fs = new FoodServletImpl();
				Food food = new Food();
				food.setFoodName(foodname);
				food.setFoodprice(Integer.parseInt(foodprice));
				food.setCategoryID(Integer.parseInt(categoryid));
				food.setFoodID(Integer.parseInt(foodid));
				if (!fs.updatefood(food))
				{
					 jsonobject = Responsebean.createderror("修改食物失败");
				}else
				{
					 
					 jsonobject = Responsebean.createdsuccess(null, "修改食物成功");
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
