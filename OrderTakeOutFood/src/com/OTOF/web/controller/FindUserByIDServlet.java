package com.OTOF.web.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.OTOF.bean.Responsebean;
import com.OTOF.domain.User;
import com.OTOF.service.IUserService;
import com.OTOF.service.impl.UserServiceImpl;

import net.sf.json.JSONObject;

/**
 * Servlet implementation class FindUserByIDServlet
 */
@WebServlet("/FindUserByIDServlet")
public class FindUserByIDServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindUserByIDServlet() {
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
			User user = (User) request.getSession().getAttribute("user");
			JSONObject jsonobject = new JSONObject();
			
			IUserService us = new UserServiceImpl();
			User usertemp = us.finduserbyid(user);
			if (usertemp == null)
			{
				jsonobject = Responsebean.createderror("不在登录状态");
			}else
			{	
				HashMap<String,Object> hs = new HashMap<String,Object>();
				hs.put("user", usertemp);
				jsonobject = Responsebean.createdsuccess(hs, "登录成功");
			}
			
			out = response.getWriter();
			out.println(jsonobject);
			System.out.println(jsonobject);
			}
			catch(Exception e)
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
