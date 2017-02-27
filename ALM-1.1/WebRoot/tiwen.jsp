<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="head.jsp"%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>艾莱美咨询系统</title>
	<style type="text/css">
		#tiwenzhuti{
			width: 1000px;
			height:500px;
			position:absolute;
			top:203px;
			left:50%;
			margin-left:-500px;
			border:2px solid #b5b5b5;
		}
		#wenti1{
			width: 100%;
			height: 200px;
		}
		#wenti2,#wenti3{
			width: 100%;
			height: 100px;			
		}
	</style>
	<script type="text/javascript">
		function niming(checkbox){
			if(checkbox.checked == true){
				$("#un").val("匿名用户");
			}
		}
	</script>
  </head>
  
  <body>
    <div id="tiwenzhuti">
    	<form action="wt_addwt" method="post">
    	<div id="wenti1"><p>请填写您的问题</p> <textarea rows="12" cols="100" name="userq"></textarea> <input id="un" type="hidden" name="username" value="${sessionScope.user.username}" ></div>
    	<div id="wenti2"><input onclick="niming(this)" type="checkbox">匿名提问 <input placeholder="请输入验证码" type="text"> </div>
    	<div id="wenti3"><input type="submit" value="提交问题"></div>
    	</form>
    </div>
  </body>
</html>
