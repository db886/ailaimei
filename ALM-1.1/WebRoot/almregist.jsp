<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="head.jsp"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML>
<html>
  <head>
    <title>欢迎注册艾莱美</title>
    
    <style type="text/css">
    	#newdaohang{
			display: none;
		}
		#registzhuti{
			width: 1000px;
			position: absolute;
			left: 50%;
			top:100px;
			margin-left: -500px;
			font-family: "微软雅黑";
		}
		#registshuru{
			width: 420px;
			height:500px;
			position: absolute;
			background:url(image/meitu_3.jpg) no-repeat;
			top:60px;
			padding-top:20px;
			left: 630px;
		}
		.regist{
			width: 100%;
			height: 50px;
			line-height: 50px;
			padding-left: 30px;
		}
		.regist input{
			width: 220px;
			height: 40px;
			margin-left:30px;
			padding-left:10px;
			border:1px solid #DDDDDD;			
			font-size: 13px;
			background-color:#fff;
		}
		#anniu{
			width:300px;
			cursor: pointer;
			background: url(image/meitu_7.jpg);
		}
		.tishi{
			width: 100%;
			height: 15px;
			padding-left: 140px;
			color: #FC4343;	
		}
    </style>
  </head>
  <script type="text/javascript">
  	function regist(){
  		$(".tishi").html("");
  		var u = $(".username").val();
  		var p = $(".pass").val();
  		var p2 = $(".pass2").val();
  		if(u==""){
  			$("#yonghuming").html("用户名不能为空");
  		}
  		if(p==""){
  			$("#mima").html("密码不能为空");
  		}
  		if(p2!=p){
  			$("#mimaqueren").html("两次输入密码不一致");
  		}  		
  		if(p2==p && u!="" && p!=""){
  	  	$.ajax({
  			type: "post",
  			url: "ajax/registAjax.action",
  			data:{"username":u,"pass":p},
  			success:function(data){
  				if(data == "注册成功"){
  					location.href="almlogin.jsp";
  				}else if(data=="用户名已存在"){
  					$("#yonghuming").html("用户名已存在");
  				}
  			},
  			error:function(){
				alert("hhhhhhhh");
			}
  		})
  		}
  	}
  </script>
  <body>
   <div id="registzhuti">
   <div id="registshuru">
   	<div class="regist">用&nbsp;&nbsp;户&nbsp;&nbsp;名&nbsp;&nbsp;<input class="username" placeholder="请输入用户名" type="text" name="username"></div>
   	<div id="yonghuming" class="tishi"></div>
   	<div class="regist">设置密码&nbsp;&nbsp;&nbsp;<input class="pass" placeholder="请输入密码" type="password" name="pass"></div>
   	<div id="mima" class="tishi"></div>
   	<div class="regist">确认密码&nbsp;&nbsp;&nbsp;<input class="pass2" placeholder="请再次输入密码" type="password" name="pass"></div>
   	<div id="mimaqueren" class="tishi"></div>
   	<div class="regist">验&nbsp;&nbsp;证&nbsp;&nbsp;码&nbsp;&nbsp;<input class="mathpass" placeholder="请输入验证码" type="text" name="mathpass"></div>
   	<div id="yanzhengma" class="tishi"></div>
   	<div class="regist">手机号码&nbsp;&nbsp;&nbsp;<input class="mathpass" placeholder="请输入手机号码" type="text" ></div>
   	<div id="shouji" class="tishi"></div>
   	<div class="regist">手机验证码<input class="mathpass" placeholder="请输入手机验证码" type="text" ></div>
    <div id="shoujiyanzhengma" class="tishi"></div>
    <div class="regist"><input id="anniu" type="button" value="立即注册" onclick="regist()"></div>
   </div>
   </div>
  </body>
</html>
