<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册页面</title>
<style>
body
{
	background-color:#b0c4de;
}
</style>
</head>
<body>
<form action="registerServlet"method="post" style="padding-top:-700px;" align="center">  
       输入用户名:<input name="name" type="text"><br><br>  
       输入密码:<input name="pwd" type="password"><br><br>  
       选择年龄:<input type="text"name="age"><br><br>  
       选择权限:
       <select name="power">  
           <option value="1">管理员</option>  
           <option value="0" selected>普通用户</option>   
        </select>
        <br><br>
   
 <input type="reset"value="重置"><input type="submit"value="注册">  
   </form>  
</body>
</html>