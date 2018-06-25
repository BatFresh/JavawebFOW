<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>结算页面</title>
		<link href="css/amazeui.css" rel="stylesheet" type="text/css" />
		<link href="css/admin.css" rel="stylesheet" type="text/css" />
		<link type="text/css" href="css/optstyle.css" rel="stylesheet" />
		<link type="text/css" href="css/style.css" rel="stylesheet" />

		<script type="text/javascript" src="js/jquery-1.7.min.js"></script>
		<script type="text/javascript" src="js/quick_links.js"></script>
		<script type="text/javascript" src="js/amazeui.js"></script>
		<script type="text/javascript" src="js/jquery.imagezoom.min.js"></script>
		<script type="text/javascript" src="js/jquery.flexslider.js"></script>
		<script type="text/javascript" src="js/list.js"></script>
		<script src ="js/verify.js"></script>
		<link href="css/personal.css" rel="stylesheet" type="text/css">
		<link href="css/addstyle.css" rel="stylesheet" type="text/css">
		<script src="js/jquery.min1.js" type="text/javascript"></script>
		<link href="css/demo.css" rel="stylesheet" type="text/css" />
		<link href="css/hmstyle.css" rel="stylesheet" type="text/css"/>
		<link href="css/skin.css" rel="stylesheet" type="text/css" />
		<link href="css/admin.css" rel="stylesheet" type="text/css">
