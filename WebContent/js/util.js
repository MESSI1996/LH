
function f1(obj){
			$(obj).css("background","seagreen");
		}
		
		function f2(obj){
			
			$("#ss").val($(obj).text());
			$("#dxx").hide();
		}
		
		function f3(obj){
			$(obj).css("background","sandybrown")
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
						$("#dxx").html("<div>"+a+"</div>");
					 } 
					  $("#dxx").html(count);
					 $("#dxx").show(); 
				},
				dataType:"json"
			});
		}

	