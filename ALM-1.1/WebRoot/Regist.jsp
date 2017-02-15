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
			margin-top: 100px;
			margin-left: 950px;
			width: 420px;
			height: 500px;
			background:url(image/meitu_3.jpg);
			color: #666666;
		}
		.login1{
			height: 40px;
			width: 120px;
			position:absolute;
			top:155px;
			left:970px;
			float: left;
			font-size: 22px;
		}
		.login2{
			height: 40px;
			width: 150px;
			position:absolute;
			top:155px;
			left:1200px;
		}
		.login3{
			height: 300px;
			width: 360px;
			margin:0 auto;
			background:url(image/meitu_6.jpg) no-repeat 2px 15px;
			padding-top:10px;
			position:absolute;
			top:230px;
			left:980px;
			text-align: center;
		}
		.login4{
			width: 220px;
			height: 220px;
			margin:0 auto;
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
		.login5{
			margin-top: 20px;
			font-size: 10px;
			text-align: center
		}
		.aaa{
			color: #666666;
		}
		#newdaohang{
			display: none;
		}
	</style>
  </head>
  
  <body>
  	<div id="beijing"></div>
    <div id="login">
    	<div class="login1"><p>注册艾莱美</p></div>
    	<div class="login2"><a href="Login.jsp" class="aaa">已有账号？去登录</a></div>
    	<div class="login3">
    		<form id="userform" action="">
               	<input class="username" placeholder="请输入用户名" type="text" name="username">
               	<input class="mathpass" placeholder="请输入验证码" type="text" name="mathpass">
    			<input class="pass" placeholder="请输入密码" type="password" name="pass">
    			<input class="submit" type="submit" value="立即注册">
    	   	</form>
    	    <div class="login5">
    	    	<input type="checkbox" checked="checked" />
    	    	<span>我已阅读并同意<a href="" class="aaa">《艾莱美用户协议》</a></span>
    	    </div>
      	</div>
    </div>
  </body>
</html>
