<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="head.jsp"%>
<!DOCTYPE HTML>
<html>
  <head>
    <title>艾莱美-安全设置</title>
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
    	}
    	.geren-daohang2{
    		width: 80px;
    		height: 100%;
    		float: left;
    		text-align: center;
    		background: #ffffff;
    		line-height: 40px;
    	}
		.geren-anquanziliao{
			width: 100%;
			height:500px;
			margin-top:10px;
			padding-left:20px;
		}
		.anquanxx{
			width: 800px;
			height: 80px;
			line-height: 80px;
			margin-top:10px;
			padding-left:10px;
			clear:both;
			border: 1px solid #d7d7d7;
		}
		.xxanquan1{
			width:100px;
			margin-left:12px;
			float: left;
		}
		.anquan1{
			width:100px;
			margin-left: 150px;
			float: left;
		}
		.anquan2{
			width:100px;
			margin-left: 150px;
			float: left;
		}
		#anquan-daohang{
			border: none;
		}
	</style>
  </head>
  <script type="text/javascript">
  	function geren(){
  		top.location="geren.jsp";
  	}
  	$(function(){
  		var s = $(".shoujihaoma").html();
  		if(s!="未绑定"){
  			 var ns = s.substr(0, 3) + "****" + s.substr(7); 
  			 $(".shoujihaoma").html(ns);
  		}
  	})
  </script>
  <body>
    <div class="geren">
    	<div class="geren-daohang">
    		<div class="geren-daohang1" onclick="geren()">个人资料</div>
    		<div class="geren-daohang2">安全设置</div>
    	</div>
    	<div class="geren-anquanziliao">
    		<div class="anquanxx" id="anquan-daohang"><div class="xxanquan1">设置</div><div class="anquan1">状态</div><div class="anquan2">操作</div></div>
    		<div class="anquanxx"><div class="xxanquan1">密码</div><div class="anquan1">已设置</div><div class="anquan2"><a href="mimaxiugai.jsp">修改</a></div></div>
    		<div class="anquanxx"><div class="xxanquan1">手机</div><div class="anquan1"><span class="shoujihaoma">${sessionScope.user.telephone}</span> </div><div class="anquan2"><a href="shoujihaomaxiugai.jsp">修改</a></div></div>
    		<div class="anquanxx"><div class="xxanquan1">QQ</div><div class="anquan1"><span class="qqhaoma">${sessionScope.user.qq}</span ></div><div class="anquan2"><a href="qqxiugai.jsp">修改</a></div></div>
    		<div class="anquanxx"><div class="xxanquan1">邮箱</div><div class="anquan1"><span class="youxiang">${sessionScope.user.email}</span></div><div class="anquan2"><a href="youxiangxiugai.jsp">修改</a></div></div>
    	</div>
    </div>
  </body>
</html>
