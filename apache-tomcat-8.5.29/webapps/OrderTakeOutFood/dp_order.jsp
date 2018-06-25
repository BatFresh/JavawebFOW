<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
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
<title>店铺订单管理中心</title>
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
								<div class="menu-hd login" ><a id="storename" target="_top" style="color:#ddd"></a></div>
							</div>
							<div class="topMessage login" >
								<div class="menu-hd login" ><a   target="_top" style="color:#ddd" onclick="out()">退出登陆 </a></div>
							</div>
 
						</div>
						

						<div class="clear"></div>
					</div>
		<!-- 弹出框1-弹出订单内容 -->
       	<div id="light" class="white_content" >
       			 	<a style="width:100%;font-size:25px;text-align:right;float:right; margin :5px;color:#ebebeb" href="javascript:void(0)" onclick="document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none';location.reload();">关闭</a>
       			 	<div id="ordercontent">
       			 	</div>	
			</div>
		<div id="fade" class="black_overlay"></div>
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
				
		<!-- 店铺订单具体内容 -->
		<div style=" width:1200px;margin-bottom:20px;  height:1200px;   color: #444444; margin-top: 20px;margin-right: auto;margin-bottom: 0px;margin-left: auto">
			<!-- 左边导航框 -->
		<div style="background-color:white; float:left;width:300px;height:1000px">
				<!-- 订单管理 -->
				<div class="dd" style="margin-top:50px;font-size:30px;height:80px; ">
					<a href="dp_food.jsp" style=" margin-top:20px;font-size:25px;">商品管理</a>
				</div>
				 
				<div class="zh" style="background-color:#ebebeb;margin-top:20px;font-size:30px;height:80px;border-bottom: 2px solid #F03726; ">
					<a href=""  style="font-weight:600;color: #E4393C; margin-top:20px;font-size:25px;">订单管理</a>
				</div>
				<div class="zh" style=" margin-top:20px;height:80px">
					<a href="dp_my.jsp"  style=" margin-top:20px;font-size:25px;">店铺信息管理</a>
				</div>
			</div>
			
		<!--  内容框 -->
		<div style="margin-left:10px;background-color:white; float:left;width:880px;height:1000px">
				<div class="introduce">
					<div class="introduceMain">
						<div class="am-tabs" data-am-tabs>
							<!-- 页内菜单栏 -->
							<ul class="am-avg-sm-4 am-tabs-nav am-nav am-nav-tabs">
								<li class="am-active" style="height:auto">
									<a href="#">
									<span class="index-needs-dt-txt" style="font-size:25px">未接受订单</span></a>

								</li>
								<li style="height:auto;width:25%">
									<a href="#">
										<span class="index-needs-dt-txt" style="font-size:25px">已接收订单</span></a>

								</li>
								<li style="height:auto">
									<a href="#">
										<span class="index-needs-dt-txt" style="font-size:25px">已完成订单</span></a>
								</li>
								<li style="height:auto;width:25%">
									<a href="#">
										<span class="index-needs-dt-txt" style="font-size:25px">搜索订单</span></a>

								</li>
							</ul>

							<div class="am-tabs-bd">
							<!--未接受订单 -->
							<div class="am-tab-panel am-fade am-in am-active" >
							 	<div id="orderl" style="width:auto;height:auto ; ">	
									<form id="not_accept" >
										<input class="orderstatus"  name="orderstatus" type="hidden" value=0>
									</form>
								<!-- 未接受订单信息 -->
								</div>
							
							</div>
							<!-- 已接收订单 -->
							<div class="am-tab-panel am-fade">
								<!-- 已接收订单信息 -->
								<div id="orderl2" style="width:auto;height:auto ; ">	
									<form id="already_accept" >
										<input class="orderstatus"  name="orderstatus" type="hidden" value=1>
									</form>
								</div>
							</div>
							
							<!--  已完成订单 -->
							<div class="am-tab-panel am-fade">
							
								<!-- 已完成订单信息 -->
								<div id="orderl3" style="width:auto;height:auto ; ">	
									<form id="finish" >
										<input class="orderstatus"  name="orderstatus" type="hidden" value=2>
									</form>
								</div>
							</div>
							<!--  搜索订单 -->
							<div class="am-tab-panel am-fade">
									
							<!-- 搜索框-->
							<div style="   width: 90%;height: 40px; border: 1px solid #e5e5e5;margin-left:50px">
								<input id="searchInput" style="  font-size:20px;  float: left;display:inline;width:80%;height: 38px; ;font-size: 14px;color: #535353;border: none;background: none;margin-left:5px " name="index_none_header_sysc" type="text" placeholder="搜索商家，美食" autocomplete="off">
								<input id="ai-topsearch" class="submit am-btn" style="height:38px;width:100px;display:inline " value="搜索" index="1" type="submit">
							</div>
							
							<!-- 查询内容 -->
							<div  style="border: 1px dashed #e5e5e5;">
								
								
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
	//时间戳转换
	function timestampToTime(timestamp) {
	   	 var date = new Date(timestamp);//时间戳为10位需*1000，时间戳为13位的话不需乘1000
	  	  Y = date.getFullYear() + '-';
	  	  M = (date.getMonth()+1 < 10 ? '0'+(date.getMonth()+1) : date.getMonth()+1) + '-';
	  	  D = date.getDate() + ' ';
	  	  h = date.getHours() + ':';
	  	  m = date.getMinutes() + ':';
	  	  s = date.getSeconds();
	  	  return Y+M+D+h+m+s;
			};
			//订单状态转义
			function DisplayOrderStatus(status){
			if(status == 1)
			{
			return "已接单";
			}
			else if(status == 0)
			{
			return "未接单";
			}
		else if(status == 2)
			{
			return "已完成";
			}
		else if(status ==3)
			{
			return "异常";
			}
		};	
		//店铺展示未接受订单	
	   $.ajax({
			url:"/OrderTakeOutFood/StoreDisplayOrderServlet",
			type: "POST",
	        data: $("#not_accept").serialize(),
	        async: false,
			datatype:'json',
			success:function(res){
				var list = res.data.orderList;
				console.log(res.data);
				for(var i = 0;i<list.length;i++){
					$("#orderl").append('<div style="padding:10px;margin:20px;width:350px;float:left;vertical-align:middle;height:auto;float:left;border: 1px dashed #e5e5e5;">'
						+'<div id =\'ordernumber\'' + i + ' style="text-align:left;  font-size:20px;margin-top:10px ">订单编号:'+list[i].ordernumber+'</div>'
						+'<div style="text-align:left;  font-size:20px;margin-top:10px ">订餐人姓名：'+list[i].personalName+'</div>'
						+'<div style="text-align:left;  font-size:20px;margin-top:10px ">订单人电话：'+list[i].usertel+'</div>'
						+'<div style="text-align:left;  font-size:20px;margin-top:10px ">配送时间：'+list[i].deliverytime+'</div>'
						+'<div style="text-align:left;  font-size:20px;margin-top:10px ">订单金额：'+list[i].sumprice+'</div>'
						+'<div style="text-align:left;  font-size:20px;margin-top:10px ">日期：'+timestampToTime(list[i].orderTime.time)+'</div>'
						+'<div style="font-size:20px;   font-family:黑体 ;margin-top:10px">订餐内容：<a class="am-btn am-btn-danger" href="javascript:void(0)" onclick="order(this);document.getElementById(\'light\').style.display=\'block\';document.getElementById(\'fade\').style.display=\'block\'" style="font-size:15px;font-weight: bold;  font-family:黑体"> 查看</a>'
						+'<div name="num" style="display:none" >'+list[i].ordernumber+'</div></div>'
						+'<div style="font-size:20px;   font-family:黑体 ;margin-top:10px">状态：	'+DisplayOrderStatus(list[i].orderStatus)+'</div>'
						+'<div style="font-size:20px;   font-family:黑体 ;margin-top:10px">订单操作：<a id = "acceptorder'+ i +'" class="am-btn am-btn-danger"  style="font-size:15px;font-weight: bold;  font-family:黑体"> 接受订单</a></div>')
				//console.log(list[i]);
					
				   		$("#acceptorder"+i).bind("click",{ordernumber:list[i].ordernumber},Acceptorder)
					
				}
			}
	   });
		
	   //接受订单
	   function Acceptorder(event){
		   var order = {
				   ordernumber:event.data.ordernumber,
		            orderstatus:"1"		            
		        };
		  // console.log(ordernumber[i-1])
			$.ajax({
				type:"POST",
				url:"/OrderTakeOutFood/OrderAcceptServlet",
				data:order,
				async:false,
				datatype:'json',
				success:function(res){
					if(res.code == 200)
						{
						alert('接受订单成功')
						location.reload();
						}
					else
						{
						alert('接受订单失败')
						}
				}
			})
		};
		
	   //店铺展示已接收订单
	   $.ajax({
			url:"/OrderTakeOutFood/StoreDisplayOrderServlet",
			type: "POST",
	        data: $("#already_accept").serialize(),
	        async: false,
			datatype:'json',
			success:function(res){
				var list = res.data.orderList;
				console.log(res.data);
				for(var i = 0;i<list.length;i++){
					$("#orderl2").append('<div style="padding:10px;margin:20px;width:350px;float:left;vertical-align:middle;height:auto;float:left;border: 1px dashed #e5e5e5;">'
						+'<div style="text-align:left;  font-size:20px;margin-top:10px ">订单编号:'+list[i].ordernumber+'</div>'
						+'<div style="text-align:left;  font-size:20px;margin-top:10px ">订餐人姓名：'+list[i].personalName+'</div>'
						+'<div style="text-align:left;  font-size:20px;margin-top:10px ">订单人电话：'+list[i].usertel+'</div>'
						+'<div style="text-align:left;  font-size:20px;margin-top:10px ">配送时间：'+list[i].deliverytime+'</div>'
						+'<div style="text-align:left;  font-size:20px;margin-top:10px ">订单金额：'+list[i].sumprice+'</div>'
						+'<div style="text-align:left;  font-size:20px;margin-top:10px ">日期：'+timestampToTime(list[i].orderTime.time)+'</div>'
						+'<div style="font-size:20px;   font-family:黑体 ;margin-top:10px">订餐内容：<a class="am-btn am-btn-danger" href="javascript:void(0)" onclick="order(this);document.getElementById(\'light\').style.display=\'block\';document.getElementById(\'fade\').style.display=\'block\'" style="font-size:15px;font-weight: bold;  font-family:黑体"> 查看</a>'
						+'<div name="num" style="display:none" >'+list[i].ordernumber+'</div></div>'
						+'<div style="font-size:20px;   font-family:黑体 ;margin-top:10px">状态：	'+DisplayOrderStatus(list[i].orderStatus)+'</div>'
						+'<div style="font-size:20px;   font-family:黑体 ;margin-top:10px">订单操作：<a id = "finishorder'+i+'" class="am-btn am-btn-danger"  style="font-size:15px;font-weight: bold;  font-family:黑体"> 完成订单</a></div>')
				//console.log(list[i]);
	
						$("#finishorder"+i).bind("click",{ordernumber:list[i].ordernumber},Finishorder)
				}
			}
	   })
	   
	 //完成订单
	   function Finishorder(event){
		   
	   	   var order = {
	   			   ordernumber:event.data.ordernumber,
	   	            orderstatus:"2"
	   	            
	   	        };
	   	  // console.log(ordernumber[i-1])
	   		$.ajax({
	   			type:"POST",
	   			url:"/OrderTakeOutFood/OrderAcceptServlet",
	   			data:order,
	   			async:false,
	   			datatype:'json',
	   			success:function(res){
	   				if(res.code == 200)
	   					{
	   					alert('完成订单成功')
	   					location.reload();
	   					}
	   				else
	   					{
	   					alert('完成订单失败')
	   					}
	   			}
	   			})
	   		};
	   //店铺展示已完成订单
	   $.ajax({
			url:"/OrderTakeOutFood/StoreDisplayOrderServlet",
			type: "POST",
	        data: $("#finish").serialize(),
	        async: false,
			datatype:'json',
			success:function(res){
				var list = res.data.orderList;
				console.log(res.data);
				for(var i = 0;i<list.length;i++){
					$("#orderl3").append('<div style="padding:10px;margin:20px;width:350px;float:left;vertical-align:middle;height:auto;float:left;border: 1px dashed #e5e5e5;">'
						+'<div style="text-align:left;  font-size:20px;margin-top:10px ">订单编号:'+list[i].ordernumber+'</div>'
						+'<div style="text-align:left;  font-size:20px;margin-top:10px ">订餐人姓名：'+list[i].personalName+'</div>'
						+'<div style="text-align:left;  font-size:20px;margin-top:10px ">订单人电话：'+list[i].usertel+'</div>'
						+'<div style="text-align:left;  font-size:20px;margin-top:10px ">配送时间：'+list[i].deliverytime+'</div>'
						+'<div style="text-align:left;  font-size:20px;margin-top:10px ">订单金额：'+list[i].sumprice+'</div>'
						+'<div style="text-align:left;  font-size:20px;margin-top:10px ">日期：'+timestampToTime(list[i].orderTime.time)+'</div>'
						+'<div style="font-size:20px;   font-family:黑体 ;margin-top:10px">订餐内容：<a class="am-btn am-btn-danger" href="javascript:void(0)" onclick="order(this);document.getElementById(\'light\').style.display=\'block\';document.getElementById(\'fade\').style.display=\'block\'" style="font-size:15px;font-weight: bold;  font-family:黑体"> 查看</a>'
						+'<div name="num" style="display:none" >'+list[i].ordernumber+'</div></div>'
						+'<div style="font-size:20px;   font-family:黑体 ;margin-top:10px">状态：	'+DisplayOrderStatus(list[i].orderStatus)+'</div></div>')
						
				}
			}
	   })
	   });
