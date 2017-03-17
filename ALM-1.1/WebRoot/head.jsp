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
* {
	margin: 0px;
	padding: 0px;
}

#head {
	font-family: "微软雅黑";
}
#headback{
	height: 40px;
	background: #BD0271;
}
#head1 {
	width: 1000px;
	height:100%;
	margin: 0 auto;
}

#head1 a {
	color: #ffffff;
}

#head1 a:link {
	color: #ffffff;
	text-decoration: none;
}

#newdaohang a {
	color: inherit;
}

#newdaohang a:LINK {
	color: inherit;
	text-decoration: none;
}

#homepage {
	margin-left: 10px;
	line-height: 40px;
	font-size: 20px;
	float: left;
}

#head-navigation {
	margin-left: 650px;
}

#head-navigation ul li {
	list-style: none;
	margin-left: 20px;
	margin-top: 10px;
	cursor: pointer;
	float: left;
}

#newdaohang ul {
	width:1000px;
	height:60px;
	position: absolute;
	left: 50%;
	margin-left: -450px;
}

#newdaohang ul li {
	list-style: none;
	width: 110px;
	height: 100%;
	border-radius:80px;
	line-height: 60px;
	float: left;
	font-size: 20px;
	text-align: center;
	color: #000000;
}

#newdaohang ul li:HOVER {
	background: #BD0271;
	cursor: pointer;
	color: #ffffff;
}
#newdaohang {
	width: 100%;
	height: 60px;
	margin-top: 100px;
	border-bottom: 3px solid #BD0271;
	color: #000000;
}
#newdaohang:link{
	color: #000000;
}
#dlh {
	width: 250px;
	height: 40px;
	line-height: 40px;
	margin-left: 50px;
	float: left;
	color: #ffffff;
}

#xmzhuti {
	width: 1000px;
	position: absolute;
	top: 200px;
	left: 50%;
	z-index:22;
	margin-left: -500px;
	font-family: "微软雅黑";
}
#xmzhuti a{
	color: #666666;
}
#allxm {
	width: 200px;
	height: 400px;
	display: none;
	position: absolute;
	background: url("image/celang.jpg") no-repeat;
	padding-top: 18px;
}

#allxm ul li {
	list-style: none;
	width: 100%;
	height: 60px;
	line-height: 60px;
	font-size: 15px;
	margin: 0 auto;
	text-align: center;
}

#almxm1 {
	width: 200px;;
	display: none;
	position: absolute;
	left:200px;
	background: #F8F3D5;
}

#almxm1 ul li {
	list-style: none;
	font-size: 20px;
	width: 120px;
	height: 40px;
	line-height: 40px;
	padding-left: 50px;
	cursor: pointer;
}
#almxm1 a{
	color: #666666;
}
#huanying{
	
}
</style>
</head>
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
	function cha() {
		document.getElementById('se').submit();
	}
	function wd() {
		document.getElementById('wd').submit();
	}

	function allxm() {
		document.getElementById("allxm").style.display = 'block';
	}
	function allxmout() {
		document.getElementById("allxm").style.display = 'none';
	}
	function almxm1() {
		document.getElementById("almxm1").style.display = 'block';
	}
	function almxm1out() {
		document.getElementById("almxm1").style.display = 'none';
	}
	function wenxiu() {
		document.getElementById("val").value = "1";
		document.getElementById("xms").submit();
	}
	function huamei() {
		document.getElementById("val").value = "2";
		document.getElementById("xms").submit();
	}
</script>

<body>
	<div id="head">
		<div id="headback">
		<div id="head1">
			<div id="homepage">
				<a href="shouye.jsp">艾莱美首页</a>
			</div>
			<div id="dlh">
				欢迎您: &nbsp;<a href="geren.jsp" style="text-decoration: underline;" >${sessionScope.user.username}</a>&nbsp;&nbsp;&nbsp;&nbsp;<a
					href="registAction_tc">退出</a>
			</div>
			<div id="head-navigation">
				<ul>
					<li><a href="almregist.jsp">注册</a>
					<li><a href="almlogin.jsp">登录</a>
					<li><a href="">美容院地址</a>
					<li><a>联系客服 </a>
				</ul>
			</div>
		</div>
		</div>
		<div id="newdaohang" class="newdaohang">
			<ul>
				<li onmouseover="allxm()" onmouseout="allxmout()">艾莱美项目</li>
				<li ><a href="shouye.jsp">首页</a></li>
				<li><a onclick="cha()">我的预约</a></li>
				<li>
					<form action="wd_select" method="post" id="wd">
						<input type="hidden" name="nowPage" value="1">
					</form> <a onclick="wd()">问答</a>
				</li>
				<li><a href="">热门</a></li>
				<li><a href="">更多</a></li>
			</ul>
		</div>
		<div id="xmzhuti" onmouseover="allxm()" onmouseout="allxmout()">
			<div id="allxm"  >
				<ul>
					<li onmouseover="almxm1()" onmouseout="almxm1out()">眼部</li>
					<li>敬请期待</li>
					<li>敬请期待</li>
					<li>敬请期待</li>
					<li>敬请期待</li>
					<li>敬请期待</li>
				</ul>
			</div>

			<div id="almxm1" onmouseover="almxm1()" onmouseout="almxm1out()">
				<ul>
					<li><a onclick="wenxiu()">纹绣</a></li>
					<li><a onclick="huamei()">画眉</a></li>
					<li><a>敬请期待</a></li>
					<li><a>敬请期待</a></li>
					<li><a>敬请期待</a></li>
				</ul>
			</div>
			
			<form action="xm_select" method="post" id="xms">
				<input type="hidden" name="xiangmuid" id="val">
			</form>
			
			<form action="orderAction_select.action" method="post" id="se">
				<input type="hidden" value="${sessionScope.user.username}" name="username">
			</form>
			
			<div id="almxm2"></div>
			<div id="almxm3"></div>
		</div>
	</div>

</body>
</html>
