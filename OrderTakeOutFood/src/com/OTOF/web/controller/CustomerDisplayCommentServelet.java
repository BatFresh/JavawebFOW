package com.OTOF.web.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.OTOF.bean.Responsebean;
import com.OTOF.domain.User;
import com.OTOF.domain.form.CommentForm;
import com.OTOF.service.ICommentService;
import com.OTOF.service.impl.CommentServiceImpl;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * Servlet implementation class CustomerDisplayCommentServelet
 */
@WebServlet("/CustomerDisplayCommentServelet")
public class CustomerDisplayCommentServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerDisplayCommentServelet() {
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
				String storeid = request.getParameter("storeid");

	
				ICommentService cs = new CommentServiceImpl();
				CommentForm comment = new CommentForm();
				comment.setStoreid(Integer.parseInt(storeid));
				comment.setUserid(userid);
				List commentlist = cs.findcomment(comment);
				if (commentlist == null )
				{
					 jsonobject = Responsebean.createderror("查看评论失败");
				}else
				{
					 Map hs = new HashMap();
					 hs.put("commentlist",commentlist);
					 jsonobject = Responsebean.createdsuccess(hs, "查看评论成功");
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
