package com.OTOF.web.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.OTOF.bean.Responsebean;
import com.OTOF.domain.Store;
import com.OTOF.domain.User;
import com.OTOF.service.IStoreService;
import com.OTOF.service.IUserService;
import com.OTOF.service.impl.StoreServiceImpl;
import com.OTOF.service.impl.UserServiceImpl;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * Servlet implementation class StoreLoginServlet
 */
@WebServlet("/StoreLoginServlet")
public class StoreLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StoreLoginServlet() {
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
			
			String storeloginname = request.getParameter("Storeloginname");
			String storepwd = request.getParameter("Storepwd");
			if(storeloginname==null || storepwd.trim().isEmpty())
			{	
				
				jsonobject = Responsebean.createderror("用户名为空，请重新输入");
			}
			else if(storepwd == null || storepwd.trim().isEmpty())
			{
				jsonobject = Responsebean.createderror("密码为空，请重新输入");
			}
			else {
				IStoreService ss = new StoreServiceImpl();
				Store store = new Store();
				store.setStoreloginname(storeloginname);
				store.setStorepwd(storepwd);
				Store storelist = ss.loginStore(store);
				if (storelist == null)
				{
					jsonobject = Responsebean.createderror("用户不存在，登录失败");
				}else
				{
					request.getSession().setAttribute("store", storelist);
					
					jsonobject = Responsebean.createdsuccess(null, "登录成功");
				}
			}
			out = response.getWriter();
			out.println(jsonobject);
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
	}

}
