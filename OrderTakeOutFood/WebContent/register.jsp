<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head lang="en">
		<meta charset="UTF-8">
		<title>注册</title>
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
		<script src="js/jquery.min.js"></script>
		<script src="js/amazeui.min.js"></script>
		<link rel="stylesheet" href="css/amazeui.min.css" />
		<link href="css/dlstyle.css" rel="stylesheet" type="text/css">
		<script src="js/jquery.min.js"></script>
		<script src="js/amazeui.min.js"></script>

	</head>

	<body style="background-color:#F8F8F8;min-width:1500px;">
		<!--顶部导航条 -->
		<div name="导航1" style="width:auto;margin: 0 auto;background-color: #333;margin-top: 0px;margin-right: auto;margin-bottom: 0px;margin-left: auto;height: 32px;line-height: 32px;min-width:1500px">
						<div class="message-l">
							<div class="topMessage" style="color:#ddd">
								<div class="menu-logo" style="font-size: 14px">
									欢迎使用网上订餐网站！
								</div>
							</div>
						</div>
						<div class="message-r" >
							<div class="topMessage home">
								<div class="menu-hd"><a href="login.jsp" target="_top" style="font-size: 14px;color:#ddd">已有账号，登陆</a></div>
							</div>
							
							<div class="topMessage home">
								<div class="menu-hd"><a href="home.jsp" target="_top" style="font-size: 14px;color:#ddd">首页</a></div>
							</div>
							<div class="topMessage home">
								<div class="menu-hd"><a href="#" target="_top" style="font-size: 14px;color:#ddd">开店申请</a></div>
							</div>
							
						</div>
						

						<div class="clear"></div>
		</div>
		
		<!-- 中间模块  -->
		<div  style="height:500px;width:auto" >
			<div class="res-main" style="background-color:white" >
				<div   style="width:360px;height:430px;position: absolute;margin-top: 20px;margin-left: 120px;">
					<img src="image/logo.png">
				
				</div>
				<div class="login-box">

						<div class="am-tabs" id="doc-my-tabs">
							<ul class="am-tabs-nav am-nav am-nav-tabs am-nav-justify">
								<li class="am-active"><a href="">邮箱注册</a></li>
								<li><a href="">手机号注册</a></li>
							</ul>

							<div class="am-tabs-bd">
								<div class="am-tab-panel am-active">
									<form method="post" id = "register_form">
										
							   <div class="user-email">
										<label for="email"><i class="am-icon-envelope-o"></i></label>
										<input type="email" name="username"  placeholder="请输入用户名" onchage="verify()">
                 </div>										
                 <div class="user-pass">
								    <label for="password"><i class="am-icon-lock"></i></label>
								    <input type="password" name="userpwd"  placeholder="设置密码">
                 </div>										
                 <div class="user-pass">
								    <label for="passwordRepeat"><i class="am-icon-lock"></i></label>
								    <input type="password" name="ruserpwd"  placeholder="确认密码">
                 </div>	
                 
                 </form>
                 
								 <div class="login-links">
										<label for="reader-me">
											<input id="reader-me" type="checkbox"> 点击表示您同意商城《服务协议》
										</label>
							  	</div>
										<div class="am-cf">
											<input type="submit" name="" value="注册" class="am-btn am-btn-primary am-btn-sm am-fl" onclick="register()">
										</div>
									<span id="spinfo" style="color:red"></span>
								</div>

								<div class="am-tab-panel">
									<form method="post">
                 <div class="user-phone">
								    <label for="phone"><i class="am-icon-mobile-phone am-icon-md"></i></label>
								    <input type="tel" name="" id="phone" placeholder="请输入手机号">
                 </div>																			
										<div class="verification">
											<label for="code"><i class="am-icon-code-fork"></i></label>
											<input type="tel" name="" id="code" placeholder="请输入验证码">
											<a class="btn" href="javascript:void(0);" onclick="sendMobileCode();" id="sendMobileCode">
												<span id="dyMobileButton" style="font-size:15px">获取</span></a>
										</div>
                 <div class="user-pass">
								    <label for="password"><i class="am-icon-lock"></i></label>
								    <input type="password" name="" id="password" placeholder="设置密码">
                 </div>										
                 <div class="user-pass">
								    <label for="passwordRepeat"><i class="am-icon-lock"></i></label>
								    <input type="password" name="" id="passwordRepeat" placeholder="确认密码">
                 </div>	
									</form>
								 <div class="login-links">
										<label for="reader-me">
											<input id="reader-me" type="checkbox"> 点击表示您同意商城《服务协议》
										</label>
							  	</div>
										<div class="am-cf">
											<input type="submit" name="" value="注册" class="am-btn am-btn-primary am-btn-sm am-fl">
										</div>
								
									<hr>
								</div>
		</div>

								<script>
									$(function() {
									    $('#doc-my-tabs').tabs();
									  })
								</script>

							</div>
						</div>

				</div>
			</div>
			
					<div class="footer ">
						<div class="footer-hd ">
							<p>
								<b>|</b>
								<a href="home.jsp ">首页</a>
								<b>|</b>
								<a href="# ">支付宝</a>
								<b>|</b>
								<a href="# ">物流</a>
							</p>
						</div>
						<div class="footer-bd ">
							<p>
								<a href="# ">合作伙伴</a>
								<a href="# ">联系我们</a>
								<a href="# ">网站地图</a>
							</p>
						</div>
					</div>
	<script>
	function register(){
	       //按钮单击时执行
	        $.ajax({
	              type: "POST",
	              url: "/OrderTakeOutFood/CustomerRegisterServlet",
	              data: $("#register_form").serialize(),
	              async: false,
	              datatype:"json",
	              
	              success: function (data)  
	              {  
	            	
	           	   if(data.code == 200)
	           	   {
	           		$(location).attr('href', '/OrderTakeOutFood/login.jsp');
	           	   	alert(data.message)
	           	   		
	           	   }else{
	           		   alert(data.message);
	           	   }		   	            	
	  	          },
	              error: function()
	              {
	            	  console.log("提交错误")
	              }
	           	})
	           
			return false;
	        };
	function verify() {
	           var state = false;
	           $("#username").focus(function () {
	               if (state == false) {
	                   $(this).val('');
	               }
	           })
	           $("#username").blur(function () {
	               if ($(this).val() == '') {
	                   $("#spinfo").text("邮箱不能为空");
	                   $(this).focus();
	               }
	               else {
	                   if (/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/.test($(this).val()) == false) {
	                       $("#spinfo").text("邮箱格式不正确，请重新填写");
	                       $(this).focus();
	                   }
	                   else {
	                       $("#spinfo").text('');
	                       state=true;
	                   }
	               }
	           })
	       };	

			
			</script>
	</body>

</html>