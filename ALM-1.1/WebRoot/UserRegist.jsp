<%@ page language="java" 
import="java.util.*" 
import="com.db.model.Orders"
pageEncoding="UTF-8"%>

<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>欢迎注册</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script src="js/jquery-3.1.1.min.js"></script>
 </head>
  
  <body>
    <form action="registAction_regist.action" method="post" >
    					注册
   username 	<input type="text" name="username" /><br/>
   pass	<input type="password" name="pass" /><br/>
   personname	<input type="text" name="personname" /><br/>
   sex	<input type="text" name="sex" /><br/>
   age	<input type="text" name="age" /><br/>
   address	<input type="text" name="address" /><br/>
   telephone	<input type="text" name="telephone" /><br/>
   qq	<input type="text" name="qq" /><br/>
   email	<input type="text" name="email" /><br/>
    	<input type="submit" name="submit" value="注册" >
    	
    </form>
      
  </body>

</html>
