<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link href="css/amazeui.css" rel="stylesheet" type="text/css" />
		<link href="css/admin.css" rel="stylesheet" type="text/css" />

		<link href="css/demo.css" rel="stylesheet" type="text/css" />
		<script src ="js/verify.js"></script>
		<link href="css/hmstyle.css" rel="stylesheet" type="text/css"/>
		<link href="css/skin.css" rel="stylesheet" type="text/css" />
		<script src="js/jquery.min.js"></script>
		<script src="js/amazeui.min.js"></script>
<title>我的订单</title>
<style> 
        .black_overlay{ 
            display: none; 
            position: absolute; 
            top: 0%; 
            left: 0%; 
            width: 100%; 
            height: 100%; 
            background-color: black; 
            z-index:1001; 
            -moz-opacity: 0.8; 
            opacity:.80; 
            filter: alpha(opacity=88); 
        } 
        .white_content { 
            display: none; 
            position: absolute; 
            top: 25%; 
            left: 25%; 
            width: 55%; 
            height: auto; 
            padding: 20px; 
            border: 10px solid orange; 
            background-color: white; 
            z-index:1002; 
            overflow: auto; 
        } 
    </style>
</head>
<body style="background-color:#F8F8F8;min-width:1500px;">
		<!--顶部导航条1 -->
		<div name="导航1" style="width:auto;margin: 0 auto;background-color: #333;margin-top: 0px;margin-right: auto;margin-bottom: 0px;margin-left: auto;height: 32px;line-height: 32px;min-width:1500px">
						<div class="message-l">
							<div class="topMessage" style="color:#ddd">
								<div class="menu-logo" >
									欢迎使用网上订餐网站！
								</div>
							</div>
						</div>
						<div class="message-r" >
							<div class="topMessage login" >
								<div class="menu-hd login" ><span id="username" target="_top" style="color:#ddd"> </span></div>
							</div>
							|
							<div class="topMessage register" style="color:#ddd">
								<div class="menu-hd register"><a onclick = "loginout()" target="_top" style="color:#ddd">注销</a></div>
							</div>
							<div class="topMessage home">
								<div class="menu-hd"><a href="#" target="_top" style="color:#ddd">开店申请</a></div>
							</div>
							<div class="topMessage my-shangcheng">
								<div class="menu-hd MyShangcheng"><a href="#" target="_top" style="color:#ddd"><i class="am-icon-user am-icon-fw"></i>个人中心</a></div>
							</div>
							<div class="topMessage mini-cart">
								<div class="menu-hd"><a id="mc-menu-hd" href="#" target="_top" style="color:#ddd"><i class="am-icon-shopping-cart  am-icon-fw"></i><span>购物车</span><strong id="J_MiniCartNum" class="h">0</strong></a></div>
							</div>
							<div class="topMessage favorite">
								<div class="menu-hd"><a href="#" target="_top" style="color:#ddd"><i class="am-icon-heart am-icon-fw"></i><span>收藏夹</span></a></div>
							
							</div>
						</div>
						

						<div class="clear"></div>
					</div>

		<!--顶部导航条2-->
		<div name="导航2" style="height:130px;width:auto;background:white">
					<!-- icon -->
					<div style="margin:0px 0px 0px 0px;;vertical-align:middle; height:100px;width:300px;float:left">
						<div  style="height:80px;width:180px;float:left ">
							<img src="image/logo.JPG">
						</div>
						<div   style="font-size:25px;margin-top:50px;font-weight:600;height:80px;vertical-align:middle; width:100px; float:left ">
							 网上订餐
						</div>
					</div>
						<!--悬浮搜索框-->
					<div style="float: right;  margin-top:40px;width: 290px;height: 38px; border: 1px solid #e5e5e5;">
						<input id="searchInput" style="    float: left;display: block;width: 225px;height: 38px; ;font-size: 14px;color: #535353;border: none;background: none;margin-left:5px " name="index_none_header_sysc" type="text" placeholder="搜索商家，美食" autocomplete="off">
						<input id="ai-topsearch" class="submit am-btn" style="height:38px;width:100px float: left " value="搜索" index="1" type="submit">
					</div>
					<!-- 导航条2.1 -->
					<div style="text-align:center; margin-left:auto; margin-right:auto; margin-top:5px;text-align:center;vertical-align:middle; height:100px;width:740px">
						<div >
						<a href="home.jsp" style="float:left;margin:40px;font-size:30px">首页</a>
						</div>
						<div >
						<a href="#" style="float:left;margin:40px;font-size:30px">我的订单</a>
						</div>
						<div >
						<a href="#" style="float:left;margin:40px;font-size:30px">入驻加盟</a>
						</div>
						<div >
						<a href="#" style="float:left;margin:40px;font-size:30px">社会责任</a>
						</div>
					</div>
					
						
				<div class="clear "></div>
				</div>
				
		<!-- 支付页面具体内容 -->
		<div style=" width:1200px;margin-bottom:20px;  height:1200px;   color: #444444; margin-top: 20px;margin-right: auto;margin-bottom: 0px;margin-left: auto">
			<!-- 左边导航框 -->
			<div style="background-color:white; float:left;width:300px;height:1000px">
				<!-- 我的账号 -->
				<div class="dd" style="margin-top:50px;font-size:30px;height:80px;border-bottom:1px solid #ebebeb">
					<a class="ddbtn"><img src="image/dh1.JPG"></a>
				</div>
				 
				<div class="zh" style="margin-top:20px;font-size:30px;height:80px;border-bottom:1px solid #ebebeb">
					<a class="zhbtn"><img src="image/zhanghao1.JPG"></a>
				</div>
				
			</div>
			
			 <!-- 弹出框 -->
       			 <div id="light" class="white_content" >
       			 	<a style="width:100%;font-size:25px;text-align:right;float:right; margin :5px;color:#ebebeb" href="javascript:void(0)" onclick="document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'">关闭</a>
       			 	<div style="height:100px;  width:780px;font-size:30px;text-align:center; margin :10px">
       			 	修改信息
       			 	</div> 
					<div  style=" text-align:center; margin :10px">
						<table style="margin-left:auto;margin-right:auto;   ">
						<tbody>
						<tr>
						<td style=" font-size:25px; margin :10px">
						用户ID：
						</td>
						<td id = "table_userid" style=" font-size:25px; margin :10px ;text-align:left">
						
						</td>
						</tr>
						<tr>
						<td style=" font-size:25px; margin :10px">
						用户名：
						</td>
						<td>
						<input id = "table_username" name="content" style=" font-size:25px; margin :10px" type="text" placeholder="输入修改内容">
						</td>
						</tr>
						<tr>
						<td style=" font-size:25px; margin :10px">
						我的密码：
						</td>
						<td>
						<input id = "table_userpwd" name="userpwd" style=" font-size:25px; margin :10px" type="text" placeholder="输入修改内容">
						</td>
						</tr>
						<tr>
						<td style=" font-size:25px; margin :10px">
						我的手机：
						</td>
						<td id = "table_usertel"style=" font-size:25px; margin :10px;text-align:left">
						
						</td>
						</tr>
						
						<tr>
						<td style=" font-size:25px; margin :10px">
						 地址：
						</td>
						<td>
						<input id = "table_addr" name="content" style=" font-size:25px; margin :10px" type="text" placeholder="输入地址">
						</td>
						</tr>
						<tr>
						
						<td colspan="2" style="height:100px;margin :20px">
						<a  onclick = "modifyinfo" class="am-btn am-btn-danger"  style=" font-size:25px; " >确认</a>
						</td>
						</tr>
						
						</tbody>
						</table>
					</div>
					
					
				</div>
				<div id="fade" class="black_overlay"></div>
			<!--  内容框 -->
			<div style="margin-left:10px;background-color:white; float:left;width:880px;height:1000px">
					<table style=" text-align:left;   color: #313131; height:500px;width:500px;font-size:30px ">
					<tr >
					<td>
						<div style=" text-align:left;width:120px;   color: #313131; font-size:25px;margin:20px;margin-top:60px;;">
						用户：
						</div>
					</td>
					<td>
						<div  id="userloginname" style=" text-align:left;   color: #313131; font-size:25px">
						
						</div>
					</td>
					
					</tr>
					<tr >
					<td>
						<div style=" text-align:left;   color: #313131; font-size:25px;margin:20px;margin-top:60px;;">
						用户名：
						</div>
					</td>
					<td>
						<div  id="personalusername"   style=" text-align:left;   color: #313131; font-size:25px">
						
						</div>
					</td>
					<td>
						<div class="id" style="      color: #313131; font-size:25px">
						</div>
					</td>
					</tr>
					<tr >
					<td>
						<div style=" text-align:left;   color: #313131; font-size:25px;margin:20px;margin-top:60px;;">
						我的密码：
						</div>
					</td>
					<td>
						<div  style=" text-align:left;   color: #313131; font-size:25px">
						***************
						</div>
					</td>
					<td>
						<div class="id" style="      color: #313131; font-size:25px">
						</div>
					</td>
					</tr>
					<tr >
					<td>
						<div style=" text-align:left;   color: #313131; font-size:25px;margin:20px;margin-top:60px;;">
						我的手机：
						</div>
					</td>
					<td>
						<div  id = "usertel" style=" text-align:left;   color: #313131; font-size:25px">
						
						</div>
					</td>
					</tr>
					<tr>
						<td colspan="2" style="height:100px;margin :20px;float:right">
						<a class="am-btn am-btn-danger" href = "javascript:void(0)" onclick = "document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'"  style=" font-size:25px; " >修改</a>
						</td>
						</tr>
					</table>
			</div>
		</div>
		<!-- 脚注 -->
		<div class="footer " align="center">
						<div class="footer-hd " >
							<p>
								<a href="# "> </a>
								<b>|</b>
								<a href="home.jsp">商城首页</a>
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
		
