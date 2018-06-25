<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
<title>全部商铺列表</title>
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
								<div class="menu-hd login" ><span target="_top" id="username" style="color:#ddd"></span></div>
							</div>
							|
							<div class="topMessage register" style="color:#ddd">
								<div class="menu-hd register"><a  target="_top" style="color:#ddd" onclick = "loginout()">注销</a></div>
							</div>
							<div class="topMessage home">
								<div class="menu-hd"><a href="dp_register.jsp" target="_top" style="color:#ddd">开店申请</a></div>
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
						<a href="#" style="float:left;margin:40px;font-size:30px">首页</a>
						</div>
						<div >
						<a href="ddetail.jsp" style="float:left;margin:40px;font-size:30px">我的订单</a>
						</div>
						<div >
						<a href="dp_register.jsp" style="float:left;margin:40px;font-size:30px">入驻加盟</a>
						</div>
						<div >
						<a href="#" style="float:left;margin:40px;font-size:30px">社会责任</a>
						</div>
					</div>
					
						
				<div class="clear "></div>
				</div>
				
				
				
				<!--商品列表 -->
				<div class="am-container shoplist " style="margin-top:9px">
						<!--商品列表（标题行）-->
						<div class="shopTitle "  >
							<div style="padding: 18px 0 18px 0;margin: 0 10px;position: relative;overflow: hidden;">
							<div style="width:50px;height:50px;display: inline-block;float:left">
							<img src="image/icon.JPG">
							</div>
							<div style="vertical-align:middle; margin:10px;display: inline-block;float:left">
								<h4>商家分类</h4>
							</div>
							<div style="display: inline-block;color:#898989;vertical-align:middle; margin:10px;display: inline-block;float:left">
								 <h4 >全部</h4>&nbsp;&nbsp;&nbsp;&nbsp;
							</div> 
							<div style="display: inline-block;color:#898989;vertical-align:middle; margin:10px;display: inline-block;float:left"> 
								 <h4 style="display: inline-block">美食   </h4>&nbsp;&nbsp;&nbsp;&nbsp;
							</div>
							<div style="display: inline-block;color:#898989;vertical-align:middle; margin:10px;display: inline-block;float:left">
								 <h4 style="display: inline-block"> 正餐优选   </h4>&nbsp;&nbsp;&nbsp;&nbsp;
							</div>
							<div style="display: inline-block;color:#898989;vertical-align:middle; margin:10px;display: inline-block;float:left">	  
								  <h4 style="display: inline-block">超市    </h4>&nbsp;&nbsp;&nbsp;&nbsp;
							</div>
							<div style="display: inline-block;color:#898989;vertical-align:middle; margin:10px;display: inline-block;float:left">
								  <h4 style="display: inline-block">精选小吃    </h4>&nbsp;&nbsp;&nbsp;&nbsp;
							</div>
							<div style="display: inline-block;color:#898989;vertical-align:middle; margin:10px;display: inline-block;float:left">
								  <h4 style="display: inline-block"> 鲜果购    </h4>&nbsp;&nbsp;&nbsp;&nbsp;
							</div>
							<div style="display: inline-block;color:#898989;vertical-align:middle; margin:10px;display: inline-block;float:left">
								  <h4 style="display: inline-block">下午茶 </h4>
							</div>
							</div>
							
							
						</div>
							<br />
				</div>
						
						<!--商品列表（第一行）-->
					    <div class="am-g am-g-fixed " id = "storelist" style="background:white">	
					  	</div>
                
				<div class="clear "></div>
				
				<br/>
				<br/>
				<!-- 添加分页 (需要添加变量以及修改页面控制层) -->
				<div class="am-container ">
				<form name="f1" method="POST"">
           		<div class="footer-hd " align="center"> 	
                    	第？页
                    	<b>|</b>
                    	共？页 <
                    	<b>|</b>
                    	<a href="#">首页</a>
                    	<b>|</b>
                    	<a href="#"> 上一页</a>
                    	<b>|</b>
                    	<a href="#"> 下一页</a>
                    	<b>|</b>
                    	<a href="#">最后一页</a>
                    	<b>|</b>
                    	转到第:<input type="text" id="pagenum" name="page" size="8">页
                    	<input type="button" value="GO" onClick ="jump()" >
				</div>
				</form>
				</div>
				<script>
				function jump(){
					  pages = document.getElementById("pagenum").value;
					  if(pages == "")
						  pages=1;
					  window.location.href = "PageQueryCtrl?pages="+ pages;
				  }
				</script>
				
				
				
				<br/>
				<br/>
				
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
</body>
<script typr="text/javascript">
$(document).ready(function(){
DisplayUsername();
$.ajax({
	url:"/OrderTakeOutFood/StoreAllDisplayServlet",
	type:'get',
	datatype:'json',
	success:function(res){
		var str = "";
		var list = res.data.storeList;
		console.log(res.data);
		for(i = 0;i<list.length;i++){
			str += "<div class=\"am-u-sm-3 \"><div class=\"activityMain \"style=\"margin:5px\">"+"<a href=\"foodlist.jsp?storeid=" + list[i].storeid +"\">"+
			"<img src=\""+"/OrderTakeOutFood"+list[i].storePicture +"\"></img></a></div><div class=\"info \"><h3>商店名字: "+
			list[i].storename+"<br />评分:"+list[i].rank+"<br />配送费:"+list[i].deliverycost+
			"</h3></div></div>";
			console.log(str);
		}
		
		$("#storelist").append(str);
	}
})

});
function DisplayUsername(){
		if(sessionStorage.getItem('user'))
			{
			var userJsonStr = sessionStorage.getItem('user');
			userEntity = JSON.parse(userJsonStr);
			var username = userEntity.username ;
			$("#username").html(username);
			}
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
}
</script>
</html>