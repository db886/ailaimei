<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="head.jsp"%>
<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">   
    <title>欢迎注册</title>    
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
	    *{margin:0px;padding:0px;}
		#beijing{
			background: url(image/beijin1.jpg) no-repeat;
			width: 600px;
			height: 400px;
			margin-left: 100px;
			margin-top: 150px;
			float: left;
		}
		#login{
			position:absolute;
			top: 100px;
			left: 950px;
			width: 420px;
			height: 500px;
			background:url(image/meitu_3.jpg);
			color: #666666;
		}
		.login1{
			height: 40px;
			width: 120px;
			position:absolute;
			top:40px;
			left:150px;
			font-size: 22px;
		}
		.login3{
			height: 300px;
			width: 360px;
			background:url(image/meitu_6.jpg) no-repeat 2px 15px;
			padding-top: 10px;
			position:absolute;
			top:100px;
			left:25px;
			text-align: center;
		}
		#userform input{
			width: 220px;
			height: 40px;
			margin-top: 20px;
			border:none;
			text-align: center;
			font-size: 18px;
			background-color:#fff;
		}
		.submit{
			cursor: pointer;
			background: url(image/meitu_7.jpg);
		}
		#newdaohang{
			display: none;
		}
		
	</style>
  </head>
  
  <body>
  	<div id="beijing"></div>
    <div id="login">
    	<div class="login1"><p>登录艾莱美</p></div>
    	<div class="login3">
    		<form id="userform" action="registAction_login" method="post">
               	<input class="username" placeholder="请输入用户名" type="text" name="username">
               	<input class="mathpass" placeholder="请输入验证码" type="text" name="mathpass">
    			<input class="pass" placeholder="请输入密码" type="password" name="pass">
    			<input class="submit" type="submit" value="立即登录">
    	   	</form>
      	</div>
    </div>
  </body>
</html>
