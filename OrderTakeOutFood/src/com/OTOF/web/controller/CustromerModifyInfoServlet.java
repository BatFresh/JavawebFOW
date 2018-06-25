package com.OTOF.web.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.OTOF.bean.Imagebean;
import com.OTOF.bean.Responsebean;
import com.OTOF.domain.Store;
import com.OTOF.domain.User;
import com.OTOF.service.IStoreService;
import com.OTOF.service.IUserService;
import com.OTOF.service.impl.StoreServiceImpl;
import com.OTOF.service.impl.UserServiceImpl;

import net.sf.json.JSONObject;

/**
 * Servlet implementation class CustromerModifyInfoServlet
 */
@WebServlet("/CustromerModifyInfoServlet")
public class CustromerModifyInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustromerModifyInfoServlet() {
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
			
			User user = (User) request.getSession().getAttribute("user");
			if (user == null)
			{
				Responsebean.createderror("用户处于未登录状态");
			}
			else {
				int userid = user.getUserID();
				IUserService us = new UserServiceImpl();
				User usertemp = new User();
				
				String userpersonalname = request.getParameter("userpersonalname");
				String usertel = request.getParameter("usertel");
				String useraddr = request.getParameter("useraddr");
				usertemp.setUserID(userid);
				usertemp.setPersonalName(userpersonalname);
				usertemp.setUsertel(usertel);
				usertemp.setUseraddr(useraddr);

				if(us.modifyUserinfo(usertemp))
				{
					jsonobject = Responsebean.createdsuccess(null, "修改成功");
				}
				else 
				{
					jsonobject = Responsebean.createderror("失败成功");
				}
				
				
			}
			out = response.getWriter();
			out.println(jsonobject);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

}
