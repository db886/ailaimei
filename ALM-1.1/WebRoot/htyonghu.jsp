<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="head.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
<title>艾莱美-用户管理</title>
<style type="text/css">
.yonghuguangli {
	position: absolute;
	top: 203px;
	width: 1000px;
	left: 50%;
	margin-left: -500px;
}

.yonghu-shousuo {
	width: 100%;
	height: 60px;
	padding: 10px;
	border: 3px solid #B5B5B5;
}

.shijianchazhao {
	margin-top: 8px;
}

.chazhao {
	float: left;
	width: 150px;
}

.yonghu-hengfu {
	width: 100%;
	height: 20px;
	padding: 10px;
	border-bottom: 3px solid #B5B5B5;
}

.hengfu {
	width: 150px;
	float: left;
	text-align: center;
}

.yonghu-zhanshi {
	width: 100%;
}

.yonghu1 {
	width: 100%;
	height: 80px;
	border: 2px solid #B5B5B5;
	padding: 10px;
	margin-top: 10px;
}

.yonghu-touxiang, .yonghu-ming, .yonghu-zhuceshijian,
	.yonghu-shoujihaoma, .yonghu-caozuo {
	width: 150px;
	float: left;
	height: 80px;
	text-align: center;
	line-height: 80px;
}

.yonghu-touxiang img {
	width: 80px;
	height: 80px;
}
.yonghu-fenye{
	display: none;
}
.fenye {
	width: 80px;
	float: left;
	text-align: center;
}
.yonghu-xiugai{
	margin-left:200px;
	display: none;
}
.yonghu-xiugai input{
	margin-top: 20px;
}
.shanchu-tishi{
	color: #FC4343;	
}
</style>
</head>
<script type="text/javascript">
	var h1 = "<div class='yonghu1'><div class='yonghu-touxiang'><img src='";
	var h2 = "' class='touxiang'></div><div class='yonghu-ming'><span>";
	var h3 = "</span></div><div class='yonghu-zhuceshijian'><span>";
	var h4 = "</span></div><div class='yonghu-shoujihaoma'><span>";
	var h5 = "</span></div><div class='yonghu-caozuo'><a onclick='chakanziliao(this)' title='";
	var h6 = "'>查看/修改</a>&nbsp;&nbsp;<a onclick='shanchuyonghu(this)' title='";
	var h7 = "' >删除</a></div></div>";

	var nowPage = 1;
	var allPageCount = 1;
	
	function namechazhao(u) {
		$(".yonghu-fenye").hide();
		$(".yonghu-xiugai").hide();
		$(".yonghu-zhanshi").show();
		$.ajax({
			type : "post",
			url : "ajax/userNameSelectAjax.action",
			data : {
				"string" : u
			},
			success : function(data) {
				if (data == null) {
					alert("没有此用户");
				} else {
					$(".yonghu-zhanshi").html(" ");
					var t = data.registtime.substring(0, 10);
					$(".yonghu-zhanshi").append(h1 + data.head + h2 + data.username + h3 + t + h4 + data.telephone + h5 + data.username + h6 + data.username + h7);
					
					$(".id").val(data.id);
					$(".head").val(data.head);
					$(".headshow").attr("src",data.head);
					$(".username").val(data.username);
					$(".personname").val(data.personname);
					$(".sex").val(data.sex);
					$(".birthday").val(data.birthday);
					$(".address").val(data.address);
					$(".registtime").val(data.registtime);
					$(".telephone").val(data.telephone);
					$(".qq").val(data.qq);
					$(".email").val(data.email);
				}
			},
			error : function() {
				alert("66666");
			}
		})
	}

	function timechazhao(i) {
		$(".yonghu-xiugai").hide();
		$(".yonghu-zhanshi").show();
		var u = $(".yonghuzhuceshijian").val();
		$.ajax({
			type : "post",
			url : "ajax/registTimeSelectAjax.action",
			data : {
				"string" : u,
				"nowPage" : i
			},
			success : function(data) {
				if (data.nowPageData == null) {
					alert("该时间没有用户注册");
				} else {
					nowPage = data.nowPage;
					allPageCount = data.allPageCount;
					$(".yonghu-zhanshi").html(" ");
					$.each(data.nowPageData, function(index, user) {
						var t = user.registtime.substring(0, 10);
						$(".yonghu-zhanshi").append(h1 + user.head + h2 + user.username + h3 + t + h4 + user.telephone + h5 + user.username + h6 + user.username + h7);
					})
					$("#allPageCount").html("共-"+allPageCount+"-页");
					$("#nowPage").html("第-"+nowPage+"-页");
					$(".yonghu-fenye").show();
					scrollTo(0,0);
				}
			},
			error : function() {
				alert("66666");
			}
		})
	}
	function shijianchazhao(){
		var i = 1;
		if(i!="" && 0<i && i<=allPageCount){
			timechazhao(i);
		}else{
			alert("没有了");
		}
	}
	function tiaozhuan() {
		var i  = $(".nowPage").val();
		if(i!="" && 0<i && i<=allPageCount){
			timechazhao(i);
		}else{
			alert("没有了");
		}
	}
	function xiayiye() {
		var i = ++nowPage;
		if(i!="" && 0<i && i<=allPageCount){
			timechazhao(i);
		}else{
			nowPage--;
			alert("没有了");
		}
	}
	function shangyiye() {
		var i = --nowPage;
		if(i!="" && 0<i && i<=allPageCount){
			timechazhao(i);
		}else{
			nowPage++;
			alert("没有了");
		}
	}
	function shouye() {
		var i = 1;
		timechazhao(i);

	}
	function usernamecha(){
		var u = $(".yonghuming").val();
		namechazhao(u);
	}
	function chakanziliao(t){
		var u = t.title;
		namechazhao(u);
		$(".yonghu-zhanshi").hide();
		$(".yonghu-xiugai").show();
	}
	function shanchuyonghu(t){
		var u = t.title;
		namechazhao(u);
		$(".yonghu-zhanshi").hide();
		$(".yonghu-xiugai").show();
		$(".shanchu-tishi").html("删除用户只需在用户名后面加上删除两字即可<br/>修改后用户再也无法凭借用户名登录")
	}
</script>
<body>
	<div class="yonghuguangli">
		<div class="yonghu-shousuo">
			<div>
				<div class="chazhao">根据用户名查找</div>
				<input type="text" name="usernmae" placeholder="请输入用户名"
					class="yonghuming"> <input type="button" value="查找"
					onclick="usernamecha()">
			</div>
			<div class="shijianchazhao">
				<div class="chazhao">根据注册时间查找</div>
				<input type="date" name="registtime" placeholder="请输入注册时间"
					class="yonghuzhuceshijian"> <input type="button" value="查找"
					onclick="shijianchazhao()">
			</div>
		</div>
		<div class="yonghu-hengfu">
			<div class="hengfu">
				<span>用户头像</span>
			</div>
			<div class="hengfu">
				<span>用户名</span>
			</div>
			<div class="hengfu">
				<span>注册时间</span>
			</div>
			<div class="hengfu">
				<span>手机号码</span>
			</div>
			<div class="hengfu">
				<span>操作管理</span>
			</div>
			<div class="hengfu">
				<a href="almregist.jsp">新增用户</a>
			</div>
		</div>
		<div class="yonghu-zhanshi"></div>
		<div class="yonghu-fenye">
			<div class="fenye" id="allPageCount">
				<span>共--页</span>
			</div>
			<div class="fenye" id="nowPage">
				<span>第--页</span>
			</div>
			<div class="fenye" onclick="shouye()">
				<span>首页</span>
			</div>
			<div class="fenye" onclick="shangyiye()">
				<span>上一页</span>
			</div>
			<div class="fenye" onclick="xiayiye()">
				<span>下一页</span>
			</div>
			<div class="fenye">
				<input type="text" name='nowPage' class="nowPage"
					style="width: 20px"> 
				<input type="button" value="跳转"
					onclick="tiaozhuan()">
			</div>
		</div>
		<div class="yonghu-xiugai">
    		<form action="registAction_updata" method="post">
    			用户ID：<input type="text" name="id" readonly="readonly" class="id"><br/>
    			用户头像：<input type="hidden" name="head" class="head"><img class="headshow" width="100px" height="100px"><br/>
    			用户名：<input type="text" name="username" class="username"><br/><span class="shanchu-tishi"></span><br/>
    			真实姓名：<input type="text" name="personname" class="personname"><br/>
    			性别：<input type="text" name="sex" class="sex"><br/>
				生日：<input type="text" name="birthday" class="birthday"><br/>
				联系地址：<input type="text" name="address" class="address"><br/>
				注册时间：<input type="date" name="registtime" class="registtime"><br/>
				电话号码：<input type="text" name="telephone" class="telephone"><br/>
				绑定QQ：<input type="text" name="qq" class="qq"><br/>
				绑定邮箱：<input type="text" name="email" class="email"><br/>
				<input type="submit" value="保存">
    		</form>
    	</div>
	</div>
</body>
</html>
