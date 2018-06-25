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

import com.OTOF.bean.Responsebean;
import com.OTOF.domain.User;
import com.OTOF.service.IFoodService;
import com.OTOF.service.impl.FoodServletImpl;


import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * Servlet implementation class DisplayFoodServlet
 */
@WebServlet("/DisplayFoodBystoreServlet")
public class DisplayFoodBystoreServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DisplayFoodBystoreServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			String storeid = request.getParameter("storeid");
			response.setContentType("text/json;charset=utf-8");
			response.setHeader("Cache-Control", "no-cache");
			PrintWriter out  = response.getWriter();
			JSONObject jsonobject = null;
			User user = (User) request.getSession().getAttribute("user");
		
			int userid = user.getUserID();
			
			IFoodService fs = new FoodServletImpl();
			System.out.println(storeid);
			List foodlist = fs.browseBystore(Integer.parseInt(storeid));
			
			
			if (foodlist == null)
			{
				 jsonobject = Responsebean.createderror("获取食物列表失败");
			}else
			{
				 HashMap<String,Object> hs = new HashMap<String,Object>();
				 hs.put("foodlist", foodlist);
				 System.out.println(hs);
				 jsonobject = Responsebean.createdsuccess(hs, "获取食物列表成功");
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
