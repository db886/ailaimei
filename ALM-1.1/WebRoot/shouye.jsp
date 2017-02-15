<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="head.jsp"%>
<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">    
    <title>艾莱美首页</title>
    
    <style type="text/css">
    	*{margin:0px;padding:0px;}
    	.zhuti{
    		width: 1000px;
    		position:absolute;
			left:200px;
    		top:100px;
    		font-family: "微软雅黑";
    	}
    	.celang{
    		width: 200px;
    		height: 400px;
    		position:absolute;
    		top:60px;
    		background: url("image/celang.jpg") no-repeat;
    		padding-top: 18px;
    	}
    	.daohang{
    		width: 600px;
    		height: 400px;
    		position:absolute;
    		left:200px;
    		top:60px;
    		background: url("image/daohang.jpg");
       	}
       	#p1{
       		width: 550px;;
       		height: 350px;
       		position:absolute;
       		top: 30px;
       		left:25px;
       		background: url("image/p1.jpg") no-repeat;
       	}
       	#p2{
       		width: 550px;;
       		height: 350px;
       		position:absolute;
       		top: 30px;
       		left:25px;
       		background: url("image/p2.jpg") no-repeat;
       	}
       	#p3{
       		width: 550px;;
       		height: 350px;
       		position:absolute;
       		top: 30px;
       		left:25px;
       		background: url("image/p3.jpg") no-repeat;
       	}
    	.celang2{
    		width: 200px;
    		height: 400px;
    		position:absolute;
    		left:800px;
    		top:60px;
		}
		#c2p1{
			width: 100%;
			height: 130px;
			margin-top:2px;
			margin-left:5px;
			background: url("image/c2p1.jpg");
			cursor: pointer;
		}
		#c2p2{
			width: 100%;
			height: 130px;
			margin-top:2px;
			margin-left:5px;
			background: url("image/c2p2.jpg");
			cursor: pointer;
			
		}
		#c2p3{
			width: 100%;
			height: 130px;
			margin-top:2px;
			margin-left:5px;
			background: url("image/c2p3.jpg");
			cursor: pointer;
		}
		.celang ul li{
			list-style: none;
			width:100%;
			height: 60px;
			line-height:60px;
			font-size: 15px;
			margin:0 auto;
			text-align:center;
			color: #666666;
		}
		.celang ul li:HOVER{
			background: #FFF0F2;
		}
		.zhuti a{
			color: #666666;
		}
		.zhuti a:link {
			text-decoration:none;
		}
		
		#huodong{
			width: 100%;
			height: 600px;
			position: absolute;
			top: 460px; 
		}
		#huodong1{
			width: 250px;
			height: 300px;
			background: url("image/huodong1.jpg");
			cursor: pointer;
		}
		#xiangmu{
			width: 550px;;
       		height: 350px;
       		display: none;
       		position:absolute;
       		background: #fff;
		}
		#xiangmu ul li{
			list-style: none;
			font-size: 25px;
			width: 80px;
			height: 40px;
		}
    </style>
</head>
 <script type="text/javascript">
 	var nowindex = 1;
 	var maxindex = 3;
 	function lunfan(){
 		for(var i=1;i<=maxindex;i++){
 			if(i==nowindex){
 				document.getElementById("p"+nowindex).style.display='block';
 			} else{
 				document.getElementById("p"+i).style.display='none';
 			}
 		}
 		if(nowindex == maxindex){
 			nowindex=1;
 		} else{
 			nowindex++;
 		}
 	}
 	theTimer=setInterval("lunfan()",5000);
	function xiangmu(){
		document.getElementById("xiangmu").style.display='block';
	}
	function xiangmuout(){
		document.getElementById("xiangmu").style.display='none';
	}
 </script>
 
  <body>
    <div class="zhuti">
    	<div class="celang" id="celang">
    		<ul>
    			<li onmouseover="xiangmu()" onmouseout="xiangmuout()" >纹绣</li>
    			<li><a href="">摸咪咪</a> </li>
    			<li><a href="">吃鸡鸡</a> </li>
    			<li><a href="">按摩</a> </li>
    			<li><a href="">睡觉</a> </li>
    			<li><a href="">画眉</a> </li>
    		</ul>
    	</div>
    	
    	<div class="daohang">
    		<div id="p1"></div>
    		<div id="p2"></div>
    		<div id="p3"></div>
    		<div id="xiangmu" onmouseover="xiangmu()" onmouseout="xiangmuout()" >
    			<ul>
    				<li><a href="">摸咪咪</a> </li>
    				<li><a href="">吃鸡鸡</a> </li>
    				<li><a href="">按摩</a> </li>
    				<li><a href="">睡觉</a> </li>
    				<li><a href="">画眉</a> </li>
    			</ul>
    		</div>  		
    	</div>
    	
    	<div class="celang2">
    		<div id="c2p1" onclick="lunfan()"></div>
    		<div id="c2p2" onclick=""></div>
    		<div id="c2p3" onclick=""></div>   
    	</div>
    	
    	<div id="huodong">
    		<div id="huodong1" onclick="javascript:window.open('http://sep9.cn/b0rr4n')"></div>
    	</div>
    </div>
    
  </body>
</html>
