<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="head.jsp"%>
<!DOCTYPE HTML>
<html>
  <head>
    <title>艾莱美-头像设置</title>
    
    <style type="text/css">
    	.touxiangshezhi{
    		text-align: center;
    		margin-top: 40px;
    	}
    </style>
  </head>
  
  <body>
  	<div class="touxiangshezhi">
  		<form action="UserAction_shezhitouxiang" method="post" enctype="multipart/form-data">
  			<input type="file" name="touxiang">
  			<input type="submit" value="上传">
  		</form>
  	</div>
  </body>
</html>
