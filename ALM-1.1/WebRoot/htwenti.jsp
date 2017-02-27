<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="head.jsp"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>后台用户问题查看</title>
	<style type="text/css">
		#wendatupian{
			width: 100%;
			height: 300px;
			position:absolute;
			top:203px;
			background: url("image/wendatupian.jpg");
			background-size: 100%;
		}
		#wendazhuti{
			width: 1000px;
			position: absolute;
			top: 503px;
			left: 50%;
			margin-left: -500px;		
		}
		#wendadaohang{
			width: 100%;
			height: 40px;
			border-bottom: 3px solid #BD0271;
		}
		.daohang{
			width: 100px;
			height: 100%;
			float:left;
			line-height: 40px;
		}
		.wenda{
    		width: 100%;
    		height: 140px;
    		border: 1px solid #E8E8E8; 
    		margin-top: 15px;
    	}
	</style>
  </head>
  <body>
  	<div id="wendatupian"></div>
    <div id="wendazhuti">
    	<div id="wendadaohang">
    		<div class="daohang">
    		<form action="wt_selectwt" method="post">
    			<input type="submit" value="用户咨询">
    		</form></div>

    		<div class="daohang"><a href="htwenda.jsp">近期回答</a> </div>
    	</div>
    	<s:iterator value="list">
    		  <div class="wenda">
    			<form action="wd_addwd" method="post">
    				<div class="wenda1">
    					<s:property value="username" />:<s:property value="userq" /> <br>
    					提问时间：<s:property value="qtime" />
    					<input type="hidden" name="username" value="<s:property value="username" />">
    					<input type="hidden" name="userq" value="<s:property value="userq" />">
    					<input type="hidden" name="qtime" value="<s:property value="qtime" />">
    					<input type="hidden" name="wentiid" value="<s:property value="wentiid" />">
    				</div>
    				<div class="wenda2">
    				<textarea rows="3" cols="50" name="doctora"></textarea> 
    				<input type="hidden" name="doctorname" value="${sessionScope.user.username}">
    				<input type="submit" value="提交回答">
					</div>
				</form> 
				 <form action="wt_deletewt" method="post">
    				<input type="hidden" name="wentiid" value="<s:property value="wentiid" />">
    				<input type="submit" value="忽略该咨询">
    			</form>
    		</div>
		</s:iterator>
    </div>
  </body>
</html>
