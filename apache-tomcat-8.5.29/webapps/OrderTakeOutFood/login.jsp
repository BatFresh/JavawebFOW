<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head lang="en">
		<meta charset="UTF-8">
		<title>登录</title>
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
		<script src="http://code.jquery.com/jquery-latest.js"></script>
		<script src="http://code.jquery.com/jquery-latest.js"></script>
	</head>

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
								<div class="menu-hd"><a href="dp_register.jsp" target="_top" style="font-size: 14px;color:#ddd">开店申请</a></div>
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

							<h3 class="title">登录</h3>

							<div class="clear"></div>
						
						<div class="login-form">
						  <form id = login_form>
							   <div class="user-name">
								    <label for="user"><i class="am-icon-user"></i></label>
								    <input type="text" name="username" id="username" placeholder="邮箱/手机号" onchange = "verify()">
                 					
                 </div>
                 <div class="user-pass">
								    <label for="password"><i class="am-icon-lock"></i></label>
								    <input type="password" name="userpwd" id="userpwd" placeholder="请输入密码">
                 </div>
              </form>
           </div>
            
            <div class="login-links">
                <label for="remember-me"><input id="remember-me" type="checkbox">记住密码</label>
								<a href="#" class="am-fr">忘记密码</a>
								<a href="register.jsp" class="zcnext am-fr am-btn-default">注册</a>
								<br />
            </div>
								<div class="am-cf">
									<input type="submit" name="" value="登 录" class="am-btn am-btn-primary am-btn-sm" onclick = "login()">
								</div>
								<span id="spinfo" style = "color:red"></span>
						

				</div>
			</div>
		</div>


					<div class="footer " align="center">
						<div class="footer-hd " >
							<p>
								<a href="# "> </a>
								<b>|</b>
								<a href="home.jsp">首页</a>
								<b>|</b>
								<a href="# ">支付宝</a>
								<b>|</b>
								<a href="# ">物流</a>
							</p>
						</div>
						<div class="footer-bd " >
							<p>
								<a href="# ">关于我们</a>
								<a href="# ">合作伙伴</a>
								<a href="# ">联系我们</a>
								<a href="# ">网站地图</a>
				
							</p>
						</div>
					</div>
	</body>
<script>
		
function login(){
       //按钮单击时执行
        $.ajax({
              type: "POST",
              url: "/OrderTakeOutFood/CustromerLoginServlet",
              data: $("#login_form").serialize(),
              async: false,
              datatype:"json",
              
              success: function (data)  
              {  
            	
           	   if(data.code == 200)
           	   {
           		var user = data.data.user;
         		sessionStorage.setItem("user", JSON.stringify(user));
           	   $(location).attr('href', '/OrderTakeOutFood/home.jsp');
           	   }else{
           		   alert(data.message);
           	   }		   	            	
  	          },
              error: function()
              {
            	  console.log(dasdas)
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
</html>