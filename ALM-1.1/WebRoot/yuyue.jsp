<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="head.jsp"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML>
<html>
  	<head>
    <title>我的预约</title>
    
    <style type="text/css">
       *{margin:0px;padding:0px;}
    	#myyuyue{
    		width: 900px;
    		position: absolute;    		
    		left: 250px;
    		top: 160px;
    	}
    	#myyuyue1{
    		width: 100%;
    		height: 50px;
    		background: #F1F1F1;
    		border: 1px solid #E8E8E8;
    	}
    	.myyuyue2{
    		width: 100%;
    		height: 140px;
    		border: 1px solid #E8E8E8; 
    		margin-top: 15px;
    	}
    	.xinxi1{
    		width: 100%;
    		height: 30px;
    		background:#F1F1F1;
    		line-height: 30px;
    	}
    	.xinxi2{
    		width: 100%;
    		height: 110px;
    		padding: 1px;
    	}
    	.tupian{
    		width: 80;
    		height: 80;
    		margin-top:15px;
    		margin-left: 15px;
    		float: left;
    	}
    	.biaoti{
    		width: 300px;
    		height: 80px;
    		float: left;
    		margin-top:15px;
    		margin-left: 10px;
    	}
    	.biaoti a{
    		color: #666666;
    	}
    	.biaoti a:LINK{
    		text-decoration:none;
    	}
    	.jiage{
    		width: 100px;
    		height: 100px;
    		float: left;
    		text-align: center;
    		line-height: 100px;
    	}
    	.stuats{
    		width: 100px;
    		height: 100px;
    		float: left;
    		text-align: center;
    		line-height: 100px;
    	}
    	.pingjia{
    		width: 100px;
    		height: 100px;
    		float: left;
    		text-align: center;
    		line-height: 100px;
    	}
    	.caozuo{
    		width: 100px;
    		height: 100px;
    		float: left;
    		text-align: center;
    		line-height: 100px;
    	}
    	.m1{
    		margin-left: 150px;
    		line-height: 50px;
    	}
    	.m2{
    		margin-left: 260px;
    		line-height: 50px;
    	}
    	.m3{
    		margin-left: 55px;
    		line-height: 50px;
    	}
    	.m4{
    		margin-left: 50px;
    		line-height: 50px;
    	}
    	.m5{
    		margin-left: 70px;
    		line-height: 50px;
    	}
    	
    </style>
    </head>
	<body>
   		<div id="myyuyue">
   			<div id="myyuyue1"><span class="m1">项目</span><span class="m2">单价</span><span class="m3" >交易状态</span><span class="m4">评价</span><span class="m5" >操作</span></div>
   			<s:iterator value="list">
   			<div class="myyuyue2">
   				<div class="xinxi1"><span>2017-02-08</span><span>订单号：<s:property value="no" /></span></div>
   				<div class="xinxi2">
   					<div class="tupian"><img src="image/tupian1.jpg"></div>
   					<div class="biaoti"><a href=""><s:property value="dome" /></a> </div>
   					<div class="jiage"><span><s:property value="price" /></span></div>
   					<div class="stuats"><span><s:property value="status" /></span></div>
   					<div class="pingjia"><span>未评价</span></div>
   					<div class="caozuo"><form action="orderAction_delete.action" method="post" id="se">
							<input type="hidden" value="<s:property value="no" />" name="no">
							<input type="hidden" value="<s:property value="username" />" name="username">
							<input type="submit" value="删除订单">
					</form></div>
   				</div>  				
   			</div>
   			</s:iterator>
   		</div>
	</body>
</html>
