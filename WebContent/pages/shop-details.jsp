<%@page import="com.yougou.bean.Image"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%String path=request.getContextPath(); %>
<% List<Image> imagelist=(List)request.getAttribute("imagelist");%>
<% String name=(String)request.getAttribute("name"); %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%String goodsname=(String)request.getAttribute("name"); %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/shopdetails.css"/>
			
		
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
					<ul style="margin-top: -3px;margin-left: -1px;">
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
		
		
		<div class="smallnav">您当前位置：<a href="#">首页</a> > <a href="#">运动户外</a> > <a href="#">运动</a> > <a href="#">专业运动</a> > <a href="#">跑步</a> >  adidas阿迪达斯2018中性PureBOOST跑步BOOST跑步鞋BB6277 </div>
		
		<div class="shop_details">
		
			 <c:if test="${goodsname=='Adidas Boost'}"> 
			<div style="background:url(<%=path%>${imagelist.get(0).url});" id="small">
			 </c:if>
			
			
			
			
			 <c:if test="${name=='KD'}">
			 <div style="background:url(<%=path%>${imagelist.get(2).url});" id="small"> 
		 	</c:if> 
            <!--显示需要查看的放大区域-->
            <div id="search"  ></div>
        </div>
        <!--显示放大区域-->
        <c:if test="${goodsname=='Adidas Boost'}"> 
        <div style="background: url(<%=path%>${imagelist.get(1).url});" id="big"></div>
         </c:if>
         
          <c:if test="${name=='KD'}">
			  <div style="background: url(<%=path%>${imagelist.get(3).url});" id="big"></div>
		 	</c:if> 
         
         
         
        <div class="xx"><a href="http://www.yougou.com/c-adidas/sku-bb6277-100869578-viewpic.shtml">>>查看大图</a></div>
		
		<div class="shop_details_2">
			<h4 style="color: grey;">adidas阿迪达斯2018中性PureBOOST跑步BOOST跑步鞋BB6277</h4><br />
			<h5 style="color: grey;"><a href="#">更多adidas/阿迪达斯商品>></a></h5><br />
			<h4 style="color: red;">BB6277</h4><br />
			<h1 style="color: red;">¥789 <del><span style="font-size: 12px;color: gray">¥1,099</span></del></h1>
			<div class="shop_details_2_a1">
				<ul style="list-style: none;">
					<li style="margin-top: 3px;width: 70px;height: 17px;background-color: red;font-size: 12px;color: white;">限时抢</li>
					<li style="margin-top: -17px;margin-left:94px;width: 147px;height: 17px;background-color: red;font-size: 12px;color: white;">还剩2天18小时31分钟21秒</li>
				</ul>
			</div>
			
			<div class="shop_details_2_a2">
				<ul>
					<li >商品详情</li>
					<li style="color: red;margin-left: 10px;">10.0分</li>
					<li><a href="#">已有7人点评</a></li>
					<li style="margin-left: 260px;"><a href="#">在线咨询</a></li>
				</ul>
				
			</div>
			
			
			
			<div class="shop_details_2_a3">
				<div class="shop_details_2_a3_bb"><span style="margin-left: 20px;font-size: 12px;color: #666666;">颜色:</span>
					<ul>
						<li style="border-radius: 20px;width: 20px;height: 20px;border: 1px solid red;margin-left:55px ;margin-top: -19px;list-style: none;background-color: black;"></li>
						<li style="border-radius: 20px;width: 20px;height: 20px;border: 1px solid red;margin-left:80px ;margin-top: -22px;list-style: none;background-color: #EEEEEE;"></li>
						<li style="border-radius: 20px;width: 20px;height: 20px;border: 1px solid red;margin-left:105px ;margin-top: -22px;list-style: none;background-color: yellow;"></li>
					</ul>
				</div>
				<div class="shop_details_2_a3_bc"><span style="margin-left: 20px;font-size: 12px;color: #666666;">尺码:</span>
					<ul>
						<li>38</li>
						<li>39</li>
						<li>40</li>
						<li>41</li>
					</ul><br />
					<ul>
						<li>41</li>
						<li>42</li>
						<li>43</li>
						<li>44</li>
					</ul>
					<ul>
						<li style="margin-left: 260px;font-size: 12px ;"><a href="#">尺码对照表>></a></li>
					</ul>
				</div>
				
				<div class="shop_details_2_a3_bd">
					<ul style="font-size: 12px;line-height: 23px;list-style: none;margin-left: 22px">
						<li style="font-size: 12px;color: #666666;">数量:</li>
						<li style="width:9px;height: 22px;border: 1px solid black;text-align: center;background-color: white;margin-left: 35px;margin-top: -24px;">+</li>
						<li style="width:15px;height: 22px;border: 1px solid black;text-align: center;background-color: white;margin-left: 55px;margin-top: -24px;">1</li>
						<li style="width:9px;height: 22px;border: 1px solid black;text-align: center;background-color: white;margin-left: 83px;margin-top: -24px;">-</li>
						<li style="width:60px;height: 22px;text-align: center;background-color: white;margin-left: 103px;margin-top: -24px;">已选择</li>
						<li style="color: red;font-weight: bold;width:60px;height: 22px;text-align: center;background-color: white;margin-left: 180px;margin-top: -24px;">白色</li>
					</ul>
					
					<a href="#"> <div style="width: 131px;margin-left: 20px;height: 36px;border: 1px red solid ;margin-top: 20px;background-color:white;font-size: 20px;color: red;font-weight: bold;text-align: center;line-height: 38px;float: left;">立刻购买</div></a>
					<a href="#"><div style="width: 151px;margin-left: 20px;height: 36px;border: 1px red solid ;margin-top: 20px;background-color:red;font-size: 20px;color: white;font-weight: bold;text-align: center;line-height: 38px;float: left;">加入购物车</div></a>
					
				</div>
				<!--<p style="font-size: 12px;color: #666666;margin-left: 22px;margin-top: 10px;">本商品由优购直接发货</p>
				
				<div class="shop_details_2_a3_bd_1" >
					<ul>
						<li>服务承诺</li>
						<li>正品保证</li>
						<li>10天补差价</li>
						<li>10天退换货</li>
					</ul>
				</div>-->
				
				
			</div>
			
		</div>	
		
		
		<div class="shop_details_3">
		<a href="#">	<div style="background: url(<%=path%>/img/52.jpg);" class="shop_details_3_a1"></div> </a>
			<span style="margin-left: 55px;font-size: 12px;"><a href="#">阿迪达斯¥789</a></span>
		<a href="#">	<div style="background: url(<%=path%>/img/53.jpg);" class="shop_details_3_a2"></div> </a>
			<span style="margin-left: 55px;font-size: 12px;"><a href="#">阿迪达斯¥589</a></span>
		<a href="#">	<div style="background: url(<%=path%>/img/54.jpg);" class="shop_details_3_a3"></div> </a>
			
		</div>
			
			
			
		</div>
		
	</body>
	
	
	    <script type="text/javascript">
        var small=document.getElementById("small");
        var big=document.getElementById("big");
        var search=document.getElementById("search");
        //鼠标移入small时显示search和big
        small.onmouseover=function(){
            big.style.display="block";
            search.style.display="block";
        }
        //鼠标移出small时隐藏search和big
        small.onmouseout=function(){
            big.style.display="none";
            search.style.display="none";
        }
        small.onmousemove=function(){
            var evt=event||arguments[0];
            //获取当前鼠标坐标
            var x=evt.clientX-small.offsetLeft-search.offsetWidth/2;
            var y=evt.clientY-small.offsetTop-search.offsetHeight/2;
            //判断当前位置search显示框不能移出small框
            if(x<0){
                search.style.left=0+"px";
            }else if(x>=small.offsetWidth-search.offsetWidth){
                search.style.left=small.offsetWidth-search.offsetWidth+"px";
            }else{
                search.style.left=x+"px";
            }
            if(y<0){
                search.style.top=0+"px";
            }else if(y>=small.offsetHeight-search.offsetHeight){
                search.style.top=small.offsetHeight-search.offsetHeight+"px";
            }else{
                search.style.top=y+"px";
            }
            //计算放大比例，这个比例是大图片和小图片的比例
            var w=400/170;
            //显示放大区域
            big.style.backgroundPosition=(-search.offsetLeft)*w+"px"+" "+(-search.offsetTop)*w+"px";
        }
        
       
	    
        
    </script>
			
	
</html>
