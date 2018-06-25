package com.OTOF.web.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.OTOF.bean.Responsebean;

import net.sf.json.JSONObject;

/**
 * Servlet implementation class CustomerLoginOutServlet
 */
@WebServlet("/CustomerLoginOutServlet")
public class CustomerLoginOutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerLoginOutServlet() {
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
			HttpSession session = request.getSession(false);
		    if(session==null)
		    {
		    	jsonobject = Responsebean.createderror("无登录状态，退出无效");
		    }
		    else {
		    	session.removeAttribute("user");
		    	HashMap<String,Object> hs = new HashMap<String,Object>();
		    	jsonobject = Responsebean.createdsuccess(hs, "注销成功");
		    }
		    out = response.getWriter();
			out.println(jsonobject);
		}
		catch (Exception e)
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
