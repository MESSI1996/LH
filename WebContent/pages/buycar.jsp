<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%String path=request.getContextPath(); %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
			
		<style type="text/css">*{margin: 0;padding: 0;}
			*{margin: 0;padding: 0;}
			.top_nav{width: 100%;
				height: 32px;
				
				background-color: #F4F4F6;
				text-align: center;
				line-height: 30px;
				}
			.top_nav1{width: 125px; height: 32px;margin-left: 342px;border-left:1px solid white;border-right: 1px white solid;font-size: 13px;color: #666666;}
			.top_nav2{width: 125px; height: 32px;margin-left: 470px;margin-top:-35px;font-size:13px;color: #666666;}
			.top_nav3{width: 625px; height: 32px;;margin-left: 900px;margin-top:-35px; display: -webkit-flex;
    			display: flex;font-size: 12px;font-family: "微软雅黑";}
			.top_nav3_nav1{width: 200px;height: 32px;color: red;}
			.top_nav3_nav2{width: 80px;height: 32px;font-size: 13px;color: #666666;}
			.top_nav3_nav3{width: 67px;height: 32px;}
			.top_nav3_nav4{width: 55px;height: 32px;font-size: 13px;color: #666666;}
			.top_nav3_nav5{width: 55px;height: 32px;font-size: 13px;color: #666666;}
			
			
			.nav1{width: 455px;height: 50px;margin-left: 251px;margin-top: 20px;background: url(<%=path%>/img/31.PNG);}
			.nav2{width: 576px;height: 16px;margin-left: 734px;margin-top: -24px;}
			.nav2 ul li{width: 190px;height: 16px;text-align: center;list-style: none;float: left;font-size: 13px;font-family: "微软雅黑";color: #666666;line-height: 15px;}
			.nav3{width: 1058px;height: 500px;margin-left: 251px;margin-top: 34px;}
			.nav3_a1{width: 1060px;height: 42.8px;border-color: #eee;color: #aaa;font-size: 13px;}	
			.nav3_a1_a1{width: 59px;height: 42.8px;border: 1px solid #EEEEEE;text-align: right;line-height: 40px;float: left;}
			.nav3_a1_a2{width: 369px;height: 42.8px;border: 1px solid #EEEEEE;text-align: center;line-height: 40px;float: left;}
			.nav3_a1_a3{width: 107px;height: 42.8px;border: 1px solid #EEEEEE;text-align: center;line-height: 40px;float: left;}
			.nav3_a1_a4{width: 190px;height: 42.8px;border: 1px solid #EEEEEE;text-align: center;line-height: 40px;float: left;}
			.nav3_a1_a2 ul li{list-style: none;display: inline;color: black;}
			
			.shop{width: 1058px;height: 102.4px;border: 1px solid #EEEEEE;margin-left: ;margin-top: ;text-align: center;}
			.shop_a1{width:40px ;height: 102.4px;float: left;text-align: center;float: left;}
			.shop_a2{width: 300px;height: 90px;float: left;margin-left:95px;margin-top: 4px;background: url(<%=path%>/img/33.PNG);background-repeat: no-repeat;}
			.shop_a2 a{text-decoration: none;margin-left: 96px;margin-top: 26px;color: #666666;font-size: 13px;}
			.shop_a2 a:hover{color: red;}
			
			.shop_a3{width: 109px;height: 90px;float: left;margin-left: 98x;margin-top: 3px;text-align: center;line-height: 45px;color:black;font-size: 13px;}
			.shop_a4{width: 109px;height: 90px;float: left;margin-left: 1px;margin-top: 3px;text-align: center;line-height: 95px;color: black;font-size: 13px;}
			.shop_a5{width: 109px;height: 90px;float: left;margin-left:-3px;margin-top: 2px;text-align: center;line-height: 95px;color: black;font-size: 13px;}
			.shop_a6{width: 109px;height: 90px;float: left;margin-left: 717px;margin-top: -92px;text-align: center;line-height: 95px;color: black;font-size: 13px;}
			.shop_a7{width: 188px;height: 90px;float: left;margin-left: 866px;margin-top: -92px;text-align: center;line-height: 45px;color: black;font-size: 13px;}
		
			.aaa{width: 1058px;height: 42.8px;border-color: #eee;color: #aaa;font-size: 13px;	margin-top: 110px;}
			.bbb{background-color: #EEEEEE;width: 1058px;height: 52px;border-color: #eee;color: #aaa;font-size: 13px;margin-top: -13px;line-height: 20px;	}
			.bbb_a1{margin-left: 40px;width: 100px;height: 50px;border: 1px solid yellow;margin-top: 15px;text-align: center;line-height: 48px;font-size: 16px;background-color: #FDF8F1;border-radius: 4px;}
			.bbb_a1 a{text-decoration: none;color: #666666;}
			.bbb_a1 a:hover{color: red;}
			
			.bbb_a2{margin-left: 146px;width: 100px;height: 50px;margin-top: -52px;text-align: center;line-height: 48px;font-size: 12px;}
			.bbb_a2 a{text-decoration: none;}
			.bbb_a2 a:hover{color: red;}
			
			.bbb_a3{margin-left: 600px;width: 300px;height: 50px;margin-top: -51px;text-align: center;line-height: 48px;font-size: 14px;color: black;}
			.bbb_a4{margin-left: 955px;width: 100px;height: 50px;margin-top: -49px;text-align: center;line-height: 48px;font-size: 16px;background-color: red;border-radius: 9px;}
		
			.ccc{width: 400px;height: 100px;margin-left: 656px;margin-top: 20px;font-size: 13px;color: #666;}
			.ccc ul li{list-style: none;line-height: 34px;}
			
			.ddd{width: 120px;height: 32px;margin-left: 949px;font-size: 13px;color: #666;}
		 	.ddd ul li{list-style: none;line-height: 34px;width: 32px;height: 32px;}
		</style>
	</head>
	<body>
		<div class="top_nav">
			<div class="top_nav1">时尚商城</div>
			<div class="top_nav2">
					<div style="width: 13px;height: 13px;margin-top: 10px;background: url(<%=path%>/img/手机.png);"></div>
					<div style="float: left;margin-left: 18px;margin-top: -21px;font-size: 13px;">手机优购</div>
			</div>
			<div class="top_nav3">
				<div class="top_nav3_nav1"><a style="text-decoration: none;color: red;" href="#">欢迎，${id}</a>&nbsp;&nbsp;&nbsp;<a style="text-decoration: none;color: red;" href="<%=path%>/login.jsp">退出</a></div>
				<div class="top_nav3_nav2">我的优购&nbsp;&nbsp;&nbsp;&nbsp;|</div>
				<div class="top_nav3_nav3"><a style="text-decoration: none;color: #666666;" href="ordercenter.jsp">我的订单&nbsp;&nbsp;|&nbsp;&nbsp;</a></div>
				<div class="top_nav3_nav4">公告&nbsp;&nbsp;&nbsp;&nbsp;|</div>
				<div class="top_nav3_nav5">更多&nbsp;&nbsp;&nbsp;&nbsp;|</div>
			</div>
		</div>
		
		
		
		
		<div class="nav1"></div>
		<div class="nav2">
			<ul>
				<li style="background-color: #f90;color: white;">我的购物车</li>
				<li style="background-color: #E8E8E8;">提交订单中心</li>
				<li style="background-color: #E8E8E8;">成功提交订单</li>
			</ul>
		</div>
		<div class="nav3">
			<div class="nav3_a1">
				<div class="nav3_a1_a1"><input style="border-color:red;" type="checkbox" />全选</div>
				<div class="nav3_a1_a2">商品名称</div>
				<div class="nav3_a1_a3">颜色尺码</div>
				<div class="nav3_a1_a3">单价</div>
				<div class="nav3_a1_a3">数量</div>
				<div class="nav3_a1_a3">小计（元）</div>
				<div class="nav3_a1_a4">操作</div>
			</div>
			<div class="shop">
				<div class="shop_a1"><input style="margin-top: 46px;" type="checkbox"></div>
				<div class="shop_a2">
					<a style="display: block;" href="#">CAT/卡特2017春夏新款男深黑休闲长裤CG2MRPNT203D09</a>
				</div>
				<div class="shop_a3"><span style="color: #aaa;">颜色:</span>深黑<br/><span style="color: #aaa;">尺码:</span>34</div>
				<div class="shop_a4">758</div>
				<div class="shop_a5">数量</div>
				<div class="shop_a6">1516</div>
				<div class="shop_a7">移入收藏夹<br/>删除</div>
			</div>
			
			<div class="aaa">
				<div class="nav3_a1_a1"><input style="border-color:red;" type="checkbox" />全选</div>
				<div class="nav3_a1_a2">
					<ul>
						<li style="margin-left: -195px;">移入收藏夹&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;删除</li>
						
					</ul>
				</div>
				
			</div>
			
			<div class="bbb">
				<div class="bbb_a1"><a href="#">继续购物</a></div>
				<div class="bbb_a2"><a href="#">清空购物车</a></div>
				<div class="bbb_a3">总计（不含运费）：<span style="color: red;font-size: 20px;font-weight: bold;">165</span></div>
				<div class="bbb_a4"><a style="color: white;text-decoration: none;" href="#">结算</a></div>
			</div>
			<div class="ccc">
				<ul>
					<li style="margin-left: 139px;">购物保障：100%正品10天退换货10天补差价</li>
					<li style="margin-left: 238px;">优惠券/礼品卡在下一步使用</li>
					<li style="margin-left: 270px;">帮助我们改进购物流程</li>
				</ul>
					
				</div>
				
				<div class="ddd">
				<ul>
					<li style="float: left;margin-left: 11px;background: url(<%=path%>/img/35.png);"></li>
					<li style="float: left;margin-left: 2px;background: url(<%=path%>/img/36.png);"></li>
					<li style="float: left;margin-left: 2px;background: url(<%=path%>/img/37.png);"></li>
				</ul>
					
				</div>
				
			</div>
			
			
		
	</body>
</html>