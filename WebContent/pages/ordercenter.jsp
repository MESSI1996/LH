<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%String path=request.getContextPath(); %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		
			<link rel="stylesheet" type="text/css" href="<%=path%>/css/ordercenter.css"/>
		
	</head>
	<body>
		
		<div class="top_nav">
			<div class="top_nav1">时尚商城</div>
			<div class="top_nav2">
					<div style="width: 13px;height: 13px;margin-top: 11px;background: url(<%=path%>/img/手机.png);"></div>
					<div style="float: left;margin-left: 15px;margin-top: -21px;">手机优购</div>
			</div>
			<div class="top_nav3">
				<div class="top_nav3_nav1"><a style="text-decoration: none;color: red;" href="#">欢迎，${id}</a>&nbsp;&nbsp;&nbsp;&nbsp;<a style="text-decoration: none;color: red;" href="<%=path%>/login.jsp">退出</a></div>
				<div class="top_nav3_nav2">我的优购</div>
				<div class="top_nav3_nav3"><a style="text-decoration: none;color: #666666;" href="#">我的订单</a></div>
				<div class="top_nav3_nav4">公告</div>
				<div class="top_nav3_nav5">更多</div>
			</div>
		</div>
		
		<div class="log_tab">
			<div class="log_tab_f1"></div>
			<div class="log_tab_f2">
				<form>
				<input style="width: 450px; height: 30px;margin-top: 4px;border: 3px solid black;" type="search"/>
					<a href="#"><div style="width: 28px; height: 28px;float: right; background: url(<%=path%>/img/搜索框.png);margin-right: 40px;margin-top: 4px;">
					</div>
					</a>
				<div class="log_tab_f2_1">
					<ul style="margin-top: -3px;margin-left: -40px;">
						<li style="display: inline;font-size: 12px;"><a href="#">运动18年新品&nbsp;|</a></li>
						<li style="display: inline;font-size: 12px;color: red;"><a style="text-decoration: none;color: red;"href="#">男女鞋秋季新品&nbsp;|</a></li>
						<li style="display: inline;font-size: 12px;"><a  href="#">热销凉鞋&nbsp;|</a></li>
						<li style="display: inline;font-size: 12px;"><a  href="#">小白鞋&nbsp;|</a></li>
						<li style="display: inline;font-size: 12px;"><a  href="#">卫衣&nbsp;|</a></li>
						<li style="display: inline;font-size: 12px;"><a  style="color: red;" href="#">跑步鞋&nbsp;|</a></li>
						<li style="display: inline;font-size: 12px;"><a  href="#">T恤&nbsp;|</a></li>
					<li style="display: inline;font-size: 12px;"><a  href="#">运动裤&nbsp;|</a></li>
					</ul>
				</div>
				</form>
			</div>
			
			<a style="text-decoration: none;color: black;" href="#"><div class="log_tab_f3">
				<div  style="width: 142px;height: 19px;margin-top: 39px;text-align: center;font-size: 14px;">
					<div style="width: 22px;height: 21px;float: left;margin-top: -40px;background: url(<%=path%>/img/af.png);background-repeat: no-repeat;"></div>
					<a style="text-decoration: none;color: #666666;" href="buycar.jsp"><div style="width: 100px; height: 20px;float: left;margin-top: -40px;margin-left: 30px;">购物车(<span style="color: red;">0</span>)件</div></a>
					<span style="color: red;">百丽旗下购物网站</span>
				</div>
			</div></a>
			
		</div>
		
		
		<div class="shuiping_nav">
			<div style="width: 203px; height: 39px;margin-top: -2px;margin-left: 207px;text-align: center;color: white;background-color: black;font-family: '微软雅黑';font-size: 19px;font-weight: bold;">
			<div style="padding-top: 7px;"><a style="text-decoration: none;color: white;" href="#">全部商品种类</a></div>
			</div>
			<ul >
				<li><a href="#">运动馆</a></li>
				<li><a href="#">鞋靴馆</a></li>
				<li><a href="#">儿童馆</a></li>
				<li><a style="color: red; background: ;" href="#">优惠券</a></li>
				<li style="margin-left: 480px;"><a href="#">秒杀</a></li>
			</ul>
		</div>
		
		
		<div class="smallnav">您当前位置：<a href="#">首页</a> > 我的优购 >我的订单</div>
		
		
			
		<div class="shop_details">
			<div class="shop_details_a1">
				<a class="xxxx" href="#">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我的优购</a>
				<ul>
					<li style="color: #9999B6;">交易中心</li>
					<li ><a style="color: red;" href="#">我的订单</a></li>
					<li><a href="#">我的收藏</a></li>
					<li style="margin-left: 37px;"><a href="#">商品评论/晒单</a></li>
					<li style="margin-left: 40px;"><a href="#">站内消息（0）</a></li>
				</ul>
				
				<ul>
					<li style="color: #9999B6;">我的资产</li>
					<li style="margin-left: 17px;"><a href="#">我的优惠券</a></li>
					<li  style="margin-left: 17px;"><a href="#">我的礼品卡</a></li>
					<li style="margin-left: 2px;"><a href="#">我的积分</a></li>
				</ul>
				
				<ul>
					<li style="color: #9999B6;">个人设置</a></li>
					<li style="margin-left: 4px;"><a href="#">安全设置</a></li>
					<li  style="margin-left: 37px;"><a href="#">我的收货地址</a></li>
				</ul>
				
				<ul>
					<li style="color: #9999B6;">售后服务</a></li>
					<li style="margin-left: 17px;"><a href="#">查询退换货</a></li>
					<li  style="margin-left: 18px;"><a href="#">申请退换货</a></li>
				</ul>
				
			</div>
			
			<div class="shop_details_a2">
				<span style="font-family: '微软雅黑';font-weight: bold;margin-left: 10px;">我的订单</span>
			<div class="shop_details_a2_a1">
					
				<div style="width: 42px;background-color: white;">显示：</div>
				<div style="width: 120px;">6个月内订单</div>
				<div>所有状态</div>
				<div>支付状态</div>
				<div><input  type="checkbox" name="" id="" value="" />已取消</div>
				<div style="width: 196px">订单号</div>
				<div style="background-color: #FCFCFC;">搜索订单</div>
			</div>
			
			<div class="shop_details_a2_a2">
				<div class="shop_details_a2_a2_a1">
					
				</div>
				<div class="shop_details_a2_a2_a2">
				您最近没购买过任何商品,先去挑<a href="first.jsp">商品</a>吧！~ 
				</div>
			</div>
			
			</div>
			
			<div class="shop_details_a3">
		<a href="classification of goods.jsp">	<div style="background: url(<%=path%>/img/52.jpg);" class="shop_details_3_a1"></div> </a>
			<span style="margin-left: 55px;font-size: 12px;"><a href="#">阿迪达斯¥789</a></span>
		<a href="#">	<div style="background: url(<%=path%>/img/53.jpg);" class="shop_details_3_a2"></div> </a>
			<span style="margin-left: 55px;font-size: 12px;"><a href="#">阿迪达斯¥589</a></span>
		<a href="#">	<div style="background: url(<%=path%>/img/54.jpg);" class="shop_details_3_a3"></div> </a>
			
		</div>
				
		</div>
			
		<div class="bottom">
			<div class="bottom_a1">
				<ul>
						<a href="#"><div >	<div style="width: 32px;height: 32px;background: url(<%=path%>/img/61.png);"></div>	<div style="margin-left: 42px;margin-top: -28px;font-size: 15px;"><span style="color: red;">正品</span>保证</div></div></a>
						<a href="#"><div style="margin-left: 301px;margin-top: -24px;">	<div style="width: 32px;height: 32px;background: url(<%=path%>/img/62.png);"></div>	<div style="margin-left: 42px;margin-top: -28px;font-size: 15px;"><span style="color: red;">10天</span>补差价</div></div></a>
						<a href="#"><div style="margin-left: 586px;margin-top: -25px;">	<div style="width: 32px;height: 32px;background: url(<%=path%>/img/63.png);"></div>	<div style="margin-left: 42px;margin-top: -28px;font-size: 15px;"><span style="color: red;">10天</span>退换货</div></div></a>
						<a href="#"><div style="margin-left: 887px;margin-top: -26px;">	<div style="width: 32px;height: 32px;background: url(<%=path%>/img/64.png);"></div>	<div style="margin-left: 42px;margin-top: -28px;font-size: 15px;"><span style="color: red;">09:00-23:00</span>在线客服</div></div></a>
				</ul>
			</div>
			
			
			
		
	</body>
</html>

