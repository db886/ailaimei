<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="head.jsp"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML>
<html>
  <head> 
    <title>欢迎登录艾莱美</title>
    
    <style type="text/css">
    	#newdaohang{
			display: none;
		}
		#login{
			width:1000px;
			position: absolute;
			left: 50%;
			margin-left: -500px;
			font-family: "微软雅黑";
		}
		#logindl{
			width: 420px;
			height: 500px;
			position:absolute;
			top:100px;
			left:630px;
			background:url(image/meitu_3.jpg);
		}
		#bt{
			width: 100%;
			height: 80px;
			margin-top:40px;
			font-size: 30px;
			text-align: center;
		}
		#tishi{
			width: 280px;
			height: 40px;
			position: absolute;
			top:110px;
			left: 50%;
			margin-left: -140px;
			color: #FC4343;	
		}
		#shuru{
			width: 280px;
			height: 300px;
			position: absolute;
			top: 130px;
			left: 50%;
			margin-left: -140px;		
		}
		#shuru input{
			width: 280px;
			height: 40px;
			margin-top: 20px;
			padding-left:10px;
			border:1px solid #DDDDDD;			
			font-size: 13px;
			background-color:#fff;
		}
		.denglu{
			cursor: pointer;
			background: url(image/meitu_7.jpg);
		}
		#shuru .mathpass{
			width: 150px;
		}
		#anniu{
			width: 100%;
			height: 50px;			
		}
		#xieyi{
			width: 100%;
			height: 30px;			
		}
		#yanzhengma{
			width: 80px;
			height: 40px;
			position: absolute;
			top: 145px;
			left: 175px;
		}
		#xieyi{
			width: 200px;
			height: 40px;
			position: absolute;
			top: 420px;
			left: 220px;
		}
    </style>
  </head>
  <script type="text/javascript">
  	function login(){
  		var u = $(".username").val();
  		var p = $(".pass").val();
  		$.ajax({
  			type: "post",
  			url: "ajax/loginAjax.action",
  			data:{"username":u,"pass":p},
  			success:function(data){
  				if(data == "登录成功"){
  					location.href="shouye.jsp";
  				}else{
  					var i = $("#cishu").val();
  					if(i<=3){
  						$("#tishi").html(data+i+"次(三次后将锁定账号)");
  						var o = ++i;
  						$("#cishu").val(o);
  					}else{
  						$("#tishi").html("账号已被锁定");
  					}
  				}			
  			},
  			error:function(){
				alert("hhhhhhhh");
			}
  		})
  	}
  </script>
  <body>
    <div id="login">
    	<div id="logintp"></div>
    	<div id="logindl">
    		<div id="bt"><p>登录艾莱美账号</p></div>
    		<div id="tishi"></div>
    		<div id="shuru">
               	<input class="username" placeholder="请输入用户名" type="text" name="username">
    			<input class="pass" placeholder="请输入密码" type="password" name="pass">
    			<input class="mathpass" placeholder="请输入验证码" type="text" name="mathpass">
    			<img id="yanzhengma" src="image/tupian1.jpg">
    			<input class="denglu" type="button" value="立即登录" onclick="login()">
    			<input type="hidden" id="cishu" value="1">
    		</div>
    		<div id="xieyi"><a href="almregist.jsp">立即注册</a>&nbsp;|&nbsp;<a href="">找回密码</a></div>
    	</div>
    </div>
  </body>
</html>
