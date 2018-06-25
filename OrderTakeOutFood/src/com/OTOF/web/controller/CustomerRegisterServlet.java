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
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/CustomerRegisterServlet")
public class CustomerRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerRegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
    	
		response.setContentType("text/json;charset=utf-8");
		response.setHeader("Cache-Control", "no-cache"); 
		PrintWriter out  = response.getWriter();
		
		JSONObject jsonobject = new JSONObject();
		
		String username = request.getParameter("username");
		String userpwd = request.getParameter("userpwd");
		String ruserpwd = request.getParameter("ruserpwd");
		IUserService us = new UserServiceImpl();
		User user = new User();
		user.setUsername(username);
		user.setUserpwd(userpwd);
//		System.out.println(username);
		if(username==null || username.trim().isEmpty())
		{		
			jsonobject = Responsebean.createderror("用户名为空,登录失败");
			
		}
		else if(userpwd == null || userpwd.trim().isEmpty())
		{
			jsonobject = Responsebean.createderror("密码为空,登录失败");
		}
		else if(!(userpwd.equals(ruserpwd)))
		{
			jsonobject = Responsebean.createderror("密码不一致，请重新输入");
		}
		else if(!us.finduser(user).isEmpty())
		{
			jsonobject = Responsebean.createderror("用户名已注册，请更换用户名");
		}
		else {
			
			us.registerUser(user);
			HashMap<String,Object> hs = new HashMap<String,Object>();
			jsonobject = Responsebean.createdsuccess(hs, "注册成功");
		}
		out = response.getWriter();
		out.println(jsonobject);
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	doPost(request, response);
    }
}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */

