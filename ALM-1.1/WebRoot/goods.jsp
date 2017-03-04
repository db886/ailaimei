<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="head.jsp"%>
<!DOCTYPE HTML>
<html>
 <head>
    <base href="<%=basePath%>">
    
    <title>欢迎预定艾莱美  </title>
    <style type="text/css">
    	*{margin:0px;padding:0px;}
    	#goods{
    		width: 1000px;
    		position: absolute;    		
    		left: 50%;
    		margin-left:-500px;
    		top: 203px;
    		font-family: "微软雅黑";
    	}
    	#goodstupian1{
    		width: 400px;
    		height: 300px;
    		position: absolute; 
    	}
    	#goodsbiaoti{
    		width: 500px;
    		height: 600px;
    		position: absolute; 
    		left: 420px;
    	}
    	.goodsbiaoti1{
    		width: 100%;
    		height: 60px;
    		line-height: 60px;
    		border-bottom: 2px solid #DFDFDF;
    	}
    	#biaoti{
    		line-height: 20px;
    	}
    	#jiage{
    		background: #F3F3F3;
    	}
    	#jg{
    		color: #FC4343;
    		font-size: 40px;
    	}
    	img{max-width:100%;height:300px;}
    	#xiadan{
    		width: 120px;
    		height: 45px;
    		cursor: pointer;
    		border:none;
    		margin-left:80px;
    		font-size:20px;
    		color:#fff;
			background: url(image/meitu_7.jpg);
    	}
    	#dingdan{
    		border-bottom: none;
    	}
    	span{
    		color: #999999;
    	}
    </style>
 </head>
  
 <body>
	<div id="goods">
		<div id="goodstupian1"><img src="${xm.xiangmutupian }"> </div>
		<div id="goodsbiaoti">
			<div class="goodsbiaoti1" id="biaoti"><h4>${xm.xiangmubiaoti }</h4> </div>
			<div class="goodsbiaoti1" id="jiage">限时抢购：<span id="jg">${xm.xiangmujiage }</span></div>
			<div class="goodsbiaoti1">购买须知：<span>${xm.xiangmushuoming }</span></div>
			<div class="goodsbiaoti1">套餐内容：<span>${xm.xiangmuxiangqing }</span></div>
			<div class="goodsbiaoti1" id="dingdan"><form action="orderAction_add" method="post">
				<input type="hidden" name="dome" value="${xm.xiangmubiaoti }">
				<input type="hidden" name="xiangmuid" value="${xm.xiangmuid }">
				<input type="hidden" name="price" value="${xm.xiangmujiage }">
				<input type="hidden" name="status" value="在线付款">
				<input type="hidden" name="username" value="${user.username }">
				<input type="hidden" name="xiangmutupian" value="${xm.xiangmutupian }">
				<input id="xiadan" type="submit"  value="立刻下单">
			</form> </div>
		</div>
	</div>  
</body>
</html>
