<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML>
<html>
<head>


<style type="text/css">
#head {
	height: 40px;
	background: #BD0271;
	margin-top: 0px;
	font-family: "微软雅黑";
}
#head1{
	width: 1300px;
	height:40px;
	margin: 0 auto;
	background: blue;
}
#head a {
	color: #ffffff;
}

#head a:link {
	color: #ffffff;
	text-decoration: none;
}

#newdaohang a {
	color: #000000;
}

#newdaohang a:LINK {
	color: #000000;
	text-decoration: none;
}

#homepage {
	margin-left: 10px;
	line-height:40px;
	font-size: 20px;
	float: left;
}

#head-navigation {
	margin-left: 800px;
}

#head-navigation ul li {
	list-style: none;
	margin-left: 20px;
	margin-top: 10px;
	cursor: pointer;
	float: left;
}

#newdaohang ul {
	margin-left: 250px;
}

#newdaohang ul li {
	list-style: none;
	width: 110px;
	height: 100%;
	line-height: 60px;
	float: left;
	font-size: 20px;
	text-align: center;
}

#newdaohang ul li:HOVER {
	background: #FFF0F2;
	cursor: pointer;
}

#newdaohang {
	width: 1300px;
	height: 60px;
	margin:0 auto;
	margin-top:100px;
	border-bottom: 3px solid #BD0271;
}

#dlh {
	width: 100px;
	height: 40px;
	line-height: 40px;
	margin-left: 50px;
	float: left;
}
</style>
</head>

<script type="text/javascript">
	function cha() {
		document.getElementById('se').submit();
	}
</script>

<body>
	<form action="orderAction_select.action" method="post" id="se">
		<input type="hidden" value="${user.username }" name="username">
	</form>
	<div id="head">
		<div id="head1">
			<div id="homepage">
				<a href="shouye.jsp">艾莱美首页</a>
			</div>
			<div id="dlh">
				<a href="">欢迎您: ${user.username }</a>&nbsp;&nbsp;<a
					href="registAction_tc">退出</a>
			</div>
			<div id="head-navigation">
				<ul>
					<li><a href="Regist.jsp">注册</a>
					<li><a href="Login.jsp">登录</a>
					<li><a href="">美容院地址</a>
					<li><a>联系客服 110</a>
				</ul>
			</div>
		</div>
		<div id="newdaohang">
			<ul>
				<li><a href="">艾莱美项目</a></li>
				<li><a href="shouye.jsp">首页</a></li>
				<li><a onclick="cha()">我的预约</a></li>
				<li><a href="">问答</a></li>
				<li><a href="">热门</a></li>
				<li><a href="">更多</a></li>
			</ul>
		</div>
	</div>

</body>
</html>
