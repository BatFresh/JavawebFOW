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

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/CustromerLoginServlet")
public class CustromerLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustromerLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
		
		response.setContentType("text/json;charset=utf-8");
		response.setHeader("Cache-Control", "no-cache");
		PrintWriter out  = response.getWriter();
		
		JSONObject jsonobject = new JSONObject();
		
		String username = request.getParameter("username");
		String userpwd = request.getParameter("userpwd");
		if(username==null || username.trim().isEmpty())
		{	
			
			jsonobject = Responsebean.createderror("用户名为空，请重新输入");
		}
		else if(userpwd == null || userpwd.trim().isEmpty())
		{
			jsonobject = Responsebean.createderror("密码为空，请重新输入");
		}
		else {
			IUserService us = new UserServiceImpl();
			User user = new User();
			user = us.loginUser(username,userpwd);
			if (user == null)
			{
				jsonobject = Responsebean.createderror("信息填写错误，登录失败");
			}else
			{	
				request.getSession().setAttribute("user", user);
				user.setUserpwd(null);
				HashMap<String,Object> hs = new HashMap<String,Object>();
				hs.put("user", user);
				jsonobject = Responsebean.createdsuccess(hs, "登录成功");
			}
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

}
