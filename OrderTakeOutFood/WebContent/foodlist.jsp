<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

		<title>店铺食物页面</title>

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
	
		<link href="css/demo.css" rel="stylesheet" type="text/css" />
		<link href="css/hmstyle.css" rel="stylesheet" type="text/css"/>
		<link href="css/skin.css" rel="stylesheet" type="text/css" />
		<script src="js/jquery.min.js"></script>

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
								<div class="menu-hd login" ><span id="username" target="_top" style="color:#ddd"></span></div>
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
				
				

		<!-- 店铺页面 -->
		<div class="am-container shoplist ">
					<!--店铺（标题行）-->
					<div class="dp-title" style="margin-top:20px;background-color:white;color:grey;width:1200px; margin-bottom:10px;min-width:1000px;height:225px">
						<!-- 左侧 -->
						<div style="float:left">
						<div id = "storepicture" style=" text-align:center;width:300px;height:225px;display: inline-block; ">
							
						</div>
						<div style="color: #4a4a4a;text-align:center;font-weight: bold;width:250px;height:100px;font-size:25px;float:right;margin-top:55px">
							 店铺名称:<span id="storename" style="font-size:25px;"></span>
							 <br><br>评分:<span id="rank" style="font-size:25px;"></span>
						</div>
						</div>
						<!-- 右侧 -->
						<div style="float:right">
						<div style="background-color:#F8F8F8; background-color:white;display: inline-block;">
							<div style="margin-top:50px;text-align:center;font-weight: bold;font-family:宋体;width:200px;height:80px;font-size:20px;">平均送达时间(分钟)</div>
							
							<div id = "deliverytime" style="vertical-align:middle;text-align:center;font-weight: bold;width:200px;color: #4a4a4a;height:30px;font-size:25px"></div>
						</div>
						<div style="background-color:#F8F8F8; background-color:white;display: inline-block;">
							<div style="margin-top:50px;text-align:center;font-weight: bold;font-family:宋体;width:200px;height:80px;font-size:20px;">起送费(元)</div>
							
							<div id = "sendingfee" style="vertical-align:middle;text-align:center;font-weight: bold;width:200px;color: #4a4a4a;height:30px;font-size:25px"></div>
						</div>
						<div style="background-color:#F8F8F8; background-color:white;display: inline-block;">
							<div style="margin-top:50px;text-align:center;font-weight: bold;font-family:宋体;width:200px;height:80px;font-size:20px;">配送费(元)</div>
							
							<div id = "deliverycost" style="vertical-align:middle;text-align:center;font-weight: bold;width:200px;color: #4a4a4a;height:30px;font-size:25px"></div>
						</div>
						
						</div>
					</div>
					
					<!-- 食物列表/评论/安全证书 -->
					<div class="introduce">
					<div class="introduceMain">
						<div class="am-tabs" data-am-tabs>
							<!-- 页内菜单栏 -->
							<ul class="am-avg-sm-3 am-tabs-nav am-nav am-nav-tabs">
								<li class="am-active">
									<a href="#">
									<span class="index-needs-dt-txt">菜单</span></a>

								</li>
								<li>
									<a href="#">
										<span class="index-needs-dt-txt">评价</span></a>

								</li>
								<li>
									<a href="#">
										<span class="index-needs-dt-txt">食品安全档案</span></a>
								</li>
							</ul>

							<div class="am-tabs-bd">
							<!--食品列表 -->
							<div class="am-tab-panel am-fade am-in am-active">
							<div id="foodlist">	
					  		</div>
							
					    
							<div class="clear"></div>
							</div>
							<!-- 评论区 -->
							<div class="am-tab-panel am-fade">
									
                                    <div class="actor-new">
                                    	<div class="rate">                
                                    		<strong>100<span>%</span></strong><br> <span>好评度</span>            
                                    	</div>
                                        <dl>                    
                                            <dt>买家印象</dt>                    
                                            <dd class="p-bfc">
                                            			<q class="comm-tags"><span>好吃</span><em>(2177)</em></q>
                                            			<q class="comm-tags"><span>还不错</span><em>(1860)</em></q>
                                            			<q class="comm-tags"><span>可以</span><em>(1823)</em></q>
                                            			<q class="comm-tags"><span>味道很好</span><em>(1689)</em></q>
                                            			<q class="comm-tags"><span>一般般</span><em>(1488)</em></q>
                                            			<q class="comm-tags"><span>下次再来</span><em>(1392)</em></q>
                                            			
                                            </dd>                                           
                                         </dl> 
                                    </div>	
                                    <div class="clear"></div>
									<div class="tb-r-filter-bar">
										<ul class=" tb-taglist am-avg-sm-4">
											<li class="tb-taglist-li tb-taglist-li-current">
												<div class="comment-info">
													<span>全部评价</span>
													<span class="tb-tbcr-num">(32)</span>
												</div>
											</li>

											<li class="tb-taglist-li tb-taglist-li-1">
												<div class="comment-info">
													<span>好评</span>
													<span class="tb-tbcr-num">(32)</span>
												</div>
											</li>

											<li class="tb-taglist-li tb-taglist-li-0">
												<div class="comment-info">
													<span>中评</span>
													<span class="tb-tbcr-num">(32)</span>
												</div>
											</li>

											<li class="tb-taglist-li tb-taglist-li--1">
												<div class="comment-info">
													<span>差评</span>
													<span class="tb-tbcr-num">(32)</span>
												</div>
											</li>
										</ul>
									</div>
									<div class="clear"></div>
									<!-- 评论区 -->
									<ul class="am-comments-list am-comments-list-flip">
										<li class="am-comment">
											<!-- 评论容器 -->
											<a href="">
												<img class="am-comment-avatar" src="image/hwbn40x40.jpg" />
												<!-- 评论者头像 -->
											</a>

											<div class="am-comment-main">
												<!-- 评论内容容器 -->
												<header class="am-comment-hd">
													<!--<h3 class="am-comment-title">评论标题</h3>-->
													<div class="am-comment-meta">
														<!-- 评论元数据 -->
														<a href="#link-to-user" class="am-comment-author">b***1 (匿名)</a>
														<!-- 评论者 -->
														评论于
														<time datetime="">2018年6月11日 17:46</time>
													</div>
												</header>

												<div class="am-comment-bd">
													<div class="tb-rev-item " data-id="255776406962">
														<div class="J_TbcRate_ReviewContent tb-tbcr-content ">
															好吃，还不错！
														</div>
													</div>

												</div>
												<!-- 评论内容 -->
											</div>
										</li>
										<li class="am-comment">
											<!-- 评论容器 -->
											<a href="">
												<img class="am-comment-avatar" src="image/hwbn40x40.jpg" />
												<!-- 评论者头像 -->
											</a>

											<div class="am-comment-main">
												<!-- 评论内容容器 -->
												<header class="am-comment-hd">
													<!--<h3 class="am-comment-title">评论标题</h3>-->
													<div class="am-comment-meta">
														<!-- 评论元数据 -->
														<a href="#link-to-user" class="am-comment-author">l***4 (匿名)</a>
														<!-- 评论者 -->
														评论于
														<time datetime="">2018年10月28日 11:33</time>
													</div>
												</header>

												<div class="am-comment-bd">
													<div class="tb-rev-item " data-id="255095758792">
														<div class="J_TbcRate_ReviewContent tb-tbcr-content ">
															还行。
														</div>
														
													</div>

												</div>
												<!-- 评论内容 -->
											</div>
										</li>
										<li class="am-comment">
											<!-- 评论容器 -->
											<a href="">
												<img class="am-comment-avatar" src="image/hwbn40x40.jpg" />
												<!-- 评论者头像 -->
											</a>

											<div class="am-comment-main">
												<!-- 评论内容容器 -->
												<header class="am-comment-hd">
													<!--<h3 class="am-comment-title">评论标题</h3>-->
													<div class="am-comment-meta">
														<!-- 评论元数据 -->
														<a href="#link-to-user" class="am-comment-author">b***1 (匿名)</a>
														<!-- 评论者 -->
														评论于
														<time datetime="">2018年11月02日 17:46</time>
													</div>
												</header>

												<div class="am-comment-bd">
													<div class="tb-rev-item " data-id="255776406962">
														<div class="J_TbcRate_ReviewContent tb-tbcr-content ">
															可以吧！味道不错
														</div>
													</div>

												</div>
												<!-- 评论内容 -->
											</div>
										</li>
										<li class="am-comment">
											<!-- 评论容器 -->
											<a href="">
												<img class="am-comment-avatar" src="image/hwbn40x40.jpg" />
												<!-- 评论者头像 -->
											</a>

											<div class="am-comment-main">
												<!-- 评论内容容器 -->
												<header class="am-comment-hd">
													<!--<h3 class="am-comment-title">评论标题</h3>-->
													<div class="am-comment-meta">
														<!-- 评论元数据 -->
														<a href="#link-to-user" class="am-comment-author">h***n (匿名)</a>
														<!-- 评论者 -->
														评论于
														<time datetime="">2018年11月25日 12:48</time>
													</div>
												</header>

												<div class="am-comment-bd">
													<div class="tb-rev-item " data-id="258040417670">
														<div class="J_TbcRate_ReviewContent tb-tbcr-content ">
															味道很好，满分。
														</div>
													</div>
												</div>
												<!-- 评论内容 -->
											</div>
										</li>

										<li class="am-comment">
											<!-- 评论容器 -->
											<a href="">
												<img class="am-comment-avatar" src="image/hwbn40x40.jpg" />
												<!-- 评论者头像 -->
											</a>

											<div class="am-comment-main">
												<!-- 评论内容容器 -->
												<header class="am-comment-hd">
													<!--<h3 class="am-comment-title">评论标题</h3>-->
													<div class="am-comment-meta">
														<!-- 评论元数据 -->
														<a href="#link-to-user" class="am-comment-author">b***1 (匿名)</a>
														<!-- 评论者 -->
														评论于
														<time datetime="">2018年11月02日 17:46</time>
													</div>
												</header>

												<div class="am-comment-bd">
													<div class="tb-rev-item " data-id="255776406962">
														<div class="J_TbcRate_ReviewContent tb-tbcr-content ">
															一般般
														</div>
													</div>

												</div>
												<!-- 评论内容 -->
											</div>
										</li>
										<li class="am-comment">
											<!-- 评论容器 -->
											<a href="">
												<img class="am-comment-avatar" src="image/hwbn40x40.jpg" />
												<!-- 评论者头像 -->
											</a>

											<div class="am-comment-main">
												<!-- 评论内容容器 -->
												<header class="am-comment-hd">
													<!--<h3 class="am-comment-title">评论标题</h3>-->
													<div class="am-comment-meta">
														<!-- 评论元数据 -->
														<a href="#link-to-user" class="am-comment-author">l***4 (匿名)</a>
														<!-- 评论者 -->
														评论于
														<time datetime="">2018年10月28日 11:33</time>
													</div>
												</header>

												<div class="am-comment-bd">
													<div class="tb-rev-item " data-id="255095758792">
														<div class="J_TbcRate_ReviewContent tb-tbcr-content ">
															好评，点赞！
														</div>
													</div>

												</div>
												<!-- 评论内容 -->
											</div>
										</li>
										<li class="am-comment">
											<!-- 评论容器 -->
											<a href="">
												<img class="am-comment-avatar" src="image/hwbn40x40.jpg" />
												<!-- 评论者头像 -->
											</a>

											<div class="am-comment-main">
												<!-- 评论内容容器 -->
												<header class="am-comment-hd">
													<!--<h3 class="am-comment-title">评论标题</h3>-->
													<div class="am-comment-meta">
														<!-- 评论元数据 -->
														<a href="#link-to-user" class="am-comment-author">b***1 (匿名)</a>
														<!-- 评论者 -->
														评论于
														<time datetime="">2017年11月02日 17:46</time>
													</div>
												</header>

												<div class="am-comment-bd">
													<div class="tb-rev-item " data-id="255776406962">
														<div class="J_TbcRate_ReviewContent tb-tbcr-content ">
															分量太少了。
														</div>
													</div>

												</div>
												<!-- 评论内容 -->
											</div>
										</li>
										<li class="am-comment">
											<!-- 评论容器 -->
											<a href="">
												<img class="am-comment-avatar" src="image/hwbn40x40.jpg" />
												<!-- 评论者头像 -->
											</a>

											<div class="am-comment-main">
												<!-- 评论内容容器 -->
												<header class="am-comment-hd">
													<!--<h3 class="am-comment-title">评论标题</h3>-->
													<div class="am-comment-meta">
														<!-- 评论元数据 -->
														<a href="#link-to-user" class="am-comment-author">h***n (匿名)</a>
														<!-- 评论者 -->
														评论于
														<time datetime="">2017年11月25日 12:48</time>
													</div>
												</header>

												<div class="am-comment-bd">
													<div class="tb-rev-item " data-id="258040417670">
														<div class="J_TbcRate_ReviewContent tb-tbcr-content ">
															没有做出任何评价。
														</div>
													</div>
												</div>
												<!-- 评论内容 -->
											</div>
										</li>
									</ul>

									<div class="clear"></div>


									<div class="tb-reviewsft">
										<div class="tb-rate-alert type-attention">购买前请查看该商品的 <a href="#" target="_blank">购物保障</a>，明确您的售后保障权益。</div>
									</div>

								</div>
							<!--  食品档案区 -->
							<div class="am-tab-panel am-fade">
									<div >
										
												<div  style="height:400px;width:400px;display: inline-block;positon:relative;top:20px">
													<img src="image/zhegnshu.JPG">
												</div>
												<div style="font-size:20px;height:400px;width:400px;display: inline-block">
													食品安全量化分级 B<br/>
													上年度检查等级： B<br/>
													检查日期：2017-06-30<br/>
													单位名称： <br/>
													许可证号： <br/>
													法定代表人（负责人）： <br/>
													 
												</div>
											
											
									</div>

							
								</div>

							</div>

						</div>

	
					</div>

				</div>
		
					
		</div>
		
		<!--  购物车 -->
		<div  id = "shopcar" style="height: 60px;width:400px;background-color:#D8D8D8;position: fixed;z-index:9999;bottom: 0;right:0;">
			
			
			<div class="left" style="float:left;width:300px;height:60px;font-size:20px">
				<div style="margin-top:20px;margin-left:10px;font-size:15px;height:40px;float:left">
				已选：
				</div>
				
				<span id="cartN" style="margin-top:20px;margin-left:10px;font-size:15px;height:40px;float:left">
				<span id="totalcountshow" style="font-size:20px;font-weight:600"></span>份　总计：￥<span id="totalpriceshow" style="font-size:20px;font-weight:600"></span>
				<div style=" margin-left:10px;font-size:15px;height:40px;float:right">
				元
				</div>
			</span></div>
			<div class="right" style="width:70px;height:60px;background-color:#686868;display: inline-block;position: fixed;right:0;">
				<a id="btnselect" class="xhlbtn  disable" href="javascript:void(0)">
				<a class="fukuan"><img src="image/gouwu.JPG" ></a>
				</a> 
			</div>
		</div>
		
		
		<!-- 显示订单 -->
		<div style="width:400px; background-color:white;position: fixed;z-index:9999;bottom: 60px;right:0;border : 1px solid  #ebebeb;">
			<table   style="margin:10px">
				<tr >
				<td  style='font-weight:600;width:300px;font-size:25px;margin:10px; border-bottom: 1px dotted  #ebebeb;'>
				商品名称
				</td>
				<td style='font-weight:600;width:50px;font-size:25px;margin:5px; border-bottom: 1px dotted  #ebebeb;' >
				总价
				</td>
				</tr>
			</table>
			<table id="mydiv" style="margin:10px">
			</table>
		</div>
				
		<br/>
		<br/>
		<!-- 脚注 -->
		<div class="footer " align="center">
						<div class="footer-hd " >
							<p>
								<a href="# "> </a>
								<b>|</b>
								<a href="home.jsp">网站首页</a>
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
var foodidlist = [];


