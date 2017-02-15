<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'index.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
</head>

<style> 
	body{ background: #96b6d2; } * { padding: 0; margin: 0;
	font-family: "微软雅黑"; } .header { height: 72px; background: #458fce; }

	.header .logo { color: #fff; line-height: 72px; font-size: 30px;
	margin-left: 20px; display: inline-block; font-weight: 500; } ul li {
	list-style: none; } .logo { margin-right: 120px; float: left; } .header
	ul li { float: left; color: #fff; display: inline-block; width: 112px;
	height: 72px; line-height: 72px; cursor: pointer; text-align: center; }

	a { color: #fff; text-decoration: none; } .header ul li:HOVER {
	background: #74b0e2; } .login { float: left; color: #fff; line-height:
	72px; margin-left: 150px; } .show{ background-image:
	url(https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1484482723&di=b86ae2dc1a2e2ad37e36defb6e35a449&src=http://gb.cri.cn/mmsource/images/2013/06/20/88/8704437478477957968.jpg);
	width: 430px; height: 538px; margin-top: 30px; margin-left: 150px;
	float: left; } .logining{ margin-left:850px; margin-top: 180px; width:
	300px; height: 200px; background: #458fce; } p { text-align: center;
	font-size: 30px; color: #fff; } input{ margin-top: 30px; margin-left:
	80px; }
	</style>
</head>

<body>
	<div class="header">
		<div class="logo">老司机</div>
		<ul>
			<li><a href="">首页</a></li>
			<li><a href="">原创相片</a></li>
			<li><a href="">热门专题</a></li>
			<li><a href="">欣赏美女</a></li>
			<li><a href="">打赏</a></li>

		</ul>
		<div class="login">
			<span><a href="">登录</a></span> <span>丨</span> <span><a href="UserRegist.jsp">注册</a></span>
		</div>
	</div>
	<div class="show"></div>
	<div class="logining">
		<p>用户登录</p>
		<form action="registAction_login" method="post">
			<input type="text" class="username" name="username"/> 
			<input type="password" class="password" name="pass" />
			<input type="submit" value="登录" >
			<input type="button" value="注册" onclick="window.location.href='UserRegist.jsp'">
		</form>
		<span class="hdncount2">${result}</span>
	</div>	
</body>
</html>

