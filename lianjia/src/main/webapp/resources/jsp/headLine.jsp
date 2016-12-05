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

<link rel="stylesheet" type="text/css"
	href="resources/css/styleindex.css">
<link rel="stylesheet" type="text/css"
	href="resources/css/styleline.css">

<script src="resources/js/jquery-1.6.min.js"></script>
<script type="text/javascript" src="resources/js/roundabout.js"></script>

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
	height: 492px;
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
	width: 100%;
	padding-top: 20px;
	font-family: 微软雅黑, 宋体;
}

.tabDivClass {
	float: left;
	width: 850px;
	height: 200px;
	margin-top: 50px;
	margin-left: 250px;
}

.boxone {
	width: 200px;
	height: 180px;
	float: left;
	margin-left: 20px;
	margin-top: 10px;
}

.boxtwo {
	width: 550px;
	height: 180px;
	font-family: 微软雅黑, 宋体;
	margin-left: 250px;
	margin-top: 10px;
	padding-top: 20px;
	font-size: 23px;
}

.boxtwo h5 {
	font-family: 微软雅黑, 宋体;
	line-height: 20px;
}

.boxthr {
	font-family: 微软雅黑, 宋体;
	font-size: 15px;
	text-align: left;
	padding-top: 15px;
}

.tabbox {
	font-family: 微软雅黑, 宋体;
	font-size: 25px;
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

td:hover {
	color: #FF8800;
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

	$(function() {
		$('#myRoundabout').roundabout({
			minOpacity : .8, //后面图片的透明度
			minScale : 0.7
		//缩放比例
		});
		window.___gcfg = {
			lang : 'zh-CN'
		};
		(function() {
			var po = document.createElement('script');
			po.type = 'text/javascript';
			po.async = true;
			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(po, s);
		})();
	});

	window.onload = function() {
		//先进行页面加载  之后在运行该方法
		var liObjs = document.getElementsByTagName("td");
		//遍历li数组
		for ( var index in liObjs) {
			liObjs[index].onmouseover = function() {
				//自定义一个函数
				change(this);
			}
		}
		//自定义切换tab页函数 
		function change(liObj) {
			//先遍历无序列表li数组对象 
			for ( var index in liObjs) {
				//判断传入对象 是否等于遍历到的当前对象
				if (liObjs[index] == liObj) {
					liObjs[index].className = "tabClass";
					var divContent = document.getElementById("tab-" + index);
					divContent.style.display = "block";

				} else {
					//未被选中对象 
					liObjs[index].className = "";
					var divContent = document.getElementById("tab-" + index);
					divContent.style.display = "none";
				}
			}

		}
	};
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
		<div class="gallery">
			<div id="gallery" class="wraper">
				<ul id="myRoundabout">
					<li><a
						href="http://house.hexun.com/2016-11-11/186840824_1.html"
						target="_blank"><img src="./resources/images/header5.png" alt=""></a></li>
					<li><a
						href="http://house.hexun.com/2016-11-09/186802321_1.html"
						target="_blank"><img src="./resources/images/header7.png" alt=""></a></li>
					<li><a
						href="http://house.hexun.com/2016-11-10/186821875_1.html"
						target="_blank"><img src="./resources/images/header6.png" alt=""></a></li>
				</ul>
			</div>
		</div>
	</div>
	<div id="center">
		<div class="center-lift" align="center">

			<div id="bigBox">
				<table class="tabbox">
					<tr>
						<td class="tabClass">最新文章&nbsp;&nbsp;&nbsp;</td>
						<td>帮你选房&nbsp;&nbsp;&nbsp;</td>
						<td>热点新闻&nbsp;&nbsp;&nbsp;</td>
						<td>大数据&nbsp;&nbsp;&nbsp;</td>
						<td>原创观点&nbsp;&nbsp;&nbsp;</td>
						<td>业主测评&nbsp;&nbsp;&nbsp;</td>
						<td>装修经验</td>
					</tr>
				</table>

				<div class="tabDivClass" id="tab-0">
					<div class="boxone">
						<img alt="" src="./resources/images/h1.jpg">
					</div>
					<div class="boxtwo">
						2016H1瑞安半年报｜瑞安会卖瑞虹新城么？
						<p></p>
						<h5 align="left">
							<a href="">微信最近传言近两年做得风生水起的瑞安集团会转手或放弃虹口中部的瑞虹新城项目，这是真的吗？让我们用数据说话。</a>
						</h5>
						<div class="boxthr">发布日期：2016-11-10</div>
					</div>
					<p>
					<div class="boxone">
						<img alt="" src="./resources/images/h2.jpg">
					</div>
					<div class="boxtwo">
						又有楼盘被曝光，买房还需擦亮眼
						<p>
						<h5 align="left">
							<a href="">问题频出！这些楼盘究竟怎么了？买房不易，首先要擦亮双眼，仔细甄选。</a>
						</h5>
						<div class="boxthr">发布日期：2016-11-10</div>
					</div>
				</div>


				<!--style="display:none   表示隐藏  不显示 -->
				<div class="tabDivClass" id="tab-1" style="display:none">
					<div class="boxone">
						<img alt="" src="./resources/images/h3.jpg">
					</div>
					<div class="boxtwo">
						预算500万想买三房一步到位，有哪些选择？
						<p>
						<h5 align="left">
							<a href="">不想置换折腾，想一步到位，三房的话基本可以满足三到四口之家的居住需求，那么预算500万的三房有哪些可选？</a>
						</h5>
						<div class="boxthr">发布日期：2016-11-03</div>
					</div>
					<p></p>
					<div class="boxone">
						<img alt="" src="./resources/images/h5.jpg">
					</div>
					<div class="boxtwo">
						没有装修那些坑，哪来你要的鸟语花香
						<p>
						<h5 align="left">
							<a href="">微信最近传言近两年做得风生水起的瑞安集团会转手或放弃虹口中部的瑞虹新城项目，这是真的吗？让我们用数据说话。</a>
						</h5>
						<div class="boxthr">发布日期：2016-11-10</div>
					</div>
				</div>


				<div class="tabDivClass" id="tab-2" style="display:none">
					<div class="boxone">
						<img alt="" src="./resources/images/h6.jpg">
					</div>
					<div class="boxtwo">
						不诉离殇｜毕业了也要住在大学周边
						<p>
						<h5 align="left">
							<a href="">舒适的居住，是生活和生命质量的基础与呼应。舒适的居住离不开精心的装修，那么如何避开装修中的那些坑呢？本文为你解答。</a>
						</h5>
						<div class="boxthr">发布日期：2016-10-21</div>
					</div>
					<p></p>
					<div class="boxone">
						<img alt="" src="./resources/images/h4.jpg">
					</div>
					<div class="boxtwo">
						2016H1瑞安半年报｜瑞安会卖瑞虹新城么？
						<p>
						<h5 align="left">
							<a href="">微信最近传言近两年做得风生水起的瑞安集团会转手或放弃虹口中部的瑞虹新城项目，这是真的吗？让我们用数据说话。</a>
						</h5>
						<div class="boxthr">发布日期：2016-11-10</div>
					</div>
				</div>


				<div class="tabDivClass" id="tab-3" style="display:none">
					<div class="boxone">
						<img alt="" src="./resources/images/h5.jpg">
					</div>

					<div class="boxtwo">
						八一八内环内临平路板块的二手盘｜金轩大邸
						<p>
						<h5 align="left">
							<a href="">在中环外动辄买房吃土的情况下，内环内还有一些性价比二手房的，且不是你想象中的老公房哟。</a>
						</h5>
						<div class="boxthr">发布日期：2016-10-26</div>
					</div>
					<p></p>
					<div class="boxone">
						<img alt="" src="./resources/images/h9.jpg">
					</div>
					<div class="boxtwo">
						北外滩，多的是你不知道的事
						<p>
						<h5 align="left">
							<a href="">与苏州河一河之隔的北外滩，与朴实的印象不同的是，这里有着很强的历史气息和人文环境。</a>
						</h5>
						<div class="boxthr">发布日期：2016-11-08</div>
					</div>
				</div>


				<div class="tabDivClass" id="tab-4" style="display:none">
					<div class="boxone">
						<img alt="" src="./resources/images/h10.jpg">
					</div>
					<div class="boxtwo">
						闸北优选｜慧芝湖花园的安利在此
						<p>
						<h5 align="left">
							<a href="">2015年11月，闸北区与静安区合并为了新静安，这对于当时在闸北买房的人来说，真是个不错的圣诞礼物。</a>
						</h5>
						<div class="boxthr">发布日期：2016-10-26</div>
					</div>
					<p></p>
					<div class="boxone">
						<img alt="" src="./resources/images/h11.jpg">
					</div>
					<div class="boxtwo">
						上海滩是如何建成的？大数据回顾上海住宅房百年发展史
						<p>
						<h5 align="left">
							<a href="">上海滩的建成不是一天两天，100多年的时间，才让上海从一个海边的小县城变成了今天这样的远东第一大都会。</a>
						</h5>
						<div class="boxthr">发布日期：2016-10-19</div>
					</div>
				</div>



				<div class="tabDivClass" id="tab-5" style="display:none">
					<div class="boxone">
						<img alt="" src="./resources/images/h12.jpg">
					</div>
					<div class="boxtwo">
						上海地铁族从哪上车、哪条线、哪个站最拥挤
						<p>
						<h5 align="left">
							<a href="">许多人选择住处是会把地铁出行方便与否作为考量因素的，那么上海哪个地铁站最挤呢？先看看再决定住哪儿。</a>
						</h5>
						<div class="boxthr">发布日期：2016-11-10</div>
					</div>
					<p></p>
					<div class="boxone">
						<img alt="" src="./resources/images/h13.jpg">
					</div>
					<div class="boxtwo">
						你买的房子边上有多少全家、链家和星爸爸？
						<p>
						<h5 align="left">
							<a href="">全家链家星爸爸这三家都是最清楚普通市民真实的消费投资数据与足迹的线下店，这些绿标可以大致反映出上海的房价指数。</a>
						</h5>
						<div class="boxthr">发布日期：2016-11-10</div>
					</div>
				</div>


				<div class="tabDivClass" id="tab-6" style="display:none">
					<div class="boxone">
						<img alt="" src="./resources/images/h14.jpg">
					</div>
					<div class="boxtwo">
						杭州房地产市场调控再升级
						<p>
						<h5 align="left">
							<a href="">11月10日起，杭州实施进一步住房限购、上调住房公积金贷款和商业性住房贷款首付比例、暂停发放第三套及以上住房贷款、加强对首付资金来源审核、加强对土地竞买资金来源审查。</a>
						</h5>
						<div class="boxthr">发布日期：2016-11-10</div>
					</div>
					<p></p>
					<div class="boxone">
						<img alt="" src="./resources/images/h15.jpg">
					</div>
					<div class="boxtwo">
						现身说法｜经纬城市绿洲业主谈居住感受和区域利弊
						<p>
						<h5 align="left">
							<a href="">真正住在某小区的人才是最清楚它的居住体验的人，经纬城市绿洲真实业主来跟大家分享居住体验了！</a>
						</h5>
						<div class="boxthr">发布日期：2016-11-10</div>
					</div>
				</div>
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

		<img alt="" src="resources/images/police_110x60.png"> <img
			alt="" src="resources/images/gongshang_125x60.png"> <img alt=""
			src="resources/images/cnnic.png">

	</div>
</body>
</html>