<script>
		$(".ddbtn").click(function(){
			window.location.href="ddetail.jsp";
		})

</script>
<script>
var user = sessionStorage.getItem('user');
userEntity = JSON.parse(user);
var username = userEntity.username
$(document).ready(function(){
	DisplayUsername();
	$.ajax({
		url:"/OrderTakeOutFood/FindUserByIDServlet",
		datatype:"json",
		success:function(data){
			if(data.code == 200)
			{
				var usertemp = data.data.user;
				var username = usertemp.username ;
				var usertel = usertemp.usertel ;
				var userpersonalname = usertemp.personalName;
				$("#personalusername").html(userpersonalname);
				console.log(userpersonalname)
				$("#usertel").html(usertel);
				$("#userloginname").html(username);
			}
			else{
				alert(data.message);
			}
		}
		
	})
})
function DisplayUsername(){
	var userJsonStr = sessionStorage.getItem('user');
	userEntity = JSON.parse(userJsonStr);
	var username = userEntity.username ;
	$("#username").html(username);
};
function loginout(){
	$.ajax({
		type:"get",
		url:"CustomerLoginOutServlet",
		async:false,
		datatype:"json",
		success: function (data)  
        {  
      	
     	   if(data.code == 200)
     	   {
     		  sessionStorage.removeItem('user');
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
};
</script>
</body>
</html>