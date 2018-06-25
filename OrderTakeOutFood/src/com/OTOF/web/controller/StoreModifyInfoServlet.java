package com.OTOF.web.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.OTOF.bean.Imagebean;
import com.OTOF.bean.Responsebean;
import com.OTOF.domain.Store;
import com.OTOF.service.IStoreService;
import com.OTOF.service.impl.StoreServiceImpl;

import net.sf.json.JSONObject;

/**
 * Servlet implementation class ModifyStoreInfoServlet
 */
@WebServlet("/StoreModifyInfoServlet")

public class StoreModifyInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StoreModifyInfoServlet() {
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
			
			String sendingfee = request.getParameter("sendingfee");
			String deliverycost = request.getParameter("deliverycost");
			String storetel = request.getParameter("storetel");
			String storestatus = request.getParameter("storestatus");
			
			
			if(sendingfee==null || sendingfee.trim().isEmpty())
			{	
				
				jsonobject = Responsebean.createderror("配送费为空，请重新输入");
			}
			else if(deliverycost == null || deliverycost.trim().isEmpty())
			{
				jsonobject = Responsebean.createderror("起送费为空，请重新输入");
			}
			else if(storetel == null || storetel.trim().isEmpty())
			{
				jsonobject = Responsebean.createderror("联系电话为空，请重新输入");
			}
			else {
				IStoreService ss = new StoreServiceImpl();
				Store store = new Store();
				Store storetemp = (Store) request.getSession().getAttribute("store");
				int storeid = storetemp.getStoreid();
				store.setStoreid(storeid);
				store.setDeliverycost(Integer.parseInt(deliverycost));
				store.setSendingfee(Integer.parseInt(sendingfee));
				store.setStoretel(storetel);
				store.setStoreStatus(Boolean.parseBoolean(storestatus));
				if(ss.updatastoreinfo(store))
				{
					System.out.println(store);
					jsonobject = Responsebean.createdsuccess(null, "修改成功");
				}
				else
				{
					jsonobject = Responsebean.createderror("修改失败");
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
