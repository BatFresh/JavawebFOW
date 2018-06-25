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
import com.OTOF.domain.Store;
import com.OTOF.service.IStoreService;
import com.OTOF.service.impl.StoreServiceImpl;

import net.sf.json.JSONObject;

/**
 * Servlet implementation class FindStoreByStoreIDServlet
 */
@WebServlet("/FindStoreByStoreIDServlet")
public class FindStoreByStoreIDServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindStoreByStoreIDServlet() {
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
			String storeid = request.getParameter("storeid");
			IStoreService ss = new StoreServiceImpl();
			Store store = new Store();
			store.setStoreid(Integer.parseInt(storeid));
			Store storelist = ss.findstorebyid(store);
			if (storelist == null)
			{
				 jsonobject = Responsebean.createderror("获取店铺失败");
			}else
			{
				 HashMap<String,Object> hs = new HashMap<String,Object>();
				 hs.put("storeList", storelist);
				 jsonobject = Responsebean.createdsuccess(hs, "获取店铺成功");
			}
			
			out = response.getWriter();
			out.println(jsonobject);
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