//点击查看未接受的订餐内容
var order=function (obj){
		var num = $(obj).next().html();
		console.log(num)
		//alert(num)
	   $.ajax({
			url:"/OrderTakeOutFood/DisplayOrderContentServlet",
			type: "POST",
	        data: {ordernumber:num},
	        async: false,
			datatype:'json',
			success:function(res){
				var list = res.data.ordercontentlist;
				console.log(res.data);
				var t = 0;
				var str = "";
				str +='<div style="height:auto;  width:auto;font-size:30px;text-align:center; margin :10px;font-weight:600">订单内容</div>'
				 	+'<div  style=" text-align:center; margin :10px"><table style="margin-left:auto;margin-right:auto;   ">';
				for(var i = 0;i<list.length;i++){
					str +='<tbody><tr><td style=" font-size:25px; margin :10px">商品名字：'+list[i].foodname+'</td></tr>'
					t = i;
				}  
					 	str +='</table></div>'
					 	+'<div style="height:auto;  width:100%;font-size:30px;text-align:center;font-weight:600">配送信息</div>'
					 	+'<div  style=" text-align:center; margin :10px"><table style="margin-left:auto;margin-right:auto;   "><tbody>'
					 	+'<tr><td style=" font-size:25px; margin :10px">收获地址：'+ list[t].useraddr +'</td></tr>'
					 	+'<tr><td style=" font-size:25px; margin :10px">订单号：'+list[t].orderNumber+'</td></tr></table>';	
					 $("#ordercontent").append(str);
			}
			});
			}


	function dpbtn(obj){
		//alert($(obj).text());
		if($(obj).text()=="营业"){
			$(obj).html("打烊");
		}else{
			$(obj).html("营业");
		}
		
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
    	$("#storename").html(storename+"用户，你好 ");
    	}
    };      
</script>
		
</body>
</html>