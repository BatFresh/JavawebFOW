<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="javax.servlet.*"%>
<!DOCTYPE html>
<html>

	<head lang="en">
		<meta charset="UTF-8">
		<title>店铺登录</title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<meta name="format-detection" content="telephone=no">
		<meta name="renderer" content="webkit">
		<meta http-equiv="Cache-Control" content="no-siteapp" />
		<link href="css/amazeui.css" rel="stylesheet" type="text/css" />
		<link href="css/admin.css" rel="stylesheet" type="text/css" />

		<link href="css/demo.css" rel="stylesheet" type="text/css" />

		<link href="css/hmstyle.css" rel="stylesheet" type="text/css"/>
		<link href="css/skin.css" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="css/amazeui.css" />
		<link href="css/dlstyle.css" rel="stylesheet" type="text/css">
	</head>
	<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
	
	<body style="background-color:#F8F8F8;min-width:1500px;">

		 
		<!--顶部导航条 -->
		<div name="导航1" style="width:auto;margin: 0 auto;background-color: #333;margin-top: 0px;margin-right: auto;margin-bottom: 0px;margin-left: auto;height: 32px;line-height: 32px;min-width:1500px">
						<div class="message-l">
							<div class="topMessage" style="color:#ddd">
								<div class="menu-logo"     style="font-size: 14px;">
									欢迎使用网上订餐网站！
								</div>
							</div>
						</div>
						<div class="message-r" >
							<div class="topMessage home">
								<div class="menu-hd"><a href="home.jsp" target="_top" style="font-size: 14px;color:#ddd">首页</a></div>
							</div>
							<div class="topMessage home">
								<div class="menu-hd"><a href="#" target="_top" style="font-size: 14px;color:#ddd">注册</a></div>
							</div>
							
						</div>
						

						<div class="clear"></div>
		</div>
		<!-- 中间模块 -->
		<div style="height:500px;width:auto" >
			<div class="login-main" style="background-color:white">
				<div   style="width:360px;height:430px;position: absolute;margin-top: 20px;margin-left: 120px;">
					<img src="image/logo.png">
				
				</div>
				
				<div class="login-box">

							<h3 class="title">店铺登录</h3>

							<div class="clear"></div>
						
						<div class="login-form">
				<form id = "maniForm" enctype="multipart/form-data" method = "POST">
				 <div class="user-name">
								    <label for="user"><i class="am-icon-user"></i></label>
								    <input type="text"   name="Storeloginname" id="Storename" placeholder="请输入用户名"  >
                 </div>
                 
                 <div class="user-pass">
								    <label for="password"><i class="am-icon-lock"></i></label>
								    <input type="password" name="Storepwd" id="Storepwd" placeholder="请输入密码"  >
                 </div>
                 </form>
                 <div class="am-cf">
									<input  type="submit" name="" value="登 录" class="am-btn am-btn-primary am-btn-sm" id ="login">
				</div>
                 
              
              <div class="login-links">
              	 <label for="remember-me"><input id="remember-me" type="checkbox">记住密码</label>
								<a href="#" class="am-fr">忘记密码</a>
								<a href="dp_register.jsp" class="zcnext am-fr am-btn-default">注册</a>
								<br />
            	</div>
           </div>
            
            
								
						

				</div>
			</div>
		</div>


					 
	</body>
<script>
	 $(function(){
	        $("#login").click(function(){
	              var store=$("#Storename").val();
	              console.log(store);
	         $.ajax({
	               type: "POST",
	               url: "/OrderTakeOutFood/StoreLoginServlet",
	               data: $("#maniForm").serialize(),
	               async: false,
				   datatype:"json",
				   success:function(data)
				   {
					   alert(data.message);
					    
					   if(data.message=="登录成功"){
						 sessionStorage.setItem('store',store)
						 window.location.href='dp_food.jsp?sname='+store;
					   }
				   }
	            }).responseText;
	            
				return false;
	         });
	    });
</script>
</html>