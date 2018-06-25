<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link href="css/amazeui.css" rel="stylesheet" type="text/css" />
		<link href="css/admin.css" rel="stylesheet" type="text/css" />

		<link href="css/demo.css" rel="stylesheet" type="text/css" />

		<link href="css/hmstyle.css" rel="stylesheet" type="text/css"/>
		<link href="css/skin.css" rel="stylesheet" type="text/css" />
		<script src="js/jquery.min.js"></script>
		<script src="js/amazeui.min.js"></script>
<title>运营商管理</title>
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
								<div class="menu-hd login" ><a href="home.jsp" target="_top" style="color:#ddd">回到首页 </a></div>
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
					
					<!-- 导航条2.1 -->
					<div style="text-align:center; margin-left:auto; margin-right:auto; margin-top:5px;text-align:center;vertical-align:middle; height:100px;width:740px">
						
						<a href=" #" style=" margin:40px;font-size:60px;font-weight:600 ;vertical-align:middle">管理员管理界面</a>
						
						
					</div>
					
						
				<div class="clear "></div>
				</div>
				
		<!-- 店铺商品管理具体内容 -->
		<div style=" width:1200px;margin-bottom:20px;  height:1200px;   color: #444444; margin-top: 20px;margin-right: auto;margin-bottom: 0px;margin-left: auto">
		 
			
			<!--  内容框 -->
			<div style=" background-color:white; float:left;width:100%;height:1000px">
				<div class="introduce">
					<div class="introduceMain">
						<div class="am-tabs" data-am-tabs>
							<!-- 页内菜单栏 -->
							<ul class="am-avg-sm-3 am-tabs-nav am-nav am-nav-tabs">
								<li class="am-active" style="height:auto">
									<a href="#">
									<span class="index-needs-dt-txt" style="font-size:25px">用户信息管理</span></a>

								</li>
								<li style="height:auto;width:25%">
									<a href="#">
										<span class="index-needs-dt-txt" style="font-size:25px">店铺信息管理</span></a>

								</li>
								
							</ul>

							<div class="am-tabs-bd">
							<!--  用户信息 -->
							<div class="am-tab-panel am-fade am-in am-active" >
								<!-- 搜索框-->
								<div style="   width: 90%;height: 40px; border: 1px solid #e5e5e5;margin-left:50px">
								<input id="searchInput" style="  font-size:20px;  float: left;display:inline;width:80%;height: 38px; ;font-size: 14px;color: #535353;border: none;background: none;margin-left:5px " name="index_none_header_sysc" type="text" placeholder="搜索用户" autocomplete="off">
								<input id="ai-topsearch" class="submit am-btn" style="height:38px;width:100px;display:inline " value="搜索" index="1" type="submit">
								</div>			 	
								<!-- 用户具体信息 -->
								<div id="userl" >
									
								</div>
								
							</div>
							
							
							<!-- 店铺管理 -->
							<div class="am-tab-panel am-fade">
								<!-- 搜索框-->
								<div style="   width: 90%;height: 40px; border: 1px solid #e5e5e5;margin-left:50px">
								<input id="searchInput" style="  font-size:20px;  float: left;display:inline;width:80%;height: 38px; ;font-size: 14px;color: #535353;border: none;background: none;margin-left:5px " name="index_none_header_sysc" type="text" placeholder="搜索店铺" autocomplete="off">
								<input id="ai-topsearch" class="submit am-btn" style="height:38px;width:100px;display:inline " value="搜索" index="1" type="submit">
								</div>			 	
								<!-- 用户具体信息 -->
								<div id="storel"  >
								</div>
								
								
							</div>
							
							 
							
							</div>
							
							</div>

							</div>
	
					</div>
				</div>
				</div>
		</div>
		<!-- 脚注 -->
		<div class="footer " align="center">
						<div class="footer-hd " >
							
						</div>
						<div class="footer-bd " >
							
						</div>
			</div>
		
