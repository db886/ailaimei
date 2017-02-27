<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="head.jsp"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML>
<html>
  <head>  
    <title>近期问答</title>
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
	</style>
	<script type="text/javascript">
		function xiayiye(){
			var i = document.getElementById('nowPage').value;
			document.getElementById('nowPage').value=++i;
			document.getElementById('wd1').submit();
		}
		function shangyiye(){
			var i = document.getElementById('nowPage').value;
			document.getElementById('nowPage').value=--i;
			document.getElementById('wd1').submit();
		}
		function shouye(){
			document.getElementById('nowPage').value="1";
			document.getElementById('wd1').submit();
		}
		function moye(){
			var i = document.getElementById('allPageCount').value;
			document.getElementById('nowPage').value=i;
			document.getElementById('wd1').submit();
		}
	</script>
  </head>
  
  <body>
  	<div id="wendatupian"></div>
    <div id="wendazhuti">
    	<div id="wendadaohang">
    		<div class="daohang"><a href="htwenti.jsp">用户咨询</a> </div>
    		<div class="daohang">
				<form action="ht_wd_select" method="post">
					<input type="hidden" name="nowPage" value="1">
					<input type="submit" value="近期问答">			
				</form> 
			</div>
    	</div>
    	<s:iterator value="page.nowPageData">
    	<div class="wenda">
    		<div class="wenda1"><s:property value="username" />:<s:property value="userq" /></div>
    		<div class="wenda2"><s:property value="doctorname" />:<s:property value="doctora" /></div>
    		<div class="wenda3">
    			<form action="wd_deletewd">
    				<input type="hidden" name="wendaid" value="<s:property value="wendaid" />">
    				<input type="submit" value="删除该问答">
    			</form>
    		</div>
    	</div>
    	</s:iterator>
    	<div class="page">
    		<div class="page1" onclick="shouye()">首页</div>
    		<div class="page1" onclick="shangyiye()">上一页</div>
    		<div class="page1" onclick="xiayiye()">下一页</div>
    		<div class="page1" onclick="moye()">末页</div>
    		<form action="wd_select" method="post" id="wd1">
				<input type="hidden" name="nowPage" value="${page.nowPage }" id="nowPage">
			</form> 
    	</div>
    	<input type="hidden" value="${page.allPageCount }" id="allPageCount">
    </div>
  </body>
</html>
