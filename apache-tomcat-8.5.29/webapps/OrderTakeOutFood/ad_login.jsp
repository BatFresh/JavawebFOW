<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head lang="en">
		<meta charset="UTF-8">
		<title>管理员登录</title>
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

	<body style="background-color:#F8F8F8;min-width:1500px;">

		 
			<!--顶部导航条 -->
		<div name="导航1" style="width:auto;margin: 0 auto;background-color: #333;margin-top: 0px;margin-right: auto;margin-bottom: 0px;margin-left: auto;height: 32px;line-height: 32px;min-width:1500px">
						<div class="message-l">
							<div class="topMessage" style="color:#ddd">
								<div class="menu-logo"     style="font-size: 14px;">
									 运营商登陆界面
								</div>
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

							<h3 class="title">运营商登录</h3>

							<div class="clear"></div>
						
						<div class="login-form">
						  <form>
							   <div class="user-name">
								    <label for="user"><i class="am-icon-user"></i></label>
								    <input type="text" name="login_dp" id="login_dp" placeholder="请输入ID" value="admin">
                 </div>
                 <div class="user-pass">
								    <label for="password"><i class="am-icon-lock"></i></label>
								    <input type="password" name="login_password" id="password" placeholder="请输入密码" value="admin">
                 </div>
              </form>
           </div>
            
            <div class="login-links">
                <label for="remember-me"><input id="remember-me" type="checkbox">记住密码</label>
								<a href="#" class="am-fr">忘记密码</a>
								<br />
            </div>
								<div class="am-cf">
									<input type="submit" name="" value="登 录" class="am-btn am-btn-primary am-btn-sm" onclick="ad_login.jsp">
								</div>
						

				</div>
			</div>
		</div>


					 
	</body>

</html>