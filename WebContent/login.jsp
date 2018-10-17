<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<% String path=request.getContextPath(); %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title></title>
		<script type="text/javascript" src="js/jquery-1.11.0.js" ></script>
		<script type="text/javascript" src="js/bootstrap.js" ></script>
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/login.css"/>
	</head>
	<body>
		<div class="top_nav">
			<div class="top_nav1">时尚商城</div>
			<div class="top_nav2">
					<div style="width: 13px;height: 13px;margin-top: 10px;background: url(img/手机.png);"></div>
					<div style="float: left;margin-left: 18px;margin-top: -20px;">手机优购</div>
			</div>
			<div class="top_nav3">
				<div class="top_nav3_nav1"><a style="text-decoration: none;color: red;" href="login.jsp">登陆</a>&nbsp;&nbsp;&nbsp;&nbsp;<a style="text-decoration: none;color: red;" href="zhuce.jsp">注册</a></div>
				<div class="top_nav3_nav2">我的优购</div>
				<div class="top_nav3_nav3"><a style="text-decoration: none;color: #666666;" href="order.html">我的订单</a></div>
				<div class="top_nav3_nav4">公告</div>
				<div class="top_nav3_nav5">更多</div>
			</div>
		</div>
		
		
		<div style="width: 990px;height: 42px;margin-left: 200px;">
			<div style="width: 195px; height: 42px;border-right: 1px solid #E6E6E6;margin-left: 30px; background: url(img/优购2.PNG);background-repeat:no-repeat;margin-left: 162px;margin-top: -3;"></div>
			<div style="width: 170px;height: 42px;margin-left: 358px;margin-top: -43px; text-align: center;line-height: 42px;color: #666666;font-family: '微软雅黑';font-size: 18px;">用户登录</div>
			
		</div>
		
		<div style="width: 100%;height: 533px;margin-top: 20px;background: url(img/21.jpg);">
			<div style="width: 378px;height: 450px;margin-left: 983px;margin-top: 50px;background-color: white;">
				<div class="aa">
					<div class="ab"><a href="#">账号密码登陆</a></div>
					<div class="ac"><a href="#">手机快捷登陆</a></div>
				</div>
			</div>
			
		<form action="login" method="post">
			<div class="ad">
					<div>
					<div style="width: 48px; height: 36px;;margin-left: 60px;background: url(img/人.png);"></div>
					<input style="width: 235px;height: 36px;margin-left: 60px;color: black;font-size: 12px;font-family: '微软雅黑';text-align: center;" type="text" name="id" id="id" placeholder="手机号/会员名称/邮箱" /></div>
					<div style="width: 48px; height: 36px;margin-left: 60px;background: url(img/锁.png);"></div>
					<input style="width: 235px;height: 36px;margin-left: 60px;color: black;font-size: 12px;font-family: '微软雅黑';text-align: center;" type="password" name="password" id="password" placeholder="请输入密码"    />
				
					
				
				<a href="#">
					<input class="a2" type="button" onclick="hehe();" value='登陆' /> 
				</a>
				
				<p style="text-align: right;font-size: 12px;"><a href="#">忘记密码？</a></p><br />
			</div>
		</form>
			
			<div class="bd" >
				<hr  width="300px" color="#ADFF2F" size="2"/>合作登陆
				<a href="#"><div class="be"></div></a>
				<a href="#"><div class="bf"></div></a>	
				
			</div>
			<div style="width: 100px;height: 30px;;margin-left: 1125px;margin-top: 0px;">
				<a href="#"><div style="width: 50px;height: 50px;background: url(img/icon_QQ.png);"></div></a>
				<a href="#"><div style="width: 50px;height: 50px;margin-left: 60px;margin-top: -50px;background: url(img/微信.png);background-repeat: no-repeat;"></div></a>
			</div>
		</div>
		<p style="text-align: center;font-family: '微软雅黑'; font-size: 12px;">Copyright © 2011-2014 Yougou Technology Co., Ltd. 粤ICP备09070608号-4 增值电信业务经营许可证：粤 B2-20090203</p>
	</body>
	
	<script type="text/javascript">
//判断密码，用户名是否为空
	function hehe(){
		var id=$("#id").val();
		var password=$("#password").val();
		if(id==null||id==""){
			alert("请输入用户名");
			return;
		}
		if(password==null||password==""){
			alert("请输入密码");
			return;
		}
//用ajax访问servlet，进行用户名和密码的验证	
		$.ajax({
			type :'post',//请求方式		
			url: '<%=path%>/login',
			dataType :'text',//返回数据格式有xml  html   json  text
			data:{"id":id,"password":password},
			
			success:function(data){//与服务器交互成功的回调函数
				//alert("data="+data);
				if(data=="error"){
					alert("您输入的信息不匹配");
				}else{
					window.location.href='pages/ceshi.jsp';
				}
			}
		});
	}
	

	
</script>
	
</html>
