<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>链家房屋交易平台</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="resources/css/styleindex.css">
<link rel="stylesheet" type="text/css"
	href="resources/css/styleturn.css">

<script type="text/javascript" src="resources/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="resources/js/jquery.orbit.min.js"></script>

<style type="text/css">
* {
	padding: 0;
	margin: 0;
}

#header,#banner,#center,#footer {
	width: 100%;
	border: solid 1px #F0F0F0;
	margin-left: auto;
	margin-right: auto;
}

.header-lift,.header-right {
	border: solid 1px black;
	float: left;
	height: 100px;
}

#header {
	height: 100px;
}

.header-lift {
	width: 300px;
}

.header-right {
	width: 1047px;
	background-image: url(./resources/images/bg.jpg);
}

.header-right ul li {
	margin-left: 12px;
	float: left;
	list-style: none;
	width: 160px;
}

.header-right ul li a {
	height: 100px;
	line-height: 100px;
	text-align: center;
	text-decoration: none;
	display: block;
	font-size: 20px;
	color: #FFF;
}

.header-right ul li a:link { /*鼠标点击超链接时的状态*/
	width: 90px;
	height: 100px;
	line-height: 100px;
}

.header-right ul li a:hover { /*鼠标点击超链接时的状态*/
	width: 90px;
	height: 100px;
	line-height: 100px;
	background: blue;
}

#banner {
	height: 300px;
	background: url(./resources/images/headerpage.png);
	font-size: 38px;
}

.lj-Font {
	margin-top: 80px;
}

.bannerTab {
	margin-top: 10px;
}

.bannerTab1 {
	width: 290px;
	height: 45px;
}

.bannerTab2 {
	width: 90px;
	height: 45px;
	font-size: 19px;
	color: white;
	background: #009900;
}

#center {
	border: solid 1px #F0F0F0;
	height: 600px;
}

.center-lift,.center-right {
	float: left;
}

.center-lift {
	width: 950px;
	margin-left: 20px;
	height: 500px;
}

.centerDao {
	margin: 20px;
	font-family: 微软雅黑, 宋体;
}

.center-right {
	width: 300px;
	margin-left: 30px;
	margin-top: 70px;
	padding-left: 20px;
	font-family: 微软雅黑, 宋体;
	border: solid 1px #F0F0F0;
}

.dtinfo {
	margin-top: 15px;
	margin-left: 20px;
	font-family: 微软雅黑, 宋体;
	font-size: 25px;
}

.ddinfo {
	margin-left: 15px;
	margin-top: 23px;
	font-family: 微软雅黑, 宋体;
	font-size: 17px;
}

#footer {
	height: 150px;
}

.lj-foot {
	margin-top: 10px;
}

.footer1 {
	margin-top: 30px;
}

.mid-lj {
	margin-top: 30px;
	font-family: 微软雅黑, 宋体;
}

.midleft1 {
	margin-top: 20px;
}
</style>


<script type="text/javascript">
	function myFocus(obj, color) {

		//判断文本框中的内容是否是默认内容
		if (obj.value == "请输入区域，房型或小区开始找房") {
			obj.value = "";
		}

		//设置文本框获取焦点时候背景颜色变换
		obj.style.backgroundColor = color;
	}

	function myblur(obj, color) {

		if (obj.value == "") {
			obj.value = "请输入区域，房型或小区开始找房";
		}
		//当鼠标离开时候改变文本框背景颜色
		obj.style.background = color;
	}
</script>
</head>

<body>
	<div id="header">
		<div class="header-lift">
			<a href="http://localhost:8080/lianjia/"> <img alt=""
				src="./resources/images/logo.jpg" width="300px" height="99px">
			</a>
		</div>
		<div class="header-right">
			<ul class="nav">
				<li><a href="">首页</a></li>
				<li><a href="house/houseList">租房</a></li>
				<li><a href="./resources/jsp/headLine.jsp">头条</a></li>
				<li><a href="traRecords/traRecordsList">交易记录</a></li>
					<li><a href="house/login" target="">登录</a></li>
			</ul>
		</div>

	</div>

	<div id="center">
		<div class="center-lift">
			<h3 class="centerDao">优房导购></h3>
			<div id="featured">
				<a class="orbit-item" data-caption="#htmlCaption1"> <img
					src="./resources/images/3.1.jpg" alt="img1"></a> <a
					class="orbit-item" data-caption="#htmlCaption2"> <img
					src="./resources/images/3.2.jpg" alt="img1"></a> <a
					class="orbit-item" data-caption="#htmlCaption3"> <img
					src="./resources/images/3.3.jpg" alt="img1"></a> <a
					class="orbit-item" data-caption="#htmlCaption1"> <img
					src="./resources/images/3.4.jpg" alt="img1"></a> <a
					class="orbit-item" data-caption="#htmlCaption1"> <img
					src="./resources/images/3.5.jpg" alt="img1"></a> <a
					class="orbit-item" data-caption="#htmlCaption1"> <img
					src="./resources/images/3.6.jpg" alt="img1"></a> <a
					class="orbit-item" data-caption="#htmlCaption1"> <img
					src="./resources/images/3.7.jpg" alt="img1"></a> <a
					class="orbit-item" data-caption="#htmlCaption1"> <img
					src="./resources/images/3.8.jpg" alt="img1"></a> <a
					class="orbit-item" data-caption="#htmlCaption1"> <img
					src="./resources/images/3.9.jpg" alt="img1"></a> <a
					class="orbit-item" data-caption="#htmlCaption1"> <img
					src="./resources/images/3.12.jpg" alt="img1"></a>
			</div>

		</div>

		<div class="center-right">
			<div>
				<h3>天合嘉园8808</h3>
				<p></p>
				<img alt="" src="./resources/images/1.1.1.jpg">
				<p></p>
				参考价格： 96000 元/m²起
				<p></p>
				电话： 400 096 1603
				<p></p>
				开发商： 上海利特曼置业有限公司
				<p></p>
				楼盘地址： 浦东 - 塘桥 浦建路727号（近杨高南路）
			</div>



		</div>
	</div>

	<div id="footer" align="center">
		<div class="footer1">
			<!--栏目的名称和链接-->
			<a href="#" class="lmClass">关于链家</a>&nbsp;| <a href="#"
				class="lmClass">人才招聘</a>&nbsp;| <a href="#" class="lmClass">联系我们</a>&nbsp;|
			<a href="#" class="lmClass">用户协议</a>&nbsp;| <a href="#"
				class="lmClass">友情链接</a>&nbsp;| <a href="#" class="lmClass">最新问答</a>&nbsp;|
			<a href="#" class="lmClass">房贷计算</a>
		</div>
		<h6 class="lj-foot">
			北京链家房地产经济有限公司&nbsp;|网络经营许可证&nbsp;京ICP备11024601号-12</h6>

		<h6>(c)Copyright(c)2010-2015&nbsp;链家网Lianjia.com版权所有</h6>

		<img alt="" src="./resources/images/police_110x60.png"> <img
			alt="" src="./resources/images/gongshang_125x60.png"> <img
			alt="" src="./resources/images/cnnic.png">

	</div>


	<script>
		$(window).load(function() {
			$('#featured').orbit({
				bullets : true,
				startClockOnMouseOut : true,
				captionAnimation : 'slideOpen'
			});
		});
	</script>

</body>
</html>
