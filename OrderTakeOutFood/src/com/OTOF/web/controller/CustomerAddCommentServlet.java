package com.OTOF.web.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.OTOF.bean.Responsebean;
import com.OTOF.domain.Store;
import com.OTOF.domain.User;
import com.OTOF.domain.form.CategoryForm;
import com.OTOF.domain.form.CommentForm;
import com.OTOF.service.ICategoryService;
import com.OTOF.service.ICommentService;
import com.OTOF.service.impl.CategoryServiceImpl;
import com.OTOF.service.impl.CommentServiceImpl;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * Servlet implementation class CustomerAddCommentServlet
 */
@WebServlet("/CustomerAddCommentServlet")
public class CustomerAddCommentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerAddCommentServlet() {
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
			User user = (User) request.getSession().getAttribute("user");
			if(user != null)
			{
				int userid = user.getUserID();
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
				String commentcontent = request.getParameter("commentcontent");
				String storeid = request.getParameter("storeid");
				String publishtime = request.getParameter("publishtime");
				String commentstatus = request.getParameter("commentstatus");
				String ordernumber = request.getParameter("ordernumber");
				System.out.println(publishtime);
				ICommentService cs = new CommentServiceImpl();
				CommentForm comment = new CommentForm();
				comment.setUserid(userid);
				comment.setCommentcontent(commentcontent);
				comment.setCommentstatus(Integer.parseInt(commentstatus));
				comment.setPublishtime(sdf.parse(publishtime));
				comment.setStoreid(Integer.parseInt(storeid));
				comment.setOrdernumber(ordernumber);
				if (!cs.addcomment(comment))
				{
					 jsonobject = Responsebean.createderror("添加评论失败");
				}else
				{
					 
					 jsonobject = Responsebean.createdsuccess(null, "添加评论成功");
				}
		
			}
			else 
			{
				jsonobject = Responsebean.createderror("用户处于未登录状态");
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