$(function () {  
	//加的效果  
	$("#foodlist").on("click",".add",function () {  
		$(this).prevAll().css("display", "inline-block");  
		var n = $(this).prev().text();  
		console.log(n);
		var num = parseInt(n) + 1;  
		if (num == 0) { return; }  
		$(this).prev().text(num);  
		var danjia = $(this).next().text();//获取单价  
		console.log(danjia)
		var dpname = $(this).next().next().text();//或许店铺名字
		var a = $("#totalpriceshow").html();//获取当前所选总价  
		$("#totalpriceshow").html((a * 1 + danjia * 1).toFixed(2));//计算当前所选总价  
		
		var nm = $("#totalcountshow").html();//获取数量  
		$("#totalcountshow").html(nm*1+1);  
		jss();//<span style='font-family: Arial, Helvetica, sans-serif;'></span>   改变按钮样式
		var str="";
		$(".list").each(function(){
				if(dpname==$(this).html()){
					str =$(this).html();
					//alert("有相同的")
				}
			
		})
		//列表空则添加行并设置数据；列表不为空而商品名存在则数量加；不存在则添加该商品
		if(nm==0){
		$("#mydiv").append("<tr ><td class='list' style='height:50px;width:300px;font-size:25px;margin:10px; border-bottom: 1px dotted  #ebebeb;vertical-align:middle'></td><td class='sump' style='width:30px;font-size:25px;margin:10px; border-bottom: 1px dotted  #ebebeb;vertical-align:middle;' ></td></tr>")
		
		$(".list").html(dpname)  ;
		$(".sump").html(num*danjia) ;
		
		
		}else if(dpname == str){
			$(".list").each(function(){
				if(dpname==$(this).html()){
					$(this).next().html(num*danjia);
				}
			
		})
		}else{
			
			$("#mydiv").prepend("<tr ><td class='list' style='height:50px;width:300px;font-size:25px;margin:10px; border-bottom: 1px dotted  #ebebeb;vertical-align:middle'></td><td class='sump' style='width:30px;font-size:25px;margin:10px; border-bottom: 1px dotted  #ebebeb;vertical-align:middle;' ></td></tr>")
			$(".list").eq(0).html(dpname)  ;
			$(".sump").eq(0).html(num*danjia) ;
			//alert("没有")
			
		}
		
	});  
	
	//点击购物的效果
	$("#shopcar").on("click",".fukuan",function(){
		var sumlist = new Array();
		//var danjia = $(".minus").nextAll(".price").text();//获取单价
		$(".list").each(function(){
			sumlist = sumlist + $(this).html() + " ";
			
		})
		var sumlistp = new Array();
		$(".sump").each(function(){
			sumlistp = sumlistp + parseFloat($(this).html()) + " ";
			
		})
		var foodlist = sumlist.split(" ");
		var foodprice  = sumlistp.split(" ");
		
		alert("确认购物车，跳转订单页面");
		
		if(sumlist != ""){
		var url = "sumlist.jsp?sumlist="+sumlist+"&sumlistp="+sumlistp+"&tolprice="+$("#totalpriceshow").html();;
		window.location.href= url;
		}else{
			alert("请选择商品！")
		}
	});
	
	//减的效果  
	$("#foodlist").on("click",".minus",function () {  
		var n = $(this).next().text();  
		var num = parseInt(n) - 1;  
		var dpname = $(this).next().next().next().next().text();//获取店铺名字
		$(this).next().text(num);//减1  

		var danjia = $(this).nextAll(".price").text();//获取单价  
		var a = $("#totalpriceshow").html();//获取当前所选总价  
		$("#totalpriceshow").html((a * 1 - danjia * 1).toFixed(2));//计算当前所选总价  
		 
		var nm = $("#totalcountshow").html();//获取数量  
		$("#totalcountshow").html(nm * 1 - 1);  
		//如果数量小于或等于0则隐藏减号和数量  
		
		var str="";
		$(".list").each(function(){
				if(dpname==$(this).html()){
					str =$(this).html();
					//alert("有相同的")
				
				//alert($(this).next().html())
				if($(this).next().html() == danjia){
					$(this).next().remove();
					$(this).parent().remove();
					$(this).remove();
					//alert("元素被删除")
				}
				}
		})
		if (num <= 0) {  
			$(this).next().css("display", "none");  
			$(this).css("display", "none");  
			
			
			jss();//改变按钮样式  
			
			 return  
			 
		}  
		
		if(dpname == str){
			
			$(".list").each(function(){
				// alert($(this).next().html())
				if(dpname==$(this).html()){
					//alert($(this).next().text)
						$(this).next().html(num*danjia);
						//alert("元素减一")			
				}
				
			
		})
		}
		
	}); 
	
	
	function jss() {  
		var m = $("#totalcountshow").html();  
		if (m > 0) {  
			$(".right").find("a").removeClass("disable");  
		} else {  
		   $(".right").find("a").addClass("disable");  
		}  
	};
	//选项卡
	$(".con>div").hide();
	$(".con>div:eq(0)").show();	
	
	$(".left-menu li").click(function(){
		$(this).addClass("active").siblings().removeClass("active");
		var n = $(".left-menu li").index(this);
		$(".left-menu li").index(this);
		$(".con>div").hide();
		$(".con>div:eq("+n+")").show();	
	});
});  
</script>
<script>
$(document).ready(function(){
DisplayUsername();
var searchUrl = window.location.href;
var searchData = searchUrl.split("=");
var searchText = decodeURI(searchData[1]);
console.log(searchText);
$.ajax({
	url:"/OrderTakeOutFood/FindStoreByStoreIDServlet",
	type:"POST",
	datatype:"json",
	data:'storeid='+searchText,
	success:function(data){
		var store = data.data.storeList;
		sessionStorage.setItem("store", JSON.stringify(store));
		DisplayStoreInfo(store);
	}
});
$.ajax({
	url:"/OrderTakeOutFood/DisplayFoodBystoreServlet",
	type:"POST",
	datatype:"json",
	data:'storeid='+searchText,
	success:function(data){
		var foodlist = data.data.foodlist;
		var str = "";
		console.log(foodlist[0].foodName);
		for(i=0;i<foodlist.length;i++){
			str += "<div style=\"border: 1px dashed #e5e5e5;display: inline-block;float:left;margin-left:50px \">"+	
			"<div style=\"margin:10px; height:225px;width:300px;\">"+
			"<img src=\"" + "/OrderTakeOutFood"+foodlist[i].foodPicture+"\">"+
		"</div>"+
		"<div style=\"text-align:center ;font-size:20px ;font-family:黑体\">"+
		foodlist[i].foodName + "<br>" +									 
			"<div style=\"font-size:20px;font-weight: bold;height:20px;width:300px;font-family:黑体\">¥"+foodlist[i].foodprice +
			"元</div>"+													
		"</div>	"+
		"<div class=\"btn\" style=\"height:35px;width:300px;float:right\">"+
		 "<button class=\"minus\" style=\"display: none;   height: 35px; width: 35px; float: right;\"> " +
			 "<strong><img src=\"image/down.png\"></strong>"+
		 "</button>"+
		  "<i class=\"num\" style=\"display: none; font-size: 20px; margin: 5px 10px 5px 10px; float: right;\">0</i>"+
		  "<button class=\"add\" style=\" height:35px;width:35px;float:right\"> "+ 
			 "<strong><img src=\"image/up.png\"></strong>"+
		 "</button>"+
		  "<i class=\"price\" style=\"display: none;\">"+ foodlist[i].foodprice +"</i>"+
		  "<label id=\"dianpuname\" style=\"display:none\">" + foodlist[i].foodName + "</label>"+
		"</div>"+
	"</div>";

		};
		console.log(str);
		$("#foodlist").append(str);
	}
});
});
function DisplayStoreInfo(store){
	var image = store.storePicture;
	var str = "";
	str += "<img src=\""+"/OrderTakeOutFood" + image + "\">";
	console.log(str);
	$("#storepicture").append(str);
	$("#storename").html(store.storename);
	$("#rank").html(store.rank);
	$("#deliverycost").html(store.deliverycost);
	$("#sendingfee").html(store.sendingfee);
	$("#deliverytime").html(store.deliverytime);
};
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
};
</script>
</body>
</html>