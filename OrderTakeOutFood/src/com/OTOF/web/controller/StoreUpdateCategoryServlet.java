package com.OTOF.web.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.OTOF.bean.Responsebean;
import com.OTOF.domain.Store;
import com.OTOF.domain.form.CategoryForm;
import com.OTOF.service.ICategoryService;
import com.OTOF.service.impl.CategoryServiceImpl;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * Servlet implementation class StoreUpdateCategoryServlet
 */
@WebServlet("/StoreUpdateCategoryServlet")
public class StoreUpdateCategoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StoreUpdateCategoryServlet() {
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
			JSONArray jsonarray = null;
			Store store = (Store) request.getSession().getAttribute("store");
			if(store != null)
			{
				int storeid = store.getStoreid();
				String categoryname = request.getParameter("categoryname");
				String categoryid = request.getParameter("categoryid");
				ICategoryService cs = new CategoryServiceImpl();
				CategoryForm category = new CategoryForm();
				category.setCategoryname(categoryname);
				category.setCategoryID(Integer.parseInt(categoryid));;
				if (!cs.updatecategory(category))
				{
					 jsonobject = Responsebean.createderror("�޸ķ���ʧ��");
				}else
				{
					 
					 jsonobject = Responsebean.createdsuccess(null, "�޸ķ���ɹ�");
				}
		
			}
			else 
			{
				jsonobject = Responsebean.createderror("�û�����δ��¼״̬");
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
