<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录注册页面</title>
<style>
body
{
	background-color:#b0c4de;
}
</style>
</head>

<body>
<form action="loginServlet"  method="post"  style="padding-top:-700px;" align="center">  
        用户名：<input type="text" name="name"value=""><br><br>  
        密码：  <input type="password" name="pwd"value=""><br><br>  
                    <input type="submit"value="登录"name="login"><input type="reset"value="重置"><br>  
     </form>  
     <form action="register.jsp" align="center">  
        <input type="submit"value="新用户注册" >  
         </form>  
</body>
</html>