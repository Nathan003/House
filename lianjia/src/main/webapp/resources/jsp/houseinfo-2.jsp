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
	height: 2280px;
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
			<div class="mid-lj" align="center">
				<div class="midleft1">
					<h1>中环张江华发四季 水岸公寓、美学洋房礼献上海</h1>
					<p></p>
					作者：赵智杰 探盘时间： 2016年10月31日
					<p></p>
					华发四季项目毗邻中环线申江路段，距上海迪士尼乐园约5公里，距陆家嘴金融贸易区约10公里，距浦东国际机场约17公里，地理位置优越，主打水岸公寓、美学洋房产品。
				</div>
				<div class="midleft1">
					<h3>1、区域地段：张江高新园区南区</h3>
					<p></p>

					华发四季项目位于“中国硅谷”——浦东新区张江高科技园南区配套生活基地，由知名房企华发集团倾力打造。
					<p></p>
					<img alt="" src="./resources/images/2.1.jpg">
					<p></p>
					华发四季项目总占地面积约4.5万㎡，总建筑面积约13.9万㎡（含地下），两条天然河道形成其独有的私密滨水特征，是华发集团优+生活体系在上海的项目。项目由11幢7层低密度花园洋房、7幢18层高层公寓和欧式风情社区配套商业组成。华发开发团队与美国WATG、新加坡贝尔高林、柏涛设计等国际一流设计团队强强联合，致力于为高端人群提供舒适、轻松、惬意、便捷的国际化、度假式的居住体验。
				</div>
				<div class="midleft1">
					<h3>2、配套与交通：衣食住行齐全</h3>
					<p></p>
					华发四季身处张江高科技园区，2号线金科路站、11号线罗山路站都有公交直接接驳项目，此外正在建设的13号线三期终点站张江站建成通车后，讲成为项目最近的轨交站点，直线距离仅约2公里，出行便捷。项目近邻华夏中路（中环），快速转罗山路（内环延长线）及A20（外环）；
					项目周边有申江路、张江路、金科路等多条城市主干道路网便捷，可达浦东世纪公园、前滩、迪士尼乐园、浦东机场的等主要区域；公交线路则有张江南环线、1046路、778路、张江环线、116路、浦东25路、孙桥1路、989路、江南专线、161路、636路等畅达浦东各重要商圈。
					<p></p>
					<img alt="" src="./resources/images/2.2.jpg">
					<p></p>
					周边配套： 幼儿园：张江英桥幼儿园、上海市民办中芯幼儿园、高科幼儿园、金桥镇三桥幼儿园、张江幼儿园、上海市浦东新区广兰幼儿园
					<p></p>

					中小学：张江高科实验小学藿香校区、上海市民办中芯学校（小学部）、张江高科实验小学香楠校区、张江镇中心小学、上海浦东新区金桥镇三桥小学；华东师范大学第二附属中学、上海外国语大学附属浦东外国语学校、上海民办张江集团学校、上海市民办中芯学校（中学部）、华东师范大学张江实验中学、益江中学
					综合商场：长泰广场、传奇广场、家乐福等
					<p></p>
					医院：东方医院、曙光医院、永典口腔医院、张江社区卫生服务中心等
					<p></p>
					银行：中国工商银行、中国银行等
					<p></p>
					休闲：东郊宾馆、中兴和泰酒店、博雅酒店、和颐酒店、格林豪泰等
				</div>
				<div class="midleft1">
					<h3>3、产品分析：水岸公寓、美学洋房</h3>
					<p></p>

					华发四季位于浦东张江板块，在售建筑面积约115㎡水岸公寓，建筑面积约120-150㎡美学洋房，新品于2016年10月30日加推，礼献上海。
					<p></p>
					<img alt="" src="./resources/images/2.3.jpg">

				</div>
				<div class="midleft1">
					<h3>4、小编总结</h3>
					<p></p>
					华发四季位于浦东张江板块，在售建筑面积约115㎡水岸公寓，建筑面积约120-150㎡美学洋房，新品于2016年10月30日加推，礼献上海。

					有在浦东中环段附近置业需求的购房者，不妨抽空前往华发四季售楼处一探究竟。 售楼处地址：浦东军民公路勤政路路口。
					<p></p>

				</div>

			</div>
		</div>

		<div class="center-right">
			<div>
				<h3>华发四季</h3>
				<p></p>
				<img alt="" src="./resources/images/2,2.1.jpg">
				<p></p>
				参考价格： 86000 元/m²起
				<p></p>
				电话： 400 096 1603
				<p></p>
				开发商： 上海利特曼置业有限公司
				<p></p>
				楼盘地址： 浦东 - 塘桥 浦建路2323号（近杨高南路）
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