<script>
$(document).ready(function() {
	   $.ajax({
			url:"/OrderTakeOutFood/CarrieroperatorDisyplatAllUser",
			type: "POST",
	        async: false,
			datatype:'json',
			success:function(res){
				var list = res.data.userlist;
				console.log(res.data);
				for(var i = 0;i<list.length;i++){
					$("#userl").append('<div style="padding:10px;margin:20px;width:350px;float:left;vertical-align:middle;height:auto;float:left;border: 1px dashed #e5e5e5;">'
						+'<div style="text-align:left;  font-size:20px;margin-top:10px ">用户密码:'+list[i].userpwd+'</div>'
						+'<div style="text-align:left;  font-size:20px;margin-top:10px ">用户个人姓名：'+list[i].personalName+'</div>'
						+'<div style="text-align:left;  font-size:20px;margin-top:10px ">用户电话：'+list[i].usertel+'</div>'
						+'<div style="text-align:left;  font-size:20px;margin-top:10px ">用户ID：'+list[i].userID+'</div>'
						+'<div style="text-align:left;  font-size:20px;margin-top:10px ">用户地址：'+list[i].useraddr+'</div>'
						+'<div style="text-align:left;  font-size:20px;margin-top:10px ">用户登陆姓名：'+list[i].username+'</div>'
						+'<div style="font-size:20px;   font-family:黑体 ;margin-top:10px">操作：'
						+'<a class="am-btn am-btn-danger" href="javascript:void(0)" onclick="alert(\'未开通\')" style="font-size:15px;font-weight: bold;  font-family:黑体;margin:10px"> 修改</a>'
						+'<a class="am-btn am-btn-danger" href="javascript:void(0)" onclick="alert(\'未开通\')" style="font-size:15px;font-weight: bold;  font-family:黑体;margin-left:10px"> 删除</a></div>');
				//console.log(list[i]);
				}
			}
	   })
	   $.ajax({
			url:"/OrderTakeOutFood/CarrieroperatorDisplayAllStore",
			type: "POST",
	        async: false,
			datatype:'json',
			success:function(res){
				var list = res.data.storelist;
				console.log(res.data);
				for(var i = 0;i<list.length;i++){
					$("#storel").append('<div style="padding:10px;margin:20px;width:350px;float:left;vertical-align:middle;height:auto;float:left;border: 1px dashed #e5e5e5;">'
						+'<div style="text-align:left;  font-size:20px;margin-top:10px ">店铺电话:'+list[i].storetel+'</div>'
						+'<div style="text-align:left;  font-size:20px;margin-top:10px ">店铺图片：'+list[i].storePicture+'</div>'
						+'<div style="text-align:left;  font-size:20px;margin-top:10px ">起送费：'+list[i].sendingfee+'</div>'
						+'<div style="text-align:left;  font-size:20px;margin-top:10px ">配送时间：'+list[i].deliverytime+'</div>'
						+'<div style="text-align:left;  font-size:20px;margin-top:10px ">店铺密码：'+list[i].storepwd+'</div>'
						+'<div style="text-align:left;  font-size:20px;margin-top:10px ">店铺名称：'+list[i].rank+'</div>'
						+'<div style="text-align:left;  font-size:20px;margin-top:10px ">店铺ID：'+list[i].storeid+'</div>'
						+'<div style="text-align:left;  font-size:20px;margin-top:10px ">店铺登陆名称：'+list[i].storeloginname+'</div>'
						+'<div style="text-align:left;  font-size:20px;margin-top:10px ">店铺名称：'+list[i].storename+'</div>'
						+'<div style="text-align:left;  font-size:20px;margin-top:10px ">店铺配送费：'+list[i].deliverycost+'</div>'
						+'<div style="text-align:left;  font-size:20px;margin-top:10px ">店铺地址：'+list[i].storeaddr+'</div>'
						+'<div style="text-align:left;  font-size:20px;margin-top:10px ">店铺是否营业：'+list[i].storeStatus+'</div>'
						+'操作：<a class="am-btn am-btn-danger" href="javascript:void(0)" onclick="alert(\'未开通\')" style="font-size:15px;font-weight: bold;  font-family:黑体;margin:10px"> 修改</a>'
						+'<a class="am-btn am-btn-danger" href="javascript:void(0)" onclick="alert(\'未开通\')" style="font-size:15px;font-weight: bold;  font-family:黑体;margin-left:10px"> 删除</a></div>');
				//console.log(list[i]);
				}
			}
	   })
	   
	   });
	
</script>
		
</body>
</html>