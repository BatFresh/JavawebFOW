<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>  
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  

%>  
  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>  
  <head>  
    <title>跳转页面</title>  
    <style>
body
{
	background-color:#b0c4de;
}
</style>
  </head>  
  <body>  
  <%
  String name = (String) session.getAttribute("loginUserName");
  if (name == null)
  {
	out.println("<h3>请先登录再访问<a href = \"login.jsp\">登录界面</a></h3>");
	}
  
  else
  {%>
  
	 ${xiaoxi} <br> <a href="SearchAll">查看所有用户</a>
  <%
  }
  
  %>
              
  </body>  
</html>  