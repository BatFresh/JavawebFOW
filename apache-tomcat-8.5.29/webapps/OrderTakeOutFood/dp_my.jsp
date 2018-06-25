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
<title>店铺个人中心</title>
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
								<div class="menu-hd login" ><a    target="_top" style="color:#ddd" onclick="out()">退出登陆 </a></div>
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
				
		<!-- 支付页面具体内容 -->
		<div style=" width:1200px;margin-bottom:20px;  height:1200px;   color: #444444; margin-top: 20px;margin-right: auto;margin-bottom: 0px;margin-left: auto">
			<!-- 左边导航框 -->
			<div style="background-color:white; float:left;width:300px;height:1000px">
				<!-- 我的账号 -->
				<div class="dd" style="margin-top:50px;font-size:30px;height:80px; ">
					<a href="dp_food.jsp" style=" margin-top:20px;font-size:25px;">商品管理</a>
				</div>
				 
				<div class="zh" style="margin-top:20px;font-size:30px;height:80px; ">
					<a href="dp_order.jsp"  style=" margin-top:20px;font-size:25px;">订单管理</a>
				</div>
				<div class="zh" style="background-color:#ebebeb; margin-top:20px;height:80px;border-bottom: 2px solid #F03726;">
					<a href=""  style="color: #E4393C;font-weight:600; margin-top:20px;font-size:25px;">店铺信息管理</a>
				</div>
			</div>
			
			 <!-- 弹出框 -->
       			 <div id="light" class="white_content" >
       			 	<a style="width:100%;font-size:25px;text-align:right;float:right; margin :5px;color:#ebebeb" href="javascript:void(0)" onclick="document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none';location.reload();">关闭</a>
       			 	<div style="font-weight:600;height:100px;  width:780px;font-size:30px;text-align:center; margin :10px">
       			 	修改信息
       			 	</div> 
					<div  style=" text-align:center; margin :10px">
					<form id="alertform">
						<table style="margin-left:auto;margin-right:auto;   ">
						<tbody>
						 
						
						<tr>
						<td style=" font-size:25px; margin :10px">
						配送金额：
						</td>
						<td>
						<input name="sendingfee" style=" font-size:25px; margin :10px" type="text" placeholder="输入修改内容">
						</td>
						</tr>
						<tr>
						<td style=" font-size:25px; margin :10px">
						起送金额：
						</td>
						<td>
						<input name="deliverycost" style=" font-size:25px; margin :10px" type="text" placeholder="输入修改内容">
						</td>
						</tr>
						
						<tr>
						<td style=" font-size:25px; margin :10px">
						店铺是否营业：
						</td>
						<td style=" font-size:25px; margin :10px;text-align:left">
						<input name="storestatus" style=" font-size:25px; margin :10px" type="text" placeholder="输入修改内容">
						</td>
						</tr>
						<tr>
						<td style=" font-size:25px; margin :10px">
						店铺电话：
						</td>
						<td style=" font-size:25px; margin :10px;text-align:left">
						<input name="storetel" style=" font-size:25px; margin :10px" type="text" placeholder="输入修改内容">
						</td>
						</tr>
						
						<tr>
						<td style=" font-size:25px; margin :10px">
						店铺图片：
						</td>
						<td style=" font-size:25px; margin :10px;text-align:left">
							<div style="height:auto;width:300px;border: 1px dashed #e5e5e5;">
               					 图片上传前预览：<input   type="file" id="xdaTanFileImg" onchange="xmTanUploadImg(this)" accept="image/*"/>
           						 
           						 <img id="xmTanImg"/>
           						 <div id="xmTanDiv"></div>
       							 
      							  
							</div>
						</td>
						</tr>
						<tr>
						
						<td colspan="2" style="height:100px;margin :20px">
						<a id="alertsure" class="am-btn am-btn-danger" style=" font-size:25px;margin-top:20px ">确认</a>
						</td>
						</tr>
							
						</tbody>
						</table>
						</form>
					</div>
					
					
				</div>
				<div id="fade" class="black_overlay"></div>
			<!--  内容框 -->
			<div id="infoform" style="margin-left:10px;background-color:white; float:left;width:880px;height:1200px">
					
					
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
	$.ajax({
		url:"/OrderTakeOutFood/StoreDisplayInfoServlet",
		type:'get',
		datatype:'json',
		success:function(res){
			var list = res.data.store;
			console.log(res.data);
			//for(i = 0;i<list.length;i++){
				$("#infoform").append('<table style=" text-align:left;   color: #313131; height:500px;width:500px;font-size:30px ">'
				+'<tr ><td><div  style=" text-align:left; width:150px;  color: #313131; font-size:25px;margin:20px;margin-top:30px;">店铺ID：</div></td>'
				+'<td><div id="sid"  style=" text-align:left;   color: #313131; font-size:25px">'+list.storeid+'</div></td></tr>'
				+'<tr ><td><div style=" text-align:left;    color: #313131; font-size:25px;margin:20px;margin-top:30px;;">店铺名字：</div></td>'
				+'<td><div   style=" text-align:left;   color: #313131; font-size:25px">'+list.storename+'</div></td></tr>'
				+'<tr ><td><div style=" text-align:left;   color: #313131; font-size:25px;margin:20px;margin-top:30px;">配送金额：</div></td>'
				+'<td><div  style=" text-align:left;   color: #313131; font-size:25px">￥'+ list.sendingfee+'元</div></td>'
				+'<tr ><td><div style=" text-align:left;   color: #313131; font-size:25px;margin:20px;margin-top:30px;">起送金额：</div></td>'
				+'<td><div  style=" text-align:left;   color: #313131; font-size:25px">￥'+ list.deliverytime+'元</div></td>'
				+'<tr ><td><div style=" text-align:left;   color: #313131; font-size:25px;margin:20px;margin-top:30px;">配送时间：</div></td>'
				+'<td><div  style=" text-align:left;   color: #313131; font-size:25px">￥'+ list.deliverycost+'元</div></td>'
				+'<td><div style="color: #313131; font-size:25px"></div></td></tr><tr ><td><div style=" text-align:left;   color: #313131; font-size:25px;margin:20px;margin-top:30px;;">'
				+'店铺logo图片：</div></td><td><div  style=" text-align:left;   color: #313131; font-size:25px"><img src="/OrderTakeOutFood'+list.storePicture+'"></div></td></tr>'
				+'<tr ><td><div style=" text-align:left;   color: #313131; font-size:25px;margin:20px;margin-top:30px;">店铺排名：</div></td>'
				+'<td><div  style=" text-align:left;   color: #313131; font-size:25px">'+list.rank+'</div></td></tr>'
				+'<tr ><td><div style=" text-align:left;   color: #313131; font-size:25px;margin:20px;margin-top:30px;">店铺地址：</div></td>'
				+'<td><div  style=" text-align:left;   color: #313131; font-size:25px">'+list.storeaddr+'</div></td></tr>'
				+'<tr ><td><div style=" text-align:left;   color: #313131; font-size:25px;margin:20px;margin-top:30px;">店铺号码：</div></td>'
				+'<td><div  style=" text-align:left;   color: #313131; font-size:25px">'+list.storetel+'</div></td></tr>'
				+'<tr ><td><div style=" text-align:left;   color: #313131; font-size:25px;margin:20px;margin-top:30px;">是否营业：</div></td>'
				+'<td><div  style=" text-align:left;   color: #313131; font-size:25px">'+list.storeStatus+'</div></td></tr>'
				+'<tr><td colspan="2" style="height:100px;margin :20px;float:right"><a class="am-btn am-btn-danger" href = "javascript:void(0)" onclick = "alert();document.getElementById(\'light\').style.display=\'block\';document.getElementById(\'fade\').style.display=\'block\'"  style=" font-size:25px; " >修改</a></td></tr></table>');
			//}

		}
		})
})

	//修改
	function alert(){
	$("#alertsure").click(function(){
	 //$("#alertform").html(id2);
 	$.ajax({
       type: "POST",
       url: "/OrderTakeOutFood/StoreModifyInfoServlet",
       data: $("#alertform").serialize(),
       async: false,
	   datatype:"json",
	   success:function(data)
	   {
		
		   console.log(data.message);
		   alert(data.message);
		  // location.reload();
	   }
 	
    }).responseText;
    
	return false;
 });
	
	
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