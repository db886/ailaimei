<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="head.jsp"%>
<!DOCTYPE HTML>
<html>
  <head>   
    <title>艾莱美-个人资料</title>
    <style type="text/css">
    	.geren{
    		width: 1000px;
    		position: absolute;
    		top: 203px;
    		left: 50%;
    		margin-left: -500px;
    		border: 3px solid #d7d7d7;
    	}
    	.geren-daohang{
    		width: 100%;
    		height: 40px;
    		background: #F5F5F5;
    	}
    	.geren-daohang1{
    		width: 80px;
    		height: 100%;
    		float: left;
    		text-align: center;
    		line-height: 40px;
    		margin-left:2px;
    		background: #ffffff;
    	}
    	.geren-daohang2{
    		width: 80px;
    		height: 100%;
    		float: left;
    		text-align: center;
    		line-height: 40px;
    	}
		.geren-ziliao{
			width: 100%;
			height:500px;
			margin-top:10px;
			border-top: 3px solid #d7d7d7;
		}
		.geren-ziliao1{
			width: 120px;
			height:100%;
			float: left;
			padding:10px;
			margin-top: 5px;
			border-right: 3px solid #d7d7d7;
		}
		.geren-ziliao2{
			float: left;
			width:800px;
			height:100%;
			padding-left: 20px;
		}
		.geren-ziliao1 img{
			width: 120px;
			height: 120px;
			
		}
		.geren-xinxi{
			width: 500px;
			height: 40px;
			margin-top: 40px;
		}
		.geren-ziliao2 input{
			margin-left: 100px;
		}
    </style>
  </head>
  <script type="text/javascript">
  	function anquan(){
  		top.location="anquan.jsp";
  	}
  </script>
  <body>
    <div class="geren">
    	<div class="geren-daohang">
    		<div class="geren-daohang1">个人资料</div>
    		<div class="geren-daohang2" onclick="anquan()">安全设置</div>
    	</div>
    	<div class="geren-ziliao">
    		<div class="geren-ziliao1"><img src="${sessionScope.user.head}"><div class="xiugaitouxiang"><a href="touxiang.jsp">修改头像</a></div></div>
    		<div class="geren-ziliao2">
    		<form action="registAction_updata" method="post">
    			<div class="geren-xinxi">真实姓名：<p><input type="text" name="personname" value="${sessionScope.user.personname}"></p></div>
    			<div class="geren-xinxi">性别：<p><input type="radio" name="sex" value="男">男
					<input type="radio" name="sex" value="女" checked="checked">女</p></div>
				<div class="geren-xinxi">生日：<p><input type="text" name="birthday" value="${sessionScope.user.birthday}"></p></div>
				<div class="geren-xinxi">联系地址：<p><input type="text" name="address" value="${sessionScope.user.address}"></p></div>
				<div class="geren-xinxi"><p><input type="submit" value="保存"></p></div>
    		</form>
    		</div>
    	</div>
    </div>
  </body>
</html>
