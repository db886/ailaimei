<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="head.jsp"%>
<!DOCTYPE HTML>
<html>
  <head>
    <title>艾莱美-密码修改</title>
    <style type="text/css">
    	.mimaxiugai{
    		width: 400px;
    		height: 200px;
    		position: absolute;
    		top: 203px;
    		left: 50%;
    		margin-left: -300px;
    		border: 3px solid #D5D5D5;
    	}
    	.mimaxiugai input{
    		margin-top: 15px;
    	}
    	.mimaxiugai span{
    		color: #FC4343;	
    	}
    </style>
  </head>
  <script type="text/javascript">
	function gaimima(){
  		var m = $(".jiumima").val();
  		var u = $(".yonghuming").val();
  		$.ajax({
  			url: "ajax/loginAjax.action",
  			type:"post",
  			data:{"username":u,"pass":m},
  			success:function(data){
  				if(data=="登录成功"){
  					$(".mimajiaoyan").html("");
  					var m1 = $(".mima1").val();
  					var m2 = $(".mima2").val();
  					if(m1!=m2){
  						$(".mimabuyizhi").html("两次输入密码不一致");
  					}else{
  						$(".tijiaomima").submit();
  					}
  				}else{
  					$(".mimajiaoyan").html("密码错误");
  				}
  			},
  			error:function(){
				alert("hhhhhhhh");
			}
  		})
  	}
  </script>
  <body>
    <div class="mimaxiugai">
    		旧密码：<input type="password" class="jiumima"><br/>
    		<span class="mimajiaoyan"></span>
    	<form action="UserAction_xiugaimima" method="post" class="tijiaomima">
    		<input type="hidden" name="usernmae" value="${sessionScope.user.username}" class="yonghuming">
    		新密码：<input type="password" name="pass" class="mima1"><br/>
    	</form>
    		确认密码：<input type="password" class="mima2"><br/>
    		<span class="mimabuyizhi"></span><br/>
    		<input type="button" value="确认" onclick="gaimima()">
    </div>
  </body>
</html>