</head>
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
								<div class="menu-hd register"><a onclick="loginout()" target="_top" style="color:#ddd">注销</a></div>
							</div>
							<div class="topMessage home">
								<div class="menu-hd"><a href="#" target="_top" style="color:#ddd">开店申请</a></div>
							</div>
							<div class="topMessage my-shangcheng">
								<div class="menu-hd MyShangcheng"><a href="my.jsp" target="_top" style="color:#ddd"><i class="am-icon-user am-icon-fw"></i>个人中心</a></div>
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
						<a href="ddetail.jsp" style="float:left;margin:40px;font-size:30px">我的订单</a>
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
				
		<!-- 跳转栏 -->
		<div style=" height:50px;width:1500px;margin-top:20px;    border-left: 10px solid #333;color: #444444;padding-left: 20px;margin-top: 20px;margin-right: auto;margin-bottom: 0px;margin-left: auto;">
  			<a href="foodlist.jsp" style=" font-size:30px;margin:20px">商店名字</a>
  			<i style=" font-size:30px;margin:20px">&gt;</i>
  			<span style=" font-size:30px;margin:20px;font-weight:600">确认购买</span>
		</div>
		
		<!-- 结算页/信息页 -->
		<div style=" width:1500px;margin-top:20px;     color: #444444;padding-left: 20px;margin-top: 20px;margin-right: auto;margin-bottom: 0px;margin-left: auto;height:800px">
			<!-- 结算页 -->
			<div style="margin-right:20px;background-color:white;border: 1px dotted  #ebebeb ;width:600px;float:left">
				<table style=" font-size: 12px;border-collapse: collapse;width: 580px;color: #434343;border: 1px dotted  #ebebeb;background-color: #ffffff;margin:10px">
          		<tr>
          		  <th width="240" style="height:100px"><div style="font-size:30px;margin:10px;font-weight:600;border-bottom: 1px dotted  #ebebeb">菜品</div></th>
          		  <th colspan="2"><div style="font-size:30px;margin:10px;font-weight:600;border-bottom: 1px dotted  #ebebeb">总价</div></th>
        	    </tr>
          	     </table >
          	     <table  class="mytable" style=" font-size: 12px;border-collapse: collapse;width: 580px;color: #434343;border: 1px dotted  #ebebeb;background-color: #ffffff;margin:10px">
          	     
          	     
           	 	 <tr>
               		 <td width="240" style="height:100px"> 
                 		 <div  style="font-size:25px;margin:10px; border-bottom: 1px dotted  #ebebeb">    
						餐盒费
						</div>
                 		
                	</td>
                    <td  style="height:100px">
                    	<span style="font-size:25px;margin:10px; border-bottom: 1px dotted  #ebebeb;float:left"> ¥ </span>
                    	<div class="dep"  style="font-size:25px;margin:10px; border-bottom: 1px dotted  #ebebeb">
                    	  2
                    	</div>
                	</td>
              </tr>
              <tr>
               		 <td width="240" style="height:100px"> 
                 		 <div  style="font-size:25px;margin:10px; border-bottom: 1px dotted  #ebebeb">    
						配送费
						</div>
                 		
                	</td>
                    <td  style="height:100px">
                    	<span style="font-size:25px;margin:10px; border-bottom: 1px dotted  #ebebeb;float:left"> ¥ </span>
                    	<div class="dep1"  style="font-size:25px;margin:10px; border-bottom: 1px dotted  #ebebeb">
                    	  8
                    	</div>
                	</td>
              </tr>
             	 <tr class="total" data-total="80.8">
             	 <td colspan="3" style="height:80px">
             	   <div class="td-inner clearfix" style="margin-right:50px;float:right">
                	  <span style="font-size:30px;margin:10px; border-bottom: 1px solid #ebebeb;font-weight:600">合计</span>
                	  <span style="font-size:30px;margin-right:10px; border-bottom: 1px solid #ebebeb;font-weight:600"> ¥ </span>
                	  <span class="tolprice" style="font-size:30px;margin-right:10px; border-bottom: 1px solid #ebebeb;font-weight:600"></span>
                   </div>
                 </td>
              </tr>
     
      			</table>
      			
			</div>
			<!-- 信息页 -->
			<div style="margin-left:20px;background-color:white;border: 1px solid #ebebeb;height:700px;width:820px;float:left">
				<div style="margin-top:20px; width:820px;font-size:30px;text-align:center;font-weight:600; border-bottom: 1px dotted  #ebebeb">
				送餐详情
				</div>
				<div style=" font-size:25px;margin:10px ">
              	 选择地址：
         		 </div>
       			 <!-- 弹出框 -->
       			 <div id="light" class="white_content" >
       			 	<a style="width:100%;font-size:25px;text-align:right;float:right; margin :5px;color:#ebebeb" href="javascript:void(0)" onclick="document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'">关闭</a>
       			 	<div style="height:100px;  width:100%;font-size:30px;text-align:center; margin :10px">
       			 	修改地址信息
       			 	</div> 
					<div  style=" text-align:center; margin :10px">
						<table style="margin-left:auto;margin-right:auto;   ">
						<tbody><tr>
						<td style=" font-size:25px; margin :10px">
						收货人名字：
						</td>
						<td>
						<input name="dename" style=" font-size:25px; margin :10px" type="text" placeholder="输入收货人名称">
						</td>
						</tr>
						
						<tr>
						<td style=" font-size:25px; margin :10px">
						收货人地址：
						</td>
						<td>
						<input name="deadd" style=" font-size:25px; margin :10px" type="text" placeholder="输入收货人地址">
						</td></tr>
						<tr>
						<td style=" font-size:25px; margin :10px">
						收货人电话
						</td>
						<td>
						<input name="detel" style=" font-size:25px; margin :10px" type="text" placeholder="输入收货人电话">
						</td>
						</tr>
						<tr>
						
						<td colspan="2">
						<a class="am-btn am-btn-danger"  style=" font-size:25px; margin :10px" >确认</a>
						</td>
						</tr>
						
						</tbody>
						</table>
					</div>
					
					
				</div> 
        			<div id="fade" class="black_overlay">
        				
        			</div> 
         		 <!--  地址样式 -->
				<div class="am-avg-sm-1 am-avg-md-3 am-thumbnails" style="height:130px">
					<li class="user-addresslist" style="margin:5px;background:url('image/peraddbg.png') no-repeat;width:255px;height:150px">
								<span class="new-option-r" style="top:auto;margin-left:185px;position:relative"><i class="am-icon-check-circle"></i>默认地址</span>
								<p class="new-tit new-p-re">
									<span id="addr_name" class="new-txt" style="font-weight:600"></span>
									<span id="addr_tel" class="new-txt-rd2" ></span>
								</p>
								<div class="new-mu_l2a new-p-re">
									<p class="new-mu_l2cw">
										<span class="title">地址：</span>
										<span id="addr" class="province"></span>
								</div>
								<div class="new-addr-btn">
									<a href = "javascript:void(0)" onclick = "document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'"><i class="am-icon-edit"></i>编辑</a>
								</div>
					</li>

					
					
				</div>
				<div style="  width:820px;font-size:30px;text-align:center;font-weight:600; border-bottom: 1px dotted  #ebebeb">
				 
				</div>
				<div style="height:100px;  width:780px;font-size:25px;text-align:left; margin :20px ;border-bottom: 1px dotted  #ebebeb ">
				给商家留言：
				<input type="text" name="message" placeholder="不要辣，多放盐等口味要求" maxlength="100" style="height:50px;width:600px;font-size:20px;float:right">
				</div>
				<div style="height:150px ;margin-top:20px; width:780px;font-size:25px;text-align:left; margin:20px ;border-bottom: 1px dotted  #ebebeb">
				发票信息：
				<input type="text" name="message2" placeholder="请输入发票抬头" maxlength="100" style="height:50px;width:600px;font-size:20px;float:right">
				<br>
				<div style="margin-top:50px">
				<input type="text" name="message3" placeholder="请输入纳税人识别号" maxlength="100" style="height:50px;width:600px;font-size:20px;float:right">
				</div>
				</div>
				<div class="td-inner clearfix" style="margin-left:50px;float:left;margin:20px;width:777px">
                	  <span style="font-size:30px;margin:10px; border-bottom: 1px solid #ebebeb;font-weight:600">合计</span>
                	  <span style="font-size:30px;margin-right:10px; border-bottom: 1px solid #ebebeb;font-weight:600">¥ </span>
                 	  <span class="tolprice" style="font-size:30px;margin-right:10px; border-bottom: 1px solid #ebebeb;font-weight:600"> </span>
                 	  <span><a class="am-btn am-btn-danger" style="font-size:25px;margin-left:10px;float:right">取消</a></span>
                 	  <span><a   onclick = "Addorder()" class="am-btn am-btn-danger" style="font-size:25px; float:right" >付款</a></span>
                 	  
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
			<script type="text/javascript">
				
				$(document).ready(function() {
					//获取url传的值
					var sumlist = new Array();
					var sumlistp = new Array();
					var url = decodeURI(window.location.href);
					console.log(url);
					var arr1 = url.split("?")[1].split("&");
					var temp = arr1[0].split("=")[1].split(" ");
					
					var tempp = arr1[1].split("=")[1].split(" ");
					for(var i=0;i<temp.length;i++){
						if(temp[i]!=""){
							sumlist[i] =temp[i];
						}
					}
					
					for(var i=0;i<tempp.length;i++){
						if(tempp[i]!=""){
							sumlistp[i] =tempp[i];
							
						}
					}
					//处理sumlist、sumlistp、tolprice
					for(var i=0;i<sumlistp.length;i++){
						//alert(sumlist[i]);
					$(".mytable").prepend("<tr><td  width='240' style='height:100px'> <div class='left' style='font-size:25px;margin:10px; border-bottom: 1px dotted  #ebebeb'>    </div></td><td  style='height:100px'><span style='font-size:25px;margin:10px; border-bottom: 1px dotted  #ebebeb;float:left'> ¥ </span><div class='right' style='font-size:25px;margin:10px; border-bottom: 1px dotted  #ebebeb'></div></td></tr>");
					$(".left").eq(0).html(sumlist[i]);
					console.log(sumlist[0]);
					$(".right").eq(0).html(sumlistp[i]);
					}
					
					
					var tolprice = parseFloat(arr1[2].split("=")[1])+parseFloat($(".dep").html())+parseFloat($(".dep1").html());
					//alert(parseFloat(arr1[2].split("=")[1])+parseFloat($(".dep").html()));
					$(".tolprice").html(tolprice.toFixed(2));
					$(".new-option-r").click(function() {
						$(this).parent('.user-addresslist').addClass("defaultAddr").siblings().removeClass("defaultAddr");
							});
							
					var $ww = $(window).width();
					if($ww>640) {
						$("#doc-modal-1").removeClass("am-modal am-modal-no-btn")
							}
						})
			</script>	
<script>
DisplayUsername();
$(document).ready(function(){
	DisplayUsername();
	DisplayAddr();
});
function Addorder(){
	var userJsonStr = sessionStorage.getItem('user');
	userEntity = JSON.parse(userJsonStr);
	var username = userEntity.personalName ;
	var useraddr = userEntity.useraddr;
	var usertel = userEntity.usertel; 
	console.log("dasdas");
	var sumlist = new Array();
	var sumlistp = new Array();
	var url = decodeURI(window.location.href);
	var arr1 = url.split("?")[1].split("&");
	var temp = arr1[0].split("=")[1].split(" ");
	var tempp = arr1[1].split("=")[1].split(" ");
	for(var i=0;i<temp.length;i++){
		if(temp[i]!=""&&tempp[i]!=""){
			sumlist[i] =temp[i];
		}
	}
	
	for(var i=0;i<tempp.length;i++){
		if(tempp[i]!=""){
			sumlistp[i] =tempp[i];
			
		}
	}
	var tolprice = parseFloat(arr1[2].split("=")[1])+parseFloat($(".dep").html())+parseFloat($(".dep1").html());
	var orderjson = {};
	var foodlist = [];
	var ordertime = new Date();
	orderjson.usertel = usertel;
	orderjson.useraddr = useraddr;
	orderjson.sumprice = tolprice;
	orderjson.ordertime = ordertime;
	orderjson.orderstatus = 0;
	var storeJsonStr = sessionStorage.getItem('store');
	storeEntity = JSON.parse(storeJsonStr);
	console.log(storeEntity.storeid);
	orderjson.storeid = storeEntity.storeid;
	
	for(i=0;i<sumlist.length;i++)
		{
		var food = {};
		food.foodname = sumlist[i];
		food.foodprice = sumlistp[i];
		
		food.selectNumber = 1;
		foodlist.push(food);
		}
	orderjson.foodlist = foodlist;
	console.log(orderjson)
	orderjson = JSON.stringify(orderjson);
	$.ajax({
		 url:"CustomerAddOrderServlet",
		 type:"POST",
		 data:orderjson,
		 datatype:"json",
		 success:function(data){
			 if(data.code == 200)
				 {
				 alert(data.message)
				 $(location).attr('href', '/OrderTakeOutFood/erweima.jsp');
				 }
			 else{
				 alert(data.message)
			 }
		 }
	})
};
function DisplayAddr(){
	var userJsonStr = sessionStorage.getItem('user');
	userEntity = JSON.parse(userJsonStr);
	var username = userEntity.personalName ;
	var useraddr = userEntity.useraddr;
	var usertel = userEntity.usertel;
	$("#addr_name").html(username);
	$("#addr_tel").html(useraddr);
	$("#addr").html(usertel);
};
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