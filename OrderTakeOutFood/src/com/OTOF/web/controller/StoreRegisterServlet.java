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
import com.OTOF.domain.Store;
import com.OTOF.service.IStoreService;
import com.OTOF.service.impl.StoreServiceImpl;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * Servlet implementation class StoreRegisterServlet
 */
@WebServlet("/StoreRegisterServlet")
public class StoreRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StoreRegisterServlet() {
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
			
			String storeloginname = request.getParameter("storeloginname");
			String storepwd = request.getParameter("storepwd");
			String rstorepwd = request.getParameter("rstorepwd");
			String storename = request.getParameter("storename");
			String storeaddr = request.getParameter("storeaddr");
			String storetel = request.getParameter("storetel");
			Store store = new Store();
			store.setStoreloginname(storeloginname);
			store.setStorepwd(storepwd);
			store.setStorename(storename);
			store.setStoreaddr(storeaddr);
			store.setStoretel(storetel);
			store.setStoreStatus(false);
			IStoreService ss = new StoreServiceImpl();
			if(storeloginname==null || storeloginname.trim().isEmpty())
			{	
				
				jsonobject = Responsebean.createderror("用户名为空,登录失败");
			}
			else if(storepwd == null || storepwd.trim().isEmpty())
			{
				jsonobject = Responsebean.createderror("密码为空,登录失败");
			}
			else if(!(storepwd.equals(rstorepwd)))
			{
				jsonobject = Responsebean.createderror("密码不一致，请重新输入");
			}
			else if(!ss.verify(store).isEmpty())
			{
				jsonobject = Responsebean.createderror("用户名已注册，请更换用户名");
			}
			else {			
				if(ss.registerStore(store))
				{
					jsonobject = Responsebean.createdsuccess(null, "注册成功");
				}
				else
				{
					jsonobject = Responsebean.createderror("注册失败");
				}
				
			}
			out = response.getWriter();
			out.println(jsonobject);
			}catch(Exception e)
			{
				e.printStackTrace();
			}
	}

}
