<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html  >
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
<title>店铺商品管理</title>
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
								<div class="menu-hd login" ><p   target="_top" style="color:#ddd" class="sname"></p></div>
							</div>
							<div class="topMessage login" >
								<div class="menu-hd login" ><p id="storename"  target="_top" style="color:#ddd"></p></div>
							</div>
							<div class="topMessage login" >
								<div class="menu-hd login" ><a   target="_top" style="color:#ddd" onclick="out()">退出登陆 </a></div>
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
						
						<a href=" #" style=" margin:40px;font-size:60px;font-weight:600 ;vertical-align:middle">店铺管理界面</a>
						
						
					</div>
					
						
				<div class="clear "></div>
				</div>
				
		<!-- 店铺商品管理具体内容 -->
		<div style=" width:1200px;margin-bottom:20px;  height:1500px;   color: #444444; margin-top: 20px;margin-right: auto;margin-bottom: 0px;margin-left: auto">
			<!-- 左边导航框 -->
			<div style="background-color:white; float:left;width:300px;height:1000px">
				<!-- 商品管理 -->
				<div class="dd" style="background-color:#ebebeb;margin-top:50px;font-size:30px;height:80px;border-bottom: 2px solid #F03726;">
					<a href="" style=" font-weight:600;color: #E4393C;margin-top:20px;font-size:25px;">商品管理</a>
				</div>
				 
				<div class="zh" style="margin-top:20px;font-size:30px;height:80px; ">
					<a href="dp_order.jsp"  style=" margin-top:20px;font-size:25px;">订单管理</a>
				</div>
				<div class="zh" style=" margin-top:20px;height:80px">
					<a href="dp_my.jsp"  style=" margin-top:20px;font-size:25px;">店铺信息管理</a>
				</div>
			</div>
		 
			 <!-- 商品修改弹出框1 -->
       		<div id="light1" class="white_content" >
       			 	<a style="width:100%;font-size:25px;text-align:right;float:right; margin :5px;color:#ebebeb" href="javascript:void(0)" onclick="document.getElementById('light1').style.display='none';document.getElementById('fade1').style.display='none';location.reload();">关闭</a>
       			 	<div style="font-weight:600;height:100px;  width:780px;font-size:30px;text-align:center; margin :10px">
       			 	修改信息
       			 	</div> 
					<div  style=" text-align:center; margin :10px">
						<form id="alertform">
						<table style="margin-left:auto;margin-right:auto;   ">
						<tbody>
						<tr  style=" font-size:25px; margin :10px">
						<td style=" font-size:25px; margin :10px">
						id:
						</td>
						<td>
						<input id="foodid" name="foodid" style=" font-size:25px; margin :10px" type="text"  >
						
						</td>
						</tr>
						<tr>
						<td style=" font-size:25px; margin :10px">
						食物名字：
						</td>
						<td style=" font-size:25px; margin :10px ;text-align:left">
						<input name="foodname"   style=" font-size:25px; margin :10px" type="text" placeholder="输入修改内容">
						</td>
						</tr>
						<tr>
						<td style=" font-size:25px; margin :10px">
						食物类别：
						</td>
						<td style=" font-size:25px; margin :10px"> 
						<select name="categoryid" style=" font-size:25px; margin :10px;width:100%" name="city" style="width:120px;" >
						<option   value=3 >早餐</option>
						<option  value=2>午餐</option>
						<option  value=1>晚餐</option>
						</select>
						</td>
						</tr>
						<tr>
						<td style=" font-size:25px; margin :10px">
						食物价格：
						</td>
						<td>
						<input name="foodprice" name="userpwd" style=" font-size:25px; margin :10px" type="text" placeholder="输入修改后的金额">
						</td>
						</tr>
						<tr>
						<td style=" font-size:25px; margin :10px">
						食物上下架：
						</td>
						<td style=" font-size:25px; margin :10px;text-align:left">
						<a id="onload" name="categoryid"" class="am-btn am-btn-danger"  style="font-size:15px;font-weight: bold;  font-family:黑体; onclick=">false</a>
						</td>
						</tr>
						<tr>
						<td style=" font-size:25px; margin :10px">
						食物图片：
						</td>
						<td style=" font-size:25px; margin :10px;text-align:left">
							<div style="height:auto;width:300px;border: 1px dashed #e5e5e5;">
               					 图片上传前预览：<input  type="file" id="xdaTanFileImg" onchange="xmTanUploadImg(this)" accept="image/*"/>
           						 
           						 <img id="xmTanImg"/>
           						 <div id="xmTanDiv"></div>
       							 
      							  
							</div>
						</td>
						</tr>
						<tr>
						
						<td colspan="2" style="height:100px;margin :20px">
						<a id="alertsure" class="am-btn am-btn-danger" style=" font-size:20px;margin-top:20px ">确认</a>
						</td>
						</tr>
						
						 
							
						</tbody>
						</table>
						</form>
					</div>
					
					
				</div>
			<div id="fade1" class="black_overlay"></div>
			
			<!-- 商品添加弹出框2 -->
       		<div id="light2" class="white_content" >
       			 	<a style="width:100%;font-size:25px;text-align:right;float:right; margin :5px;color:#ebebeb" href="javascript:void(0)" onclick="document.getElementById('light2').style.display='none';document.getElementById('fade2').style.display='none';location.reload();">关闭</a>
       			 	<div style="font-weight:600;height:100px;  width:780px;font-size:30px;text-align:center; margin :10px">
       			 	添加食物
       			 	</div> 
					<div  style=" text-align:center; margin :10px">
						<form id="addForm"> 
						<table style="margin-left:auto;margin-right:auto;   ">
						<tbody>
						<tr>
						<td style=" font-size:25px; margin :10px">
						食物名字：
						</td>
						<td style=" font-size:25px; margin :10px ;text-align:left">
						<input name="foodname" style=" font-size:25px; margin :10px" type="text" placeholder="输入新食物名字">
						</td>
						</tr>
						<tr>
						<td style=" font-size:25px; margin :10px">
						食物类别：
						</td>
						<td style=" font-size:25px; margin :10px"> 
						<select name="categoryid" style=" font-size:25px; margin :10px;width:100%" name="city" style="width:120px;" >
						<option   value=3 >早餐</option>
						<option  value=2>午餐</option>
						<option  value=1>晚餐</option>
						</select>
						</td>
						</tr>
						<tr>
						<td style=" font-size:25px; margin :10px">
						食物价格：
						</td>
						<td>
						<input name="foodprice" style=" font-size:25px; margin :10px" type="text" placeholder="输入新商品的金额">
						</td>
						</tr>
						<tr>
						<td style=" font-size:25px; margin :10px">
						食物上下架：
						</td>
						<td style="padding:10px; font-size:25px; margin :10px;text-align:left">
						<a name="foodstatus" class="am-btn am-btn-danger"  style="font-size:15px;font-weight: bold;  font-family:黑体; ">true</a>
						</td>
						</tr>
						<tr>
						<td style=" font-size:25px; margin :10px">
						食物图片：
						</td>
						<td style=" font-size:25px; margin :10px;text-align:left">
							<div style="height:auto;width:300px;border: 1px dashed #e5e5e5;">
               					 图片上传前预览：<input  type="file" id="xdaTanFileImg2" onchange="xmTanUploadImg2(this)" accept="image/*"/>
           						 
           						 <img id="xmTanImg2"/>
           						 <div id="xmTanDiv2"></div>
       							 
      							  
							</div>
						</td>
						</tr>
						<tr>
						
						<td colspan="2" style="height:100px;margin :20px">
						<a id="addbtn" class="am-btn am-btn-danger" style=" font-size:20px;margin-top:20px ">确认</a>
						</td>
						</tr>
						
						 
							
						</tbody>
						</table>
						</form>
					</div>
					
					
				</div>
			<div id="fade2" class="black_overlay"></div>
			
			<!-- 分类添加弹出框3 -->
       		<div id="light3" class="white_content" >
       			 	<a style="width:100%;font-size:25px;text-align:right;float:right; margin :5px;color:#ebebeb" href="javascript:void(0)" onclick="document.getElementById('light3').style.display='none';document.getElementById('fade3').style.display='none';location.reload();">关闭</a>
       			 	<div style="font-weight:600;height:100px;  width:780px;font-size:30px;text-align:center; margin :10px">
       			 	添加分类
       			 	</div> 
					<div  style=" text-align:center; margin :10px">
					<form id="add2Form">
						<table style="margin-left:auto;margin-right:auto;   ">
						<tbody>
						<tr>
						<td style=" font-size:25px; margin :10px">
						添加分类：
						</td>
						<td  style=" font-size:25px; margin :10px ;text-align:left">
						<input  name="categoryname" style=" font-size:25px; margin :10px" type="text" placeholder="输入新分类名字">
						</td>
						</tr>
						
						
						<tr>
						
						<td colspan="2" style="height:100px;margin :20px">
						<a id="add2btn" class="am-btn am-btn-danger" style=" font-size:20px;margin-top:20px ">确认</a>
						</td>
						</tr>
						
						 
							
						</tbody>
						</table>
						</form>
					</div>
					
					
				</div>
			<div id="fade3" class="black_overlay"></div>
			
			<!-- 分类修改弹出框4 -->
       		<div id="light4" class="white_content" >
       			 	<a style="width:100%;font-size:25px;text-align:right;float:right; margin :5px;color:#ebebeb" href="javascript:void(0)" onclick="document.getElementById('light4').style.display='none';document.getElementById('fade4').style.display='none';location.reload();">关闭</a>
       			 	<div style="font-weight:600;height:100px;  width:780px;font-size:30px;text-align:center; margin :10px">
       			 	修改分类名字
       			 	</div> 
					<div  style=" text-align:center; margin :10px">
					<form id="alert2form">
						<table style="margin-left:auto;margin-right:auto;   ">
						<tbody>
						<tr  style=" font-size:25px; margin :10px">
						<td style=" font-size:25px; margin :10px">
						id:
						</td>
						<td>
						<input id="categoryid" name="categoryid" style=" font-size:25px; margin :10px" type="text"  >
						
						</td>
						</tr>
						<tr>
						<td style=" font-size:25px; margin :10px">
						分类名字：
						</td>
						<td style=" font-size:25px; margin :10px ;text-align:left">
						<input name="categoryname" style=" font-size:25px; margin :10px" type="text" placeholder="输入商品的新名字">
						</td>
						</tr>
						
						
						<tr>
						
						<td colspan="2" style="height:100px;margin :20px">
						<a id="alert2sure" class="am-btn am-btn-danger" style=" font-size:20px;margin-top:20px " >确认</a>
						</td>
						</tr>
						
						 
							
						</tbody>
						</table>
						</form>
					</div>
					
					
				</div>
			<div id="fade4" class="black_overlay"></div>
			
			<!--  内容框 -->
			<div style="margin-left:10px;background-color:white; float:left;width:880px;height:1500px">
				<div class="introduce">
					<div class="introduceMain">
						<div class="am-tabs "data-am-tabs  >
							<!-- 页内菜单栏 -->
							<ul class="am-avg-sm-3 am-tabs-nav am-nav am-nav-tabs">
								<li class="am-active" style="height:auto">
									<a href="#">
									<span class="index-needs-dt-txt" style="font-size:25px">商品信息</span></a>

								</li>
								<li style="height:auto;width:25%">
									<a href="#">
										<span class="index-needs-dt-txt" style="font-size:25px">分类管理</span></a>

								</li>
								<li style="height:auto">
									<a href="#">
										<span class="index-needs-dt-txt" style="font-size:25px">统计信息</span></a>
								</li>
							
							</ul>

							<div class="am-tabs-bd">
							<!--商品信息 -->
							<div class="am-tab-panel am-fade am-in am-active" >
								<!-- 搜索框-->
								<div style="margin-top:10px;   width: 85%;height: 40px; border: 1px solid #e5e5e5;float:right">
								<input id="searchInput" style="  font-size:20px;  float: left;display:inline;width:80%;height: 38px; ;font-size: 14px;color: #535353;border: none;background: none;margin-left:5px " name="index_none_header_sysc" type="text" placeholder="搜索商家，美食" autocomplete="off">
								<input id="ai-topsearch" class="submit am-btn" style="height:38px;width:100px;display:inline " value="搜索" index="1" type="submit">
								</div>			
								
								<!-- 添加商品按钮 -->
								<div style="width:100%;margin:10px">
								<a class="am-btn am-btn-danger" href="javascript:void(0)" onclick="document.getElementById('light2').style.display='block';document.getElementById('fade2').style.display='block'"   style="font-size:15px;font-weight: bold;  font-family:黑体; onclick=">添加商品</a>
								</div>
								 
								
								 
								<!-- 商品具体信息 -->
								<div id="foodlist"  style="padding:10px; margin:20px;width:820px; vertical-align:middle;height:auto;float:left">
									
								</div>
								
								
							</div>
							
							
							<!-- 分类管理 -->
							<div class="am-tab-panel am-fade">
								<!-- 添加分类按钮 -->
								<div style="width:100%;margin:10px">
								<a  class="am-btn am-btn-danger" href="javascript:void(0)" onclick="document.getElementById('light3').style.display='block';document.getElementById('fade3').style.display='block'"   style="font-size:15px;font-weight: bold;  font-family:黑体; ">添加分类</a>
								</div>
								
								<!-- 具体分类管理信息-->
								<div id="catelist" style="padding:10px; margin:20px;width:820px; vertical-align:middle;height:auto;float:left">
									
								</div>
								
								
							</div>
							
							<!--  统计商品信息 -->
							<div class="am-tab-panel am-fade">
							
								<!-- 具体统计商品信息 -->
								未开通此功能！
								
							
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

	$(document).ready(function() {
		DisplayStorername();
		var url = window.location.href;
		//var arr1 = url.split("?")[1].split("=")[1];
		//alert(arr1);
		//$(".sname").html(arr1);
		
	   $.ajax({
			url:"/OrderTakeOutFood/SDisplayFoodBystoreServlet",
			type:'get',
			datatype:'json',
			success:function(res){
				var str = "";
				var list = res.data.orderList;
				
				for(i = 0;i<list.length;i++){
					$("#foodlist").append('<form id="listf"><div  style="padding:10px;border: 1px dashed #e5e5e5;margin:20px;width:350px;float:left;vertical-align:middle;height:auto;float:left">'+'<div id="Foodid" style="text-align:left ;font-size:20px;margin-top:10px; ">'+list[i].foodID+'</div><input type="hidden"  name="foodid" value="'+list[i].foodID+'" />'
					+'<div style="text-align:left; font-size:20px;margin-top:10px; ">商品名称:'+list[i].foodName+'</div>'
					+'<div style="text-align:left;  font-size:20px;margin-top:10px ">是否上架：<a id="updownfood'+ i +'" class="am-btn am-btn-danger"   style="font-size:15px;font-weight: bold;  font-family:黑体 ">'+transformstatus(list[i].foodStatus)+'</a></div>'
					+'<div style="text-align:left;  font-size:20px;margin-top:10px ">分类：'+list[i].categoryID+'</div>'
					+'<div style="text-align:left;  font-size:20px;margin-top:10px ">价格：'+list[i].foodprice+'</div>'
					+'<div style="text-align:left;  font-size:20px;margin-top:10px ">商品图片：<img src ="/OrderTakeOutFood'+list[i].foodPicture+'"></div>'
					+'<div style="font-size:20px;   font-family:黑体 ;margin-top:10px">商品操作：<a id="alert" class="am-btn am-btn-danger" href="javascript:void(0)" onclick="alertclick();document.getElementById(\'light1\').style.display=\'block\';document.getElementById(\'fade1\').style.display=\'block\'" style="font-size:15px;font-weight: bold;  font-family:黑体" > 修改</a>		<a id="debtn" class="am-btn am-btn-danger"   style="font-size:15px;font-weight: bold;  font-family:黑体;" onclick="fooddele()">删除</a></div></div></form>');			
					
					
					$("#updownfood"+i).bind("click",{foodid:list[i].foodID,foodstatus:!list[i].foodStatus},ChangeStatus)
					
					}
					
					}
	   		
			});

			function ChangeStatus(event)
			{
				
				$.ajax({
					type:"POST",
					datatype:"json",
					data:event.data,
					url:"/OrderTakeOutFood/UpDownFoodServlet",
					success:function(res){
						if(res.code == 200)
						{
							alert("改变食物状态成功")
						}
						else{
							alert("改变食物状态失败")
						}
					}
				});
			}
			function transformstatus(status){
		   if(status)
			   {
			   return "上架";
			   }
		   else
			   {
			   return "下架";
			   }
	   }
	   
			//展示
			 $.ajax({
			url:"/OrderTakeOutFood/StoreDisplayCategoryServlet",
			type:'get',
			datatype:'json',
			success:function(res){
				var str = "";
				var list = res.data.categorylist;
				console.log(res.data);
				for(i = 0;i<list.length;i++){
					$("#catelist").append('<form id="catel"><div  style="padding:10px;border: 1px dashed #e5e5e5;margin:20px;width:350px;float:left;vertical-align:middle;height:auto;float:left">'+'<div  id="cateid" style="text-align:left ;font-size:20px;margin-top:10px; ">'+list[i].categoryID+'</div><input name="categoryid" type="hidden"  name="categoryID" value="'+list[i].categoryID+'" /><div style="padding:10px; margin:20px;width:350px;float:left;vertical-align:middle;height:auto;float:left">'
					+'<div style="text-align:left;  font-size:20px;margin-top:10px ">分类名字：'+list[i].categoryname+'</div>'
					+'<div style="font-size:20px;   font-family:黑体 ;margin-top:10px">分类操作：<a class="am-btn am-btn-danger" href="javascript:void(0)" onclick="alert2click();document.getElementById(\'light4\').style.display=\'block\';document.getElementById(\'fade4\').style.display=\'block\';" style="font-size:15px;font-weight: bold;  font-family:黑体">修改</a>'
					+'<a   class="am-btn am-btn-danger"   style="font-size:15px;font-weight: bold;  font-family:黑体;margin-left:10px" onclick="fooddele2()">删除</a></div></div></form>')
					}
			}
			})
				
			//添加分类
			 $(function(){
	        $("#add2btn").click(function(){
	         $.ajax({
	               type: "POST",
	               url: "/OrderTakeOutFood/StoreAddCategoryServlet",
	               data: $("#add2Form").serialize(),
	               async: false,
				   datatype:"json",
				   success:function(data)
				   {
					   alert(data.message);
					   location.reload();
				   }
	            }).responseText;
	            
				return false;
	         });
	    });
		
			
		})
			//delete
	
	    function fooddele(){
	        	var id = $("#Foodid").html();
	        	//alert(id);
	        	confirm('确认删除？');
	         $.ajax({
	               type: "POST",
	               url: "/OrderTakeOutFood/DelFoodServlet",
	               data: $("#listf").serialize(),
	               async: false,
				   datatype:"json",
				   success:function(data)
				   {
					   alert(data.message);
					   location.reload();
				   }
	            }).responseText;
	            
				return false;
	         }
	   //分类
	 function fooddele2(){
     	var id = $("#cateid").html();
     	//alert(id);
     	confirm('确认删除？');
      $.ajax({
            type: "POST",
            url: "/OrderTakeOutFood/StoreDelCategoryServlet",
            data: $("#catel").serialize(),
            async: false,
			   datatype:"json",
			   success:function(data)
			   {
				   alert(data.message);
				   location.reload();
			   }
         }).responseText;
         
			return false;
      }
		
	$(function(){
	        $("#addbtn").click(function(){
	         $.ajax({
	               type: "POST",
	               url: "/OrderTakeOutFood/AddFoodServlet",
	               data: $("#addForm").serialize(),
	               async: false,
				   datatype:"json",
				   success:function(data)
				   {
					   alert(data.message);
					   location.reload();
				   }
	            }).responseText;
	         //加载图片
	         $.ajax({
	               type: "POST",
	               url: "/OrderTakeOutFood/UploadHandleServlet",
	               data: $("#addForm").serialize(),
	               async: false,
				   datatype:"json",
				   success:function(data)
				   {
					   alert(data.message);
				   }
	            }).responseText;
	         		
	        
	        });
	    });	
	//修改食品
	
      function alertclick(){
        	
        	var id = $("#Foodid").html();
        	//alert(id);
        $("#alertsure").click(function(){
        	 $("#foodid").html(id);
         $.ajax({
               type: "POST",
               url: "/OrderTakeOutFood/FoodModifyInfoServlet",
               data: $("#alertform").serialize(),
               async: false,
			   datatype:"json",
			   success:function(data)
			   {
				   alert(data.message);
				   location.reload();
			   }
            }).responseText;
            
			return false;
         });
        }
    //修改分类
  	
      function alert2click(){
    	  var id = $("#cateid").html();
       		//alert(id);
        	
        $("#alert2sure").click(function(){
        	 $("#categoryid").html(id);
         $.ajax({
               type: "POST",
               url: "/OrderTakeOutFood/StoreUpdateCategoryServlet",
               data: $("#alert2form").serialize(),
               async: false,
			   datatype:"json",
			   success:function(data)
			   {
				   //alert("333");
				   location.reload();
			   }
            }).responseText;
            
			return false;
         });
        }
	
	function status(obj){
		var status;
		if($(this).text()=="是"){
			status=1;
		}else{
			status=0;
		}
		
		alert(status);
		$.ajax({
        type: "POST",
        url: "/OrderTakeOutFood/UpDownFoodServlet",
        data: $("#foodlist").serialize(),
        async: false,
		   datatype:"json",
		   success:function(data)
		   {
			   alert(data.message);
			   if($(this).text()=="是"){
					$(this).html("打烊");
				}else{
					$(this).html("营业");
				}
		   }
     }).responseText;
     
		return false;
		
		
	}
		
	function dpbtn(obj){
		//alert($(obj).text());
		if($(obj).text()=="营业"){
			$(obj).html("打烊");
		}else{
			$(obj).html("营业");
		}
		
	}
	
    //判断浏览器是否支持FileReader接口
    if (typeof FileReader == 'undefined') {
        document.getElementById("xmTanDiv").InnerHTML = "<h1>当前浏览器不支持FileReader接口</h1>";
        //使选择控件不可操作
        document.getElementById("xdaTanFileImg").setAttribute("disabled", "disabled");
    }

    //选择图片，马上预览
    function xmTanUploadImg(obj) {
        var file = obj.files[0];
        
        console.log(obj);console.log(file);
        console.log("file.size = " + file.size);  //file.size 单位为byte

        var reader = new FileReader();

        //读取文件过程方法
        reader.onloadstart = function (e) {
            console.log("开始读取....");
        }
        reader.onprogress = function (e) {
            console.log("正在读取中....");
        }
        reader.onabort = function (e) {
            console.log("中断读取....");
        }
        reader.onerror = function (e) {
            console.log("读取异常....");
        }
        reader.onload = function (e) {
            console.log("成功读取....");

            var img = document.getElementById("xmTanImg");
            img.src = e.target.result;
            //或者 img.src = this.result;  //e.target == this
        }

        reader.readAsDataURL(file)
    }
  //判断浏览器是否支持FileReader接口
    if (typeof FileReader == 'undefined') {
        document.getElementById("xmTanDiv2").InnerHTML = "<h1>当前浏览器不支持FileReader接口</h1>";
        //使选择控件不可操作
        document.getElementById("xdaTanFileImg2").setAttribute("disabled", "disabled");
    }

    //选择图片，马上预览
    function xmTanUploadImg2(obj) {
        var file = obj.files[0];
        
        console.log(obj);console.log(file);
        console.log("file.size = " + file.size);  //file.size 单位为byte

        var reader = new FileReader();

        //读取文件过程方法
        reader.onloadstart = function (e) {
            console.log("开始读取....");
        }
        reader.onprogress = function (e) {
            console.log("正在读取中....");
        }
        reader.onabort = function (e) {
            console.log("中断读取....");
        }
        reader.onerror = function (e) {
            console.log("读取异常....");
        }
        reader.onload = function (e) {
            console.log("成功读取....");

            var img = document.getElementById("xmTanImg2");
            img.src = e.target.result;
            //或者 img.src = this.result;  //e.target == this
        }

        reader.readAsDataURL(file)
    }
    function out(){
		$.ajax({
			url:"/OrderTakeOutFood/CustomerLoginOutServlet",
			type: "POST",
	        async: false,
			datatype:'json',
			success:function(res){
					alert(res.message);
					window.location.href='dp_login.jsp';
			}
			})
	}
    function DisplayStorername(){
    	if(sessionStorage.getItem('store'))
    	{
    	var storename = sessionStorage.getItem('store');
    	$("#storename").html(storename+"用户，你好");
    	}
    };    
  
</script>
		
</body>
</html>