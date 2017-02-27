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
    	}
    	#goodstupian1{
    		width: 400px;
    		height: 300px;
    		position: absolute; 
    		background: blue;
    	}
    	#goodstupian2{
    		width: 400px;
    		height: 100px;
    		position: absolute; 
    		top: 320px;
    		background: #666666;
    	}
    	#goodsbiaoti{
    		width: 500px;
    		height: 600px;
    		position: absolute; 
    		left: 420px;
    	}
    	#biaoti{
    		width: 100%;
    		height: 60px;
    		background:#F1F1F1;
    	}
    	#jiage{
    		width: 100%;
    		height: 60px;
    		background:#F1F1F1;
    		margin-top: 10px;
    		
    	}
    	#shuoming{
    		width: 100%;
    		height: 60px;
    		background:#F1F1F1;
    		margin-top: 10px;
    	}
    	#fukuangxx{
    		width: 100%;
    		height: 60px;
    		background:#F1F1F1;
    		margin-top: 10px;
    	}
    	#xxshuoming{
    		width: 100%;
    		height: 60px;
    		background:#F1F1F1;
    		margin-top: 10px;
    	}
    	#yuding{
    		width: 100%;
    		height: 60px;
    		background:#F1F1F1;
    		margin-top: 10px;
    	}
    	img{max-width:100%;max-height:100%}
    </style>
 </head>
  
 <body>
	<div id="goods">
		<div id="goodstupian1"><img src="${xm.xiangmutupian }"> </div>
		<div id="goodstupian2"></div>
		<div id="goodsbiaoti">
			<div id="biaoti"><span>${xm.xiangmubiaoti }</span> </div>
			<div id="jiage"><span>${xm.xiangmujiage }</span></div>
			<div id="shuoming"><span>${xm.xiangmushuoming }</span></div>
			<div id="fukuangxx"><span>${xm.xiangmuxiangqing }</span></div>
			<div id="xxshuoming"></div>
			<div id="yuding"><form action="orderAction_add" method="post">
				<input type="hidden" name="dome" value="${xm.xiangmubiaoti }">
				<input type="hidden" name="price" value="${xm.xiangmujiage }">
				<input type="hidden" name="status" value="在线付款">
				<input type="hidden" name="username" value="${user.username }">
				<input type="hidden" name="xiangmutupian" value="${xm.xiangmutupian }">
				<input type="submit"  value="立刻下单">
			</form> </div>
		</div>
	</div>  
</body>
</html>
