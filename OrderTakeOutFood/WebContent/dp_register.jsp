<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head lang="en">
		<meta charset="UTF-8">
		<title>店铺注册</title>
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
								<div class="menu-hd"><a href="dp_login.jsp" target="_top" style="font-size: 14px;color:#ddd">已有账号，登陆</a></div>
							</div>
							
							<div class="topMessage home">
								<div class="menu-hd"><a href="home.jsp" target="_top" style="font-size: 14px;color:#ddd">首页</a></div>
							</div>
							<div class="topMessage home">
								<div class="menu-hd"><a href="dp_register.jsp" target="_top" style="font-size: 14px;color:#ddd">开店申请</a></div>
							</div>
							
						</div>
						

						<div class="clear"></div>
		</div>
		
		<!-- 中间模块  -->
		<div  style="height:500px;width:auto" >
			<div class="res-main" style="background-color:white;height:550px">
				<div style="width:360px;height:430px;position: absolute;margin-top: 20px;margin-left: 120px;">
					<img src="image/logo.png">
				
				</div>
				<div class="login-box" style="height:500px">

						<div class="am-tabs" id="doc-my-tabs">
							<div style="font-weight:600;margin-left:auto;text-align:center">
								邮箱注册
							</div>

							<div class="am-tabs-bd" style="touch-action: pan-y; user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
								<div class="am-tab-panel am-active">
								<form id="register_form"  method="post">
										
							   <div class="user-email">
										<label for="email"><i class="am-icon-envelope-o"></i></label>
										<input type="email" id="storeloginname" name="storeloginname"    placeholder="请输入邮箱">
                				 </div>										
               					  <div class="user-pass">
								    <label for="password"><i class="am-icon-lock"></i></label>
								    <input type="password" name="storepwd"    placeholder="设置密码">
                 				</div>										
                					 <div class="user-pass">
								    <label for="passwordRepeat"><i class="am-icon-lock"></i></label>
								    <input type="password" name="rstorepwd"   placeholder="确认密码">
               					  </div>	
               					  <div class="user-name">
								    <label for="user"><i class="am-icon-user"></i></label>
								    <input type="text" name="storename"   placeholder="请输入店铺名字">
               					  </div>	
              					   <div class="user-name">
								    <label  ><img src="image/receive.png" style="margin-left:4px;height:30px;width:30px;float:left"></label>
								    <input type="text" name="storeaddr"   placeholder="请输入店铺地址">
                					 </div>	
                					 <div class="user-phone">
								    <label  ><i class="am-icon-mobile-phone am-icon-md"></i></label>
								    <input type="text" name="storetel"   placeholder="请输入店铺电话">
                 					</div>	
                 					</div>
										<div class="am-cf">
											<input type="submit" name="" onclick="register()" value="注册" class="am-btn am-btn-primary am-btn-sm am-fl">
										</div>

									</div>
                				 </form>
                 
								 <div class="login-links">
										<label for="reader-me">
											<input id="reader-me" type="checkbox"> 点击表示您同意商城《服务协议》
										</label>
										<span id="spinfo" style = "color:red"></span>
							  	

								
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
			
					 
	</body>
<script type="text/javascript">
function register(){
    //按钮单击时执行
     $.ajax({
           type: "POST",
           url: "/OrderTakeOutFood/StoreRegisterServlet",
           data: $("#register_form").serialize(),
           async: false,
           datatype:"json",
           success: function (data)  
           {  
         	console.log(data)
        	   if(data.code == 200)
        	   {
        		   alert(data.message);
        		  $(location).attr('href', '/OrderTakeOutFood/dp_login.jsp');
    					   
    	            
        	   }else{
        		   alert(data.message);
        	   }		   	            	
	          },
        	})
        
		return false;
     };
     function verify() {
         var state = false;
         $("#storeloginname").focus(function () {
             if (state == false) {
                 $(this).val('');
             }
         })
         $("#storeloginname").blur(function () {
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