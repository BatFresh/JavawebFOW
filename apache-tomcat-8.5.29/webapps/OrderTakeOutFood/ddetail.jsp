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
								<div class="menu-hd login" ><span id = "username" target="_top" style="color:#ddd"> </span></div>
							</div>
							|
							<div class="topMessage register" style="color:#ddd">
								<div class="menu-hd register"><a onclick = "loginout()" target="_top" style="color:#ddd">注销</a></div>
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
						<a href="#" style="float:left;margin:40px;font-size:30px">我的订单</a>
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
				
		<!-- 支付页面具体内容 -->
		<div style=" width:1200px;margin-bottom:20px;  height:1200px;   color: #444444; margin-top: 20px;margin-right: auto;margin-bottom: 0px;margin-left: auto">
			<!-- 左边导航框 -->
			<div style="background-color:white; float:left;width:300px;height:1000px">
				<!-- 近三个月的订单 -->
				<div class="dd" style="margin-top:50px;font-size:30px;height:80px;border-bottom:1px solid #ebebeb">
					<a class="ddbtn"><img src="image/dh2.JPG"></a>
				</div>
				 
				<div class="zh" style="margin-top:20px;font-size:30px;height:80px;border-bottom:1px solid #ebebeb">
					<a class="zhbtn"><img src="image/zhanghao2.JPG"></a>
				</div>
				
			</div>
			 <!-- 弹出框 -->
       			 <div id="light" class="white_content" >
       			 	<a style="width:100%;font-size:25px;text-align:right;float:right; margin :5px;color:#ebebeb" href="javascript:void(0)" onclick="document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none';location.reload();">关闭</a>
       			 	<div style="height:100px;  width:780px;font-size:30px;text-align:center; margin :10px">
       			 	评论
       			 	</div> 
					<div  style=" text-align:center; margin :10px">
						<table style="margin-left:auto;margin-right:auto;   ">
						<tbody>
						
						<tr>
						<td style=" font-size:25px; margin :10px">
						选择评论等级：
						</td>
						<td>
						<a class="am-btn am-btn-danger" onclick = "status(3,this)" style=" font-size:20px; margin:10px" >好评</a>
						<a class="am-btn am-btn-danger" onclick = "status(2,this)" style=" font-size:20px; margin:10px; ">中评</a>
						<a class="am-btn am-btn-danger" onclick = "status(1,this)" style=" font-size:20px; margin:10px ">差评</a>
						<div id="tip" style="display:none"> 未选</div>
						</td></tr>
						<tr>
						<form>
							<input type="hidden"  id ="commentstatus"  >
							<input type="hidden" id ="commentid"  >
							<input type="hidden" id ="commenton"  >
						</form>	
						<td style=" font-size:25px; margin :10px">
						评论内容：
						</td>
						<td>
						<input id = "commentcontent" name="content" style=" font-size:25px; margin :10px" type="text" placeholder="输入评论内容">
						</td>
						</tr>
						<tr>
						<td colspan="2" style="height:100px;margin :20px">
						<a class="am-btn am-btn-danger" onclick="commit()" style=" font-size:25px; " >确认</a>
						</td>
						</tr>
						
						</tbody>
						</table>
					</div>
					
					
				</div>
				<div id="fade" class="black_overlay"></div> 
			<!--  内容框 -->
			<div style="margin-left:10px;background-color:white; float:left;width:880px;min-height:1000px" id = "orderlist">
						
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
		$(".zhbtn").click(function(){
			window.location.href="/OrderTakeOutFood/my.jsp";
		})

</script>
<script typr="text/javascript">
var userorder = []
$(document).ready(function(){
DisplayUsername();
$.ajax({
	url:"/OrderTakeOutFood/CustomerDisplayOrderServlet",
	type:'get',
	datatype:'json',
	success:function(res){
		
		var list = res.data.orderList;
		console.log(res.data);
		for(i = 0;i<list.length;i++){
			$("#orderlist").append( '<div class="order" style="border: 1px dashed #e5e5e5;width:auto;height:250px ">	'
				+'<div style="margin:10px; height:225px;width:300px;float:left">'
				+'<img src="/OrderTakeOutFood' + list[i].storePicture +'">'
			+'</div>'
			+'<div style="margin:20px;width:515px;float:left;vertical-align:middle;height:210px">'
			+'<div style="text-align:left;  font-size:20px ">'
			+'<div style="font-size: 20px;">店家名字：' + list[i].storename + '</div>'
			+'<div style="font-size: 20px;">订单状况：'+ DisplayOrderStatus(list[i].orderStatus) +'</div>'
			+'<div style="font-size: 20px;">订单金额：¥' + list[i].sumprice +'元</div><div style="font-size: 20px;">订单日期：' + timestampToTime(list[i].ordertime.time)
			+'</div></div>'
			
			+'<div style=" float:right">'								
			+'<a id="com_a'+i+'" class="am-btn am-btn-danger" href="javascript:void(0)"  onclick="document.getElementById(\'commentid\').value='+list[i].storeid+';document.getElementById(\'commenton\').value='+list[i].orderNumber+';document.getElementById(\'light\').style.display=\'block\';document.getElementById(\'fade\').style.display=\'block\'" style="font-size:15px;font-weight: bold;  font-family:黑体"> 评论</a>'									
			+'</div>	'
			+'</div>'
		+'</div>')
		console.log(list.orderStatus)
		
		if(list[i].orderStatus==0||list[i].orderStatus==1){
			//alert(list[i].orderStatus)
			$("#com_a"+i+"").hide();
		}else if(list[i].orderStatus==2){
			//alert(list[i].orderStatus)
			$("#com_a"+i+"").show();
		}
		//userorder[i]=list[i].storeid
		}
		
	}
});

});
function getNowFormatDate() {
    var date = new Date();
    var seperator1 = "-";
    var seperator2 = ":";
    var month = date.getMonth() + 1;
    var strDate = date.getDate();
    if (month >= 1 && month <= 9) {
        month = "0" + month;
    }
    if (strDate >= 0 && strDate <= 9) {
        strDate = "0" + strDate;
    }
    var currentdate = date.getFullYear() + seperator1 + month + seperator1 + strDate
            + " " + date.getHours() + seperator2 + date.getMinutes()
            + seperator2 + date.getSeconds();
    return currentdate;
}
function commit(){
	
	var time = getNowFormatDate();
	
	var comment = {
			commentcontent : $("#commentcontent").val(),
			publishtime : time,
			commentstatus : $("#commentstatus").val(),
			storeid : $("#commentid").val(),
			ordernumber : $("#commenton").val()
	}
	//alert($("#commentcontent").val());
	//alert($("#commentstatus").val());
	//alert($("#commentid").val());
	//alert($("#commenton").val());
	//alert(time);
	$.ajax({
		type:"POST",
		datatype:"json",
		url:"/OrderTakeOutFood/CustomerAddCommentServlet",
		data:comment,
		success:function(res){
			if(res.code == 200)
				{
				alert(res.message)
				}
			else{
				alert("评论失败")
			}
		},
		error:function(){
			alert("失败")
		}
	});
};
function status(i,obj){
	 $("#commentstatus").val(i)
	 $("#tip").attr("style","display:block;")
	// alert($(obj).html());
	 $("#tip").html("已选"+$(obj).html());
}
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
}
</script>		
</body>
</html>