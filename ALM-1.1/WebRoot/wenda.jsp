<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="head.jsp"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>医生问答</title>
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
			font-family: "微软雅黑";	
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
		#wendazhuti2{
    		width: 100%;
    	}
		.wenda{
    		width: 100%;
    		height: 140px;
    		border: 1px solid #E8E8E8; 
    		margin-top: 15px;
    		padding: 20px;
    	}
    	.wenda1{
    		width: 100%;
    		height: 60px;
    		border-bottom: 2px solid #DFDFDF;
    		
    	}
    	.wenda2{
    		width: 100%;
    		height: 80px;
    	}
    	.page{
    		width: 100%;
    		height: 40px;
    	}
    	.page1{
    	 	width:100px;
    		height: 100%;
    		line-height: 40px;
    		float: left;
    	}
    	.s1{
    		font-size: 20px;
    		color: #333333;
    		text-decoration:underline
    	}
    	.s2{
    		color: #666666;
    	}
	</style>
	<script type="text/javascript">
		function chaxunye(i){
			var d1 = "<div class='wenda1'><span class='s1'>";
			var d2 = "</span></div><div class='wenda2'><span class='s2'>";
			var d6 = "<span>";
			var d3 = "</div>";
			var d4 = "问：";
			var d7 = "答：";
			var d5 = "<div class='wenda'>";			
			$.ajax({
				type:"post",
				url: "ajax/wendaAjax.action",
				data:{"nowPage":i},
				success:function(data){
					if(i>data.allPageCount||i<1){
						alert("没有了哦");
					}else{
						$("#nowPage").val(i);
						$("#wendazhuti2").html(" ");
						$.each(data.nowPageData,function(index,list){	
							$("#wendazhuti2").append(d5+d1+d4+list.userq+d2+d7+list.doctora+d6+d3+d3);
						})
					}
				},
				error:function(){
					alert("hhhhhhhh");
				}
			})
			scrollTo(0,450);
		}
		function xiayiye(){
			var i = $("#nowPage").val();
			var i = ++i
			chaxunye(i);
		}
		function shangyiye(){
			var i = $("#nowPage").val()-1;
			chaxunye(i);
		}
		function shouye(){
			chaxunye(1);
		}
		function moye(){
			var i = $("#allPageCount").val();
			chaxunye(i);
		}
	</script>
  </head>
  
  <body>
  	<div id="wendatupian"></div>
    <div id="wendazhuti">
    	<div id="wendadaohang">
    		<div class="daohang">热门问答</div>
    		<div class="daohang"><a href="tiwen.jsp">我要咨询</a> </div>
    	</div>
    	
		<div id="wendazhuti2">
    		<s:iterator value="page.nowPageData">
    		<div class="wenda">
    			<div class="wenda1"><span class='s1'>问：<s:property value="userq"/></span> </div>
    			<div class="wenda2"><span class='s2'>答：<s:property value="doctora"/></span> </div>
    		</div>
    		</s:iterator>
		</div>		


    	<div class="page">
    		<div class="page1" onclick="shouye()">首页</div>
    		<div class="page1" onclick="shangyiye()">上一页</div>
    		<div class="page1" onclick="xiayiye()">下一页</div>
    		<div class="page1" onclick="moye()">末页</div>
    	</div>
    	<input type="hidden" name="nowPage" value="${page.nowPage }" id="nowPage">
    	<input type="hidden" value="${page.allPageCount }" id="allPageCount">
    </div>
  </body>
</html>
