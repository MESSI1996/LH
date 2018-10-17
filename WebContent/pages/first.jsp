<%@page import="com.yougou.bean.Image"%>
<%@page import="com.yougou.bean.Type"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isELIgnored="false"%>
<% String path=request.getContextPath(); %>
<% List<Type> typelist=(List)request.getAttribute("typelist"); %>
<% List<Image> imagelist=(List)request.getAttribute("imagelist");%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>                                         
<html>
	<head>
	<script type="text/javascript" src="<%=path%>/js/jquery-1.11.0.js" ></script>
	<style type="text/css">
		#dxx{
			background-color: white;
			width: 449px;
			margin-right:10px;
		  position: absolute;z-index: 9999;
		}
		
		.aaa{
			background-color: red;
			width:  517px;
			height:64px;
			margin-right:64px;
		 	text-align: center;
		 	line-height: 60px;
		}
		
		#dxxx{
			background-color:white;
			width: 517px;
			height:386px;
			margin-left:202px;
			position: absolute;z-index: 9999;
		}
		#xd{
			padding:8px;
		}
	</style>
		<meta charset="utf-8" />
		<title></title>
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/first.css"/>
	</head>
	<body style="color: #666;">
	
		<div class="top_nav">
			<div class="top_nav1">时尚商城</div>
			<div class="top_nav2">
					<div style="width: 13px;height: 13px;margin-top: 11px;background: url(<%=path%>${imagelist.get(5).url});"></div>
					<div style="float: left;margin-left: 15px;margin-top: -21px;">手机优购</div>
			</div>
			<div class="top_nav3">
				<div class="top_nav3_nav1"><a style="text-decoration: none;color: red;" href="#">欢迎，
				<!-- 1 -->
				<c:if test="${id!=null}">
				${id}
				</c:if>
				<!-- 2 -->
				<c:if test="${id!=null}">
				</a>&nbsp;&nbsp;&nbsp;&nbsp;<a style="text-decoration: none;color: red;" href="<%=path%>/login.jsp">退出</a></div>
				</c:if>
				
				<!-- 3 -->
				<c:if test="${id==null}">
				游客模式
				</c:if>
				<!-- 4 -->
				<c:if test="${id==null}">
				</a>&nbsp;&nbsp;&nbsp;&nbsp;<a style="text-decoration: none;color: red;" href="<%=path%>/zhuce.jsp">注册</a></div>
				</c:if>
				
				<div class="top_nav3_nav2">我的优购</div>
				
				<div class="top_nav3_nav3"><a style="text-decoration: none;color: #666666;" href="ordercenter.jsp">我的订单</a> 
				
				</div>
				<div class="top_nav3_nav4">公告</div>
				<div class="top_nav3_nav5">更多</div>
			</div>
		</div>
		
		<div class="log_tab">
			<div style="background: url(<%=path%>${imagelist.get(4).url});" class="log_tab_f1"></div>
			<div class="log_tab_f2">
				<form>
				<input style="width: 444px; height: 30px;margin-top: 3px;border: 3px solid black;" type="text" id="id"  value="" onkeyup="sou()"/>
				
					<input style="border: 2px solid white;width: 34px; height: 33px;float: right; background: url(<%=path%>${imagelist.get(6).url});margin-right: 40px;margin-top: 4px;" type="button" id="sub" onclick="search()"/>
					
				<div id="dxx">
			
				</div>
				
				
				<div class="log_tab_f2_1" >
					<ul style="margin-top: -3px;margin-left: 2px;">
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
			<div style="padding-top: 7px;"><a style="text-decoration: none;color: white;" href="classification of goods.jsp">全部商品种类</a></div>
			</div>
			<ul >
				<li><a href="#">运动馆</a></li>
				<li><a href="#">鞋靴馆</a></li>
				<li><a href="#">儿童馆</a></li>
				<li><a style="color: red;" href="#">优惠券</a></li>
				<li style="margin-left: 480px;"><a href="#">秒杀</a></li>
			</ul>
		</div>
		
		
		<div class="chose_block">
			<div  class="chose_block_nav1" onmousemove="display()"  onmouseout="f4()">
			
				<ul>
					
					<li><div style="margin-left: 28px;width: 15px;height: 15px;float: left;background: url(<%=path%>/img/高跟鞋.png);"></div>&nbsp;&nbsp;${typelist.get(3).name}
					<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">${typelist.get(9).name}</a>&nbsp;<a href="#">${typelist.get(1).name}</a></p>
					</li>
					
					<li><div style="margin-left: 28px;width: 15px;height: 15px;float: left;background: url(<%=path%>/img/五角星.png);"></div>&nbsp;&nbsp;${typelist.get(12).name}
					<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">${typelist.get(10).name}</a>&nbsp;<a href="#">${typelist.get(1).name}</a></p>
					</li>
					
					<li><div style="margin-left: 28px;width: 15px;height: 15px;float: left;background: url(<%=path%>/img/运动鞋.png);"></div>&nbsp;&nbsp;${typelist.get(18).name}
					<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">${typelist.get(8).name}</a>&nbsp;<a href="#">${typelist.get(0).name}</a>&nbsp;<a href="#">${typelist.get(3).name}</a></p>
					</li>
					
					<li><div style="margin-left: 28px;width: 15px;height: 15px;float: left;background: url(<%=path%>/img/户外鞋.png);"></div>&nbsp;&nbsp;${typelist.get(4).name}
					<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">${typelist.get(6).name}</a>&nbsp;<a href="#">${typelist.get(5).name}</a>&nbsp;<a href="#">${typelist.get(7).name}</a></p>
					</li>
					
					<li><div style="margin-left: 28px;width: 15px;height: 15px;float: left;background: url(<%=path%>/img/童鞋.png);"></div>&nbsp;&nbsp;${typelist.get(15).name}/${typelist.get(14).name}
					<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">${typelist.get(0).name}</a>&nbsp;<a href="#">${typelist.get(16).name}</a>&nbsp;<a href="#">${typelist.get(17).name}</a></p>
					</li>
					
					<li><div style="margin-left: 28px;width: 15px;height: 15px;float: left;background: url(<%=path%>/img/包包.png);"></div>&nbsp;&nbsp;${typelist.get(15).name}/${typelist.get(20).name}
					<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">${typelist.get(2).name}</a>&nbsp;<a href="#">${typelist.get(11).name}</a>&nbsp;<a href="#">${typelist.get(21).name}</a></p>
					</li>
					
				</ul>
			</div>
			<div id="dxxx" onmouseover="f5()">
					<div class="aaa">123</div>
					<div id></div>
					<div></div>
					<div></div>
					<div></div>
					<div></div>
				</div>
			
			
			
			<a href="#"><div  class="chose_block_nav2">
				<marquee style="width:900px;height:480px;"behavior="alternate" bgcolor="pink" scrollamount="12" direction="left"  onmouseover=" this.stop()"  onmouseout="this.start()";>
					<img src="<%=path%>/img/aa.jpg" />
					<img src="<%=path%>/img/ab.jpg" />
					<img src="<%=path%>/img/ac.jpg" />
					<img src="<%=path%>/img/ad.jpg" />
				</marquee>
				
			</div></a>
		</div>
		
		
	<a href="#">	<div class="content">
			<div class="content_a1">
				<div style="background: url(<%=path%>/img/bb.jpg);" class="content_a1_b1">
				</div>
				<div class="content_a1_b2">
					<ul>
						<li style="background: url(<%=path%>/img/bc.jpg);background-repeat: no-repeat;"></li>
						<li style="margin-left: 98px;margin-top: -53px;background: url(<%=path%>/img/bd.jpg);background-repeat: no-repeat;"></li>
					</ul>
					<ul>
						<li style="background: url(<%=path%>/img/be.jpg);background-repeat: no-repeat;"></li>
						<li style="margin-left: 98px;margin-top: -53px;background: url(<%=path%>/img/bf.jpg);background-repeat: no-repeat;"></li>
					</ul>
					<ul>
						<li style="background: url(<%=path%>/img/cc.jpg);background-repeat: no-repeat;"></li>
						<li style="margin-left: 98px;margin-top: -53px;background: url(<%=path%>/img/cd.jpg);background-repeat: no-repeat;"></li>
					</ul>
					<ul>
						<li style="background: url(<%=path%>/img/ce.jpg);background-repeat: no-repeat;"></li>
						<li style="margin-left: 98px;margin-top: -53px;background: url(<%=path%>/img/cf.jpg);background-repeat: no-repeat;"></li>
					</ul>
					<ul>
						<li style="background: url(<%=path%>/img/ca.jpg);background-repeat: no-repeat;"></li>
						<li style="margin-left: 98px;margin-top: -53px;background: url(<%=path%>/img/cb.jpg);background-repeat: no-repeat;"></li>
					</ul>
					<ul>
						<li style="background: url(<%=path%>/img/h2.jpg);background-repeat: no-repeat;"></li>
						<li style="margin-left: 98px;margin-top: -53px;background: url(<%=path%>/img/h3.jpg);background-repeat: no-repeat;"></li>
					</ul>
					<ul>
						<li style="background: url(<%=path%>/img/好.jpg);background-repeat: no-repeat;"></li>
						<li style="margin-left: 98px;margin-top: -53px;background: url(<%=path%>/img/h4.jpg);background-repeat: no-repeat;"></li>
					</ul>
				</div>
				
				<a  href="shop-details.jsp"><div style="width: 342px;height: 422px;border: 1px solid white;margin-left: 190px;margin-top: -430px;background: url(<%=path%>/img/h1.jpg);"></div></a>
				<div style="width: 535px;height: 430px;border: 1px solid white;margin-left: 535px;margin-top: -432px;">
					<ul style="list-style: none;">
						<li style="width: 200px;height: 222px;border: 1px solid white;background: url(<%=path%>/img/11.jpg);padding-right: 10px;"></li>
						<li style="width: 200px;height: 222px;border: 1px solid white;margin-left: 200px;margin-top: -224px;background: url(<%=path%>/img/12.jpg);"></li>
						<li style="width: 200px;height: 222px;border: 1px solid white;margin-left: 400px;margin-top: -224px;background: url(<%=path%>/img/13.jpg);"></li>
					</ul>
					<ul style="list-style: none;">
						<li style="width: 200px;height: 202px;border: 1px solid white;background: url(<%=path%>/img/11.jpg);"></li>
						<li style="width: 200px;height: 202px;border: 1px solid white;margin-left: 200px;margin-top: -204px;background: url(<%=path%>/img/12.jpg);"></li>
						<li style="width: 200px;height: 202px;border: 1px solid white;margin-left: 400px;margin-top: -204px;background: url(<%=path%>/img/13.jpg);"></li>
					</ul>
				</div>
				
			</div>
			<hr style="width: 1100; border: 3px lightgrey solid;"/>
	</div></a>
		<div class="bottom">
			<ul stye="list-style: none;">
				<li ><a href="#">关于我们|</a></li>
				<li ><a href="#">优购承诺|</a></li>
				<li ><a href="#">加入我们|</a></li>
				<li ><a href="#">商家入驻|</a></li>
				<li ><a href="#">帮助中心|</a></li>
				<li ><a href="#">优购手机版</a></li>
			</ul><br/><br />
				<ul >
					<li style="padding-top: 100px;">@copy 2018.7.31 版权所有<a style="color: grey" href="#">&nbsp;&nbsp;&nbsp;&nbsp; 电子公告服务规则</a> </li>
				</ul>
		</div>
		
	</body>
	
	 <script type="text/javascript">
		function f1(obj){
			$(obj).css("background","grey");
		}
		function f2(obj){
			$("#id").val($(obj).text());
			$("#dxx").hide();
		}
		function f3(obj){
			$(obj).css("background","white")
		}
		//1.给输入框绑定一个键盘抬起事件，抬起后使用ajax传输请求到后台
		function sou(){
			
			var keyWord=$("#id").val();
			var count = "";
			$.ajax({
				type:"post",
				url:"<%=path%>/sou",
				data:{"keyWord":keyWord},
				success:function(data){
					 for (var i =0;i<data.length;i++) {
						var a = data[i].name;
						 count +="<div  onmousemove='f1(this)' onclick='f2(this)' onmouseout='f3(this)'>"+a+"</div>"; 
					 } 
					  $("#dxx").html(count);
					 $("#dxx").show(); 
				},
				dataType:"json"
			});
		} 
		
		
		
		
		
		
		function f1(obj){
			$(obj).css("background","grey");
		}
		function search() {
			var goodsname=$("#id").val();
			$.ajax({
				type:"post",
				url:"<%=path%>/Sousuokuang",
				data:{"goodsname":goodsname},
				dataType:"text",
				success:function(data){
					 if (data=="success") {
						window.location.href='ceshi2.jsp';
					} else{
						alert("您输入的商品不存在！");
					}
				},
			});
		}
		
		
		
		
			$("#dxxx").hide();
		
			function f4(obj){
			
			$("#dxxx").hide();
			}
			function f5(obj){
				
				$("#dxxx").show();
				}
			function display(){
			$("#dxxx").show();
			} 
			
		
		
		
		
	</script>  
</html>
