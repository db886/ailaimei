<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="head.jsp"%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'newlogin.jsp' starting page</title>
    <style type="text/css">
    	#maxdiv{
    		width: 1200px;
    		margin: 0 auto;
    		margin-top:160px;
    		border:1px solid transparent;
    	}
    	#tupian{
    		background: url(image/beijin1.jpg) no-repeat;
			width: 600px;
			height: 400px;
    		margin-top:20px;
			float: left;
    	}
    	#denglu{
    		width: 420px;
			height: 500px;
			background:url(image/meitu_3.jpg);
    		margin-left:780px;
    		border:1px solid transparent;
    	}
    	.login3{
			height: 300px;
			width: 360px;
			margin:0 auto;
			background:url(image/meitu_6.jpg) no-repeat 2px 75px;
			padding-top: 70px;
			text-align: center;
		}
		.login1{
			width: 200px;
			height: 40px;
			font-size:30px;
			margin-top:10px;
			font-family:"微软雅黑";
			line-height: 40px;
			text-align: center;
			float: left;
		}
		.login2{
			width: 200px;
			height: 40px;
			margin-top:10px;
			font-family:"微软雅黑";
			text-align: center;
			margin-left: 220px;
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
	<div id="maxdiv">
		<div id="tupian"></div>
		<div id="denglu">
			<div class="login1"><p>注册艾莱美</p></div>
			<div class="login2"><a href="Login.jsp">已有账号？去登陆</a></div>
    		<div class="login3">
    			<form id="userform" action="registAction_regist" method="post">
               		<input class="username" placeholder="请输入用户名" type="text" name="username">
               		<input class="mathpass" placeholder="请输入验证码" type="text" name="mathpass">
    				<input class="pass" placeholder="请输入密码" type="password" name="pass">
    				<input class="submit" type="submit" value="立刻注册">
    	   		</form>
      	</div>
		
		</div>
	</div>   
</body>
</html>
