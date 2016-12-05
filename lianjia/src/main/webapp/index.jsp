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
	background-image: url(resources/images/bg.jpg);
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
	background: url(resources/images/headerpage.png);
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
	height: 630px;
}

.center-lift,.center-right {
	float: left;
	height: 605px;
}

.center-lift {
	width: 1000px;
}

.centerDao {
	margin-left: 20px;
	font-family: 微软雅黑, 宋体;
}

.center-right {
	width: 346px;
	background: url(resources/images/dibu3.png);
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
			<a href=""> <img alt="" src="resources/images/logo.jpg"
				width="300px" height="99px">
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
	<div id="banner" align="center">

		<h1 class="lj-Font">链上你未来的家</h1>
		


	</div>
	<div id="center">
		<div class="center-lift">
			<h3 class="centerDao">优房导购></h3>

			<div class="container">
				<!-- Team members structure start -->
				<div class="team-members row">

					<!-- effect-2 html  1 -->
					<div class="single-member effect-2">
						<div class="member-image">
							<img src="resources/images/house1.jpg" alt="Member">
						</div>
						<div class="member-info">
							<h3>别墅</h3>
							<a href="resources/jsp/houseinfo-1.jsp">
								<h5>信达泰禾上海院子项目简介</h5>
								<p>本项目信达泰禾•上海院子位于新江湾城板块，坐落于殷高东路与淞沪路交汇处，占地面积达到13万方</p>
								<div class="social-touch">
									<a class="tweet-touch" href="#"></a><a class="linkedin-touch"
										href="#"></a>
								</div>
							</a>
						</div>
					</div>
					<!-- effect-2 html end -->


					<!-- effect-2 html 2-->
					<div class="single-member effect-2">
						<div class="member-image">
							<img src="resources/images/500x375n (2).jpg" alt="Member">
						</div>
						<div class="member-info">
							<h3>别墅</h3>
							<a href="resources/jsp/houseinfo-2.jsp">
								<h5>龙湖北城天街 单身青年置业首选</h5>
								<p>湖北城天街为7号线刘行站地铁上盖，与15号线顾村公园站（规划）一站换乘，日常上班无需担忧地铁挤不上去啦！</p>
								<div class="social-touch">
									<a class="tweet-touch" href="#"></a><a class="linkedin-touch"
										href="#"></a>
								</div>
							</a>
						</div>
					</div>
					<!-- effect-2 html end -->

					<!-- effect-2 html 3-->
					<div class="single-member effect-2">
						<div class="member-image">
							<img src="resources/images/1212.png" alt="Member">
						</div>
						<div class="member-info">
							<h3>别墅</h3>
							<a href="resources/jsp/houseinfo-3.jsp"><h5>龙湖北城天街
									单身青年置业首选</h5>
								<p>湖北城天街为7号线刘行站地铁上盖，与15号线顾村公园站（规划）一站换乘，日常上班无需担忧地铁挤不上去啦！</p>
								<div class="social-touch">
									<a class="tweet-touch" href="#"></a><a class="linkedin-touch"
										href="#"></a>
								</div>
								</a>
						</div>
					</div>
					<!-- effect-2 html end -->

					<!-- effect-2 html 4-->
					<div class="single-member effect-2">
						<div class="member-image">
							<img src="resources/images/500x375n (3).jpg" alt="Member">
						</div>
						<div class="member-info">
							<h3>别墅</h3>
							<a href="resources/jsp/houseinfo-4.jsp"><h5>龙湖北城天街
									单身青年置业首选</h5>
								<p>湖北城天街为7号线刘行站地铁上盖，与15号线顾村公园站（规划）一站换乘，日常上班无需担忧地铁挤不上去啦！</p>
								<div class="social-touch">
									<a class="tweet-touch" href="#"></a><a class="linkedin-touch" href="#"></a>
								</div> </a>
						</div>
					</div>
					<!-- effect-2 html end -->

					<!-- effect-2 html 5-->
					<div class="single-member effect-2">
						<div class="member-image">
							<img src="resources/images/500x375n.jpg" alt="Member">
						</div>
						<div class="member-info">
							<h3>高档小区</h3>
							<a href="resources/jsp/houseinfo-5.jsp"><h5>恒大御澜庭90㎡户型鉴赏</h5>
								<p>融创浦建路727的户型设计合理，主要还是以改善需求为主，兼顾舒适与实用，美轮美奂，物超所值。</p>
								<div class="social-touch">
									<a class="tweet-touch" href="#"></a><a class="linkedin-touch" href="#"></a>
								</div></a>
						</div>
					</div>
					<!-- effect-2 html end -->

					<!-- effect-2 html 6-->
					<div class="single-member effect-2">
						<div class="member-image">
							<img src="resources/images/500x375n (1).jpg" alt="Member">
						</div>
						<div class="member-info">
							<h3>学区房</h3>
							<a href="resources/jsp/houseinfo-6.jsp">
								<h5>中环张江华发四季 水岸公寓</h5>
								<p>华发四季项目毗邻中环线申江路段，距上海迪士尼乐园约5公里，距陆家嘴金融贸易区约10公里。</p>
								<div class="social-touch">
									<a class="tweet-touch" href="#"></a><a class="linkedin-touch" href="#"></a>
								</div>
							</a>

						</div>
					</div>
					<!-- effect-2 html end -->
				</div>
				<!-- Team members structure start -->
			</div>
		</div>

		<div class="center-right">
			<dl>
				<dt class="dtinfo">房屋新闻></dt>
				<dd class="ddinfo">
					<a
						href="http://jiangsu.china.com.cn/html/house/lsxw/7926211_1.html"
						target="_black"> 国有土地使用权和房屋所有权注销登记公告</a>
				</dd>
				<dd class="ddinfo">
					<a
						href="http://sh.news.anjuke.com/market/121344.html?from=leading_toutiao_view">
						沪全面叫停接力贷 严禁前妻前夫参与还贷</a>
				</dd>
				<dd class="ddinfo">
					<a
						href="http://sh.news.anjuke.com/market/121143.html?from=leading_toutiao_view">
						房产证加名有技巧 不知道会浪费大笔税费！ </a>
				</dd>
				<dd class="ddinfo">
					<a
						href="http://sh.news.anjuke.com/market/121132.html?from=leading_toutiao_view">
						【预售周一见】上海10.31-11.06预售证信息播报</a>
				</dd>
				<dd class="ddinfo">
					<a
						href="http://sh.news.anjuke.com/market/120359.html?from=leading_toutiao_view">
						“立冬”之际 上海楼市依旧“冷冻期”</a>
				</dd>
				<dd class="ddinfo">
					<a
						href="http://sh.news.anjuke.com/market/120352.html?from=leading_toutiao_view">
						章子怡孙红雷共同见证“大院今始为君开”</a>
				</dd>
				<dd class="ddinfo">
					<a
						href="http://sh.news.anjuke.com/market/120350.html?from=leading_toutiao_view">
						沪楼盘交房日却发解约通知 购房者被索赔</a>
				</dd>
				<dd class="ddinfo">
					<a
						href="http://sh.news.anjuke.com/market/120348.html?from=leading_toutiao_view">一笔经济账：当房租超过月供
						你能淡定? </a>
				</dd>
				<dd class="ddinfo">
					<a
						href="http://sh.news.anjuke.com/market/120347.html?from=leading_toutiao_view">房地产税将发挥三大作用
						或抑制房价上涨 </a>
				</dd>

			</dl>
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

		<img alt="" src="resources/images/police_110x60.png"> <img
			alt="" src="resources/images/gongshang_125x60.png"> <img alt=""
			src="resources/images/cnnic.png">

	</div>

</body>
</html>
