<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	isELIgnored="true"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'Orders.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>
<script src="js/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
	 var d = ["摸咪咪","洗澡","画眉","美容","按摩","豪华全套"];
	 var p = ["20","30","50","60","80","188"];
	window.onload=function (){ 
		var od = document.orderadd.dome;
		var op = document.orderadd.price
	 	for(var i = 0; i < d.length; i++){
	 		od.options.add(new Option(d[i],d[i]))
	 		op.options.add(new Option(p[i],p[i]))
	 	}
	}
	function ch(){
		var index = document.orderadd.dome.selectedIndex;
		document.orderadd.price.selectedIndex=index;
	}
</script>
<style>
	#hideen{
		display: none;
	}
</style>

<body>
	<form action="orderAction_add.action" method="post" name="orderadd">
		服务项目<select name="dome" onchange="ch()">
				<option value="吃鸡鸡">吃鸡鸡</option>
			</select> 
		价格<select name="price">
				<option value="12">12</option>
			</select>
		在线付款<select name="status" >
				<option value="在线付款">在线付款</option>
				<option value="到店付款">到店付款</option>
			</select> 

		<input type="submit" value="提交订单" />
	</form>
	<form action="orderAction_select.action" method="post">
		<input type="submit" value="查询订单">
	</form>
我的订单<br />
	<s:iterator value="list">
		<td><s:property value="no" /></td>
		<td><s:property value="dome" /></td>
		<td><s:property value="username" /></td>
		<td><s:property value="price" /></td>
		<td><s:property value="status" /></td>
		<br />

		<form action="orderAction_updata.action" method="post">
			<input type="hidden" name="no" value="<s:property value="no" />">
			<select name="status">
				<option value="未付款">未付款</option>
				<option value="已付款">已付款</option>
			</select> <input type="submit" value="提交" />
		</form>
			<form action="orderAction_delete.action" method="post">
				<input type="hidden" name="no" value="<s:property value="no" />"/> 
				<input type="submit" value="删除订单" />
	</form>
	</s:iterator>
	<s:property value="tishi" />
</body>
</html>
