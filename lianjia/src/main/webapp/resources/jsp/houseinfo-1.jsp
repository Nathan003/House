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
	width: 1045px;
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
	height: 2680px;
}

.center-lift,.center-right {
	float: left;
	border: solid 1px #F0F0F0;
}

.center-lift {
	width: 950px;
	margin-left: 20px;
}

.centerDao {
	margin: 20px;
	font-family: 微软雅黑, 宋体;
}

.center-right {
	width: 300px;
	margin-left: 30px;
	margin-top: 40px;
	padding-left: 20px;
	font-family: 微软雅黑, 宋体;
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
				src="./resources/images/logo.jpg" width="300px" height="100px">
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
			<div class="mid-lj" align="center">
				<div class="midleft1">
					<h1>融创浦建路727，雅居内环内入驻正当时</h1>
					<p></p>
					作者：赵文屹 来源： 链家【原创】 探盘时间： 2016年11月02日
					<p></p>
					位于浦东内环内的融创·浦建路727，建筑面积约94-136㎡的现房雅居，均价80000元/㎡高性价比，目前入驻正当时。
				</div>
				<div class="midleft1">
					<h3>1、地段：雄踞内环内</h3>
					<p></p>

					融创?浦建路727位于内环内的浦建路727号，抢占浦东优质地段，依托双地铁（4号线蓝村路站、6号线蓝村路站），畅享八佰伴等繁华商圈，贯通四大产业基地，直达徐家汇等各区域，大城生活轻松拥有。
					<p></p>
					<img alt="" src="./resources/images/1.1.jpg">
					<p></p>
					两环：4号线换线轨交、内环线
					<p></p>
					两脉：p6号线产业动脉、浦东动脉杨高路
					<p></p>
					三端：北端产业园区、中端产业园区、南端集中人居
					<p></p>

					四大产业：陆家嘴、金桥、张江、外高桥等四大产业园区
					<p></p>
					五大商圈：八佰伴、不夜城、中山公园、徐家汇、世博园
					<p></p>

					六大城区：徐汇、静安、普陀、杨浦、黄浦、浦东
				</div>
				<div class="midleft1">
					<h3>2、配套：商业矩阵+浪漫公园</h3>
					<p></p>
					融创浦建路727周边荟萃商业、公园等生活配套，可以满足全龄化人居的需求。 高尚生活圈：

					商业中心：八佰伴、世博源、正大广场、国金中心、联洋广场、大拇指广场、喜马拉雅中心、浦东嘉里城；

					休闲中心：喜来登、希尔顿逸林、嘉里大酒店、梅赛德斯奔驰中心； 艺术中心：上海科技馆、东方艺术中心、浦东新区图书馆、世博馆。
					<p></p>
					<img alt="" src="./resources/images/1.2.jpg">
					<p></p>
					便捷生活圈： 商业圈：富都广场、联捷商厦、巴黎春天； 自然圈：世纪公园、塘桥公园。
				</div>
				<div class="midleft1">
					<h3>3、产品：改善时代生活雅居</h3>
					<p></p>

					融创浦建路727精装交付，选用的都是德系、日美品牌为主，从硬装主材到家电用材，深度精装。德国杜拉维特或同等品牌台盆，德国高仪或同等品牌龙头，德国卡德维或同等品牌浴缸，德国西门子或同等品牌厨房用品，日本TOTO或同等品牌马桶，日本东芝或同等品牌空调。
					<p></p>
					<img alt="" src="./resources/images/1.3.jpg">
					<p></p>
					此外，还有6大智能化系统和8重收纳空间，从生活细节入手，改善居住者的生活体验。
				</div>
				<div class="midleft1">
					<h3>4、户型：建面约94-136㎡精工设计</h3>
					<p></p>
					融创浦建路727的户型设计合理，主要还是以改善需求为主，兼顾舒适与实用。 A户型：建筑面积约94㎡的1室2厅1卫
					户型设计灵动，多功能明亮操作阳台，直连厨房更便捷，科学规划动线，南向大主卧，L型厨房设计合理。
					<p></p>
					<img alt="" src="./resources/images/1.4.jpg"> <img alt=""
						src="./resources/images/1.5.jpg">
					<p></p>
				</div>
				<div class="midleft1">
					<h3>5、总结</h3>
					<p></p>

					融创浦建路727位于内环内，硬件全面升级，智能化及24小时管家服务升级配套，高标准的精装修改造，是个投资自住两相宜的产品。有兴趣，不妨去看看。

				</div>
			</div>
		</div>

		<div class="center-right">
			<div>
				<h3>融创·浦建路727</h3>
				<p></p>
				<img alt="" src="./resources/images/1.1.1.jpg">
				<p></p>
				参考价格： 76000 元/m²起
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
</body>
</html>
