<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%String path=request.getContextPath();  %>
 <% String id=(String)request.getAttribute("id"); %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		
			<link rel="stylesheet" type="text/css" href="<%=path%>/css/class.css"/>
		
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
				<div class="top_nav3_nav3"><a style="text-decoration: none;color: #666666;" href="<%=path%>/ordercenter.jsp">我的订单</a></div>
				<div class="top_nav3_nav4">公告</div>
				<div class="top_nav3_nav5">更多</div>
			</div>
		</div>
		
		<div class="log_tab">
			<div style="background: url(<%=path%>/img/优购.PNG);" class="log_tab_f1"></div>
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
					<div style="width: 22px;height: 21px;float: left;margin-top: -40px;background: url(img/af.png);background-repeat: no-repeat;"></div>
					<a style="text-decoration: none;color: #666666;" href="buycar.html"><div style="width: 100px; height: 20px;float: left;margin-top: -40px;margin-left: 30px;">购物车(<span style="color: red;">0</span>)件</div></a>
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
				<li><a style="color: red;" href="#">优惠券</a></li>
				<li style="margin-left: 480px;"><a href="#">秒杀</a></li>
			</ul>
		</div>
		
		
		<div class="smallnav">您已选择：全部分类> 运动户外 > <a style="text-decoration: none;display: block;border: 1px deepskyblue  dotted;width: 87px;" href="#">品牌：阿迪达斯</a></div>
		
		<div class="middle_nav">
			<div class="middle_nav_a1">
				<div style="width: 100px;height:40px;background-color: #F6F6F6;text-align: center;line-height: 38px;font-size: 12px;color: #999999;">相关分类</div>
				<ul style="margin-left: 81px;margin-top: -31px;font-size: 12px;color: black;">
					<li style="list-style: none !important;"><a href="#">运动~</a></li>
				</ul>
			</div>
			<div class="middle_nav_a1">
				<div style="width: 100px;height:40px;background-color: #F6F6F6;text-align: center;line-height: 38px;font-size: 12px;color: #999999;">性别</div>
				<ul style="margin-left: 81px;margin-top: -31px;font-size: 12px;color: black;">
					<li style="display: inline"><a href="#">男子(930)</a></li>
					<li style="display: inline;margin-left: 90px;"><a href="#">女子(537)</a></li>
					<li style="display: inline;margin-left: 90px;"><a href="#">中性(187)</a></li>
				</ul>
			</div>
			<div class="middle_nav_a1">
				<div style="width: 100px;height:40px;background-color: #F6F6F6;text-align: center;line-height: 38px;font-size: 12px;color: #999999;">价格</div>
				<ul style="margin-left: 81px;margin-top: -31px;font-size: 12px;color: black;">
					<li style="display: inline"><a href="#">1-50元</li>
					<li style="display: inline;margin-left: 104px;"><a href="#">51-100元（17）</a></li>
					<li style="display: inline;margin-left: 52px;"><a href="#">101-200元（28）</a></li>
					<li style="display: inline;margin-left: 90px;"><a href="#">201-300元（35）</a></li>
					<li style="display: inline;margin-left: 90px;"><a href="#">301-400元（47）</a></li>
				</ul>
			</div>
			<div class="middle_nav_a1">
				<div style="width: 100px;height:40px;background-color: #F6F6F6;text-align: center;line-height: 38px;font-size: 12px;color: #999999;">更多筛选</div>
				<ul style="margin-left: 81px;margin-top: -31px;font-size: 12px;color: black;">
					<li style="display: inline"><a href="#">尺码~</a></li>
					<li style="display: inline;margin-left: 111px;"><a href="#">颜色~</a></li>
					<li style="display: inline;margin-left: 110px;"><a href="#">季节~</a></li>
				</ul>
			</div>
		</div>
		
		<div class="middle_nav_a2">
			<div style="width: 100px;height:40px;background-color: #F6F6F6;text-align: center;line-height: 38px;font-size: 12px;color: #999999;">排序方式:</div>
			<ul style="margin-left: 81px;margin-top: -31px;font-size: 12px;color: black;">
					<li style="display: inline;border: 1px solid red;background-color: #E60012;"><a style="color: white;" href="#">推荐</a></li>
					<li style="display: inline;background-color: #DDDDDD;margin-left: 40px;"><a href="#">新品</a></li>
					<li style="display: inline;background-color: #DDDDDD;margin-left: 40px;"><a href="#">热销</a></li>
					<li style="display: inline;background-color: #DDDDDD;margin-left: 40px;"><a href="#">价格</a></li>
					<li style="display: inline;background-color: #DDDDDD;margin-left: 40px;"><a href="#">折扣</a></li>
					<li style="display: inline;color:red;margin-left: 40px;"><input type="checkbox" name="aa" id="aa"  /><a href="#">18年新品</a></li>
					<li style="display: inline;color:red;margin-left: 40px;"><input type="checkbox" name="aa" id="aa"  /><a href="#">专柜同款</a></li>
					
					<li style="display: inline;color:black;margin-left: 160px;">总共找到 <span style="color: red;">1653</span> 个商品</li>
					<li style="display: inline;background-color: #DDDDDD;margin-left: 40px;">1/10</li>
					<li style="display: inline;background-color: #DDDDDD;margin-left: 40px;"><a href="#">上一页</a></li>
					<li style="display: inline;background-color: #DDDDDD;margin-left: 20px;"><a href="#">下一页</a></li>
				</ul>
		</div>
			
		
			
		<div class="shop_list">
			<a href="shop-details.jsp"><div class="shop_list_a1">
				<div style="width: 232px;height: 240px;background: url(<%=path%>/img/70.jpg);"></div>
				<div style="width: 232px;height: 60px;margin-top: 10px;">adidas阿迪达斯2018男子CLIMACHILL POLOPOLO短T恤D93668</div>
				<p style="color: red;font-size: 15px;">¥1199</p>
			</div></a>
			
			<a href="#"><div class="shop_list_a1">
				<div style="width: 232px;height: 240px;background: url(<%=path%>/img/71.jpg);"></div>
				<div style="width: 232px;height: 60px;margin-top: 10px;">adidas阿迪达斯2018女子PureBOOST X ELEMENT跑步BOOST跑步鞋BB6085</div>
					<p style="color: red;font-size: 15px;">¥1199</p>
			</div></a>
				
			<a href="#"><div class="shop_list_a1">
				<div style="width: 232px;height: 240px;background: url(<%=path%>/img/72.jpg);"></div>
				<div style="width: 232px;height: 60px;margin-top: 10px;">adidas阿迪达斯2018男子Crazy Light Boost 2018Crazy Light篮球鞋DB1069</div>
				<p style="color: red;font-size: 15px;">¥1199</p>
			</div></a>
				
			<a href="#"><div class="shop_list_a1">
				<div style="width: 232px;height: 240px;background: url(<%=path%>/img/73.jpg);"></div>
				<div style="width: 232px;height: 60px;margin-top: 10px;">adidas阿迪达斯2018男子springblade proVISTECH跑步鞋CG4759</div>
				<p style="color: red;font-size: 15px;">¥1199</p>
			</div></a>
				
			<a href="#"><div class="shop_list_a1">
				<div style="width: 232px;height: 240px;background: url(<%=path%>/img/74.jpg);"></div>
				<div style="width: 232px;height: 60px;;margin-top: 10px;">adidas阿迪达斯2018女子UltraBOOST w跑步BOOST跑步鞋BB6153</div>
				<p style="color: red;font-size: 15px;">¥1199</p>
			</div></a>
			
		</div>
			
			
		<div class="shop_list">
			<a href="#"><div class="shop_list_a1">
				<div style="width: 232px;height: 240px;background: url(<%=path%>/img/75.jpg);"></div>
				<div style="width: 232px;height: 60px;margin-top: 10px;">adidas阿迪达斯2018男子CLIMACHILL POLOPOLO短T恤D93668</div>
				<p style="color: red;font-size: 15px;">¥1199</p>
			</div></a>
			
			<a href="#"><div class="shop_list_a1">
				<div style="width: 232px;height: 240px;background: url(<%=path%>/img/76.jpg);"></div>
				<div style="width: 232px;height: 60px;margin-top: 10px;">adidas阿迪达斯2018女子PureBOOST X ELEMENT跑步BOOST跑步鞋BB6085</div>
					<p style="color: red;font-size: 15px;">¥1199</p>
			</div></a>
				
			<a href="#"><div class="shop_list_a1">
				<div style="width: 232px;height: 240px;background: url(<%=path%>/img/77.jpg);"></div>
				<div style="width: 232px;height: 60px;margin-top: 10px;">adidas阿迪达斯2018男子Crazy Light Boost 2018Crazy Light篮球鞋DB1069</div>
				<p style="color: red;font-size: 15px;">¥1199</p>
			</div></a>
				
			<a href="#"><div class="shop_list_a1">
				<div style="width: 232px;height: 240px;background: url(<%=path%>/img/78.jpg);"></div>
				<div style="width: 232px;height: 60px;margin-top: 10px;">adidas阿迪达斯2018男子springblade proVISTECH跑步鞋CG4759</div>
				<p style="color: red;font-size: 15px;">¥1199</p>
			</div></a>
				
			<a href="#"><div class="shop_list_a1">
				<div style="width: 232px;height: 240px;background: url(<%=path%>/img/79.jpg);"></div>
				<div style="width: 232px;height: 60px;;margin-top: 10px;">adidas阿迪达斯2018女子UltraBOOST w跑步BOOST跑步鞋BB6153</div>
				<p style="color: red;font-size: 15px;">¥1199</p>
			</div></a>
			
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
