<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sform"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>

<meta charset="UTF-8">
<title>房屋详情</title>
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
<!-- 可选的Bootstrap主题文件（一般不使用） -->
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap-theme.min.css"></script>


<script type="text/javascript"
	src="http://api.map.baidu.com/api?v=2.0&ak=HDejUwQ0nuV3xSyeHFUbcQvdL1kK0NCS"></script>

<style type="text/css">
body {
	padding-top: 70px;
	background-color: #FFF;
	color: #333;
	font-family: "Hiragino Sans GB", "Microsoft Yahei UI", "Microsoft Yahei",
		"微软雅黑", "Segoe UI", Tahoma, "宋体b8b体", SimSun, sans-serif;
	font-size: 14px;
	text-rendering: optimizelegibility;
}

.mapTab li {
	float: left;
	font-size: 14px;
	margin: 0 20px;
	position: relative;
	padding-bottom: 10px;
	cursor: pointer;
}

.mapTab li.active span {
	background: #39ac6a;
	width: 100%;
	height: 5px;
	border-radius: 3px;
	position: absolute;
	left: 0;
	bottom: 0;
}

ul1 {
	list-style: none outside none;
	display: block;
	-webkit-margin-before: 1em;
	-webkit-margin-after: 1em;
	-webkit-margin-start: 0px;
	-webkit-margin-end: 0px;
}

a1 {
	font-family: "Hiragino Sans GB", "微软雅黑", "Microsoft YaHei", SimHei,
		Tahoma, "宋体b8b\4f53", SimSun, sans-serif;
	color: #009de8;
	font-size: 20px;
	font-weight: 700
}

.price {
	color: #e4393c;
	margin-top: 7px;
	position: relative;
	width: 100%;
	display: inline-block;
	vertical-align: middle;
}

.num {
	font-family: tahoma;
	font-size: 30px;
	font-weight: 700;
	letter-spacing: -1px;
	margin-right: 3px;
}

.mapTab {
	height: 26px;
	line-height: 16px;
}
</style>
</head>
<body>

	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<nav class="navbar navbar-default navbar-fixed-top navbar-inverse"
					role="navigation">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span><span
								class="icon-bar"></span><span class="icon-bar"></span><span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand"
							href="<%=request.getContextPath()%>/house/houseList">有家</a>
					</div>
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li class="active"><a href="#">我要租房</a></li>
							<li><a href="addHouse">我要出租</a></li>
							<li><a href="<%=request.getContextPath() %>/traRecords/traRecordsList">交易记录</a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">更多<strong class="caret"></strong></a>
								<ul class="dropdown-menu">
									<li><a href="#">关于我们</a></li>
									<li><a href="#">加入我们</a></li>

								</ul></li>
						</ul>
						<form method="post" action="<%=request.getContextPath()%>/house/getSelectLike"
							class="navbar-form navbar-left" role="search">
							<div class="form-group">
								<input type="text" class="form-control" name="houseAddress" />
							</div>
							<button type="submit" class="btn btn-default">查找</button>
						</form>
						<ul class="nav navbar-nav navbar-right">

							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">${user.userName } <strong
									class="caret"></strong></a>
								<ul class="dropdown-menu">
									<li><a href="login">登陆</a></li>
									<li><a href="logout">注销</a></li>
									<li><a href="<%=request.getContextPath() %>/enshrine/enshrineList">我的收藏</a></li>
								</ul></li>
							<li><a href="#">注册</a></li>
							<li style="visibility: hidden;"><a href="#"></a></li>


						</ul>
					</div>
				</nav>
				<div class="row clearfix" style="padding-top: 30px">

					<!-- <div class="col-md-2 column"></div> -->

					<div class="col-md-12 column">

						<div class="row">

							<div class="col-md-12"
								style="margin-top: 10px;border:1px solid #F5F5F5; 
                            -moz-border-radius:10px;  -webkit-border-radius:10px;  border-radius:10px;">
								<div class="col-md-3">
									<img alt="400x300" width="250px" height="200px"
										src="../resources/images/${house.imagesLink}" />
								</div>
								<div class="col-md-5" style="padding-top: 20px">
									<a1
										style="color: #00a9fa; 
                                        	text-decoration: none; 
                                        	color: #009de8;font-size: 20px;
                                        	font-weight: 700;">${info }</a1>
									<p style="padding-top: 10px">${house.type.typeName }&nbsp|&nbsp
										${house.houseArea }</p>
									<span>${house.houseAddress }</span>

								</div>
								<div class="col-md-2" style="padding-top: 35px">
									<div class="price">
										<span class="num">${house.housePrice }</span>元/月
									</div>


									<p>
										<fmt:formatDate value="${house.date }" pattern="yyyy-MM-dd" />
									</p>
								</div>
								<div class="col-md-1" style="padding-top: 50px">

									<p>
										<a class="btn btn-danger btn-lg active" href="<%=request.getContextPath() %>/enshrine/add/${house.houseId }">收藏</a>
									</p>
								</div>
							</div>
							<div class="col-md-12"
								style="margin-top: 10px;border:1px solid #F5F5F5; padding-top: 30px;
                            -moz-border-radius:10px;  -webkit-border-radius:10px;  border-radius:10px;">
								<div class="col-md-4">
									<a
										style="color: #00a9fa;
                                        	text-decoration: none; 
                                        	color: #009de8;font-size: 20px;
                                        	font-weight: 700;">房东：${house.user.userName }</a>
								</div>
								<div class="col-md-4">
									<a1
										style="color: #00a9fa; 
                                        	text-decoration: none; 
                                        	color: #009de8;font-size: 20px;
                                        	font-weight: 700;">联系房东：${house.user.userPhone }</a1>
								</div>
								<div class="col-md-4">
									<p>
										<a style="margin-left: 173px"
											class="btn btn-danger btn-lg active" 
											href="javascript:deleteHouse('${house.houseId}')">我要租房</a>
									</p>
								</div>
							</div>
						</div>
						<div class="col-md-12" style="margin-top: 20px;">
							<p>
							<h3>房源附近</h3>
							</p>

							<ul1 class="mapTab clarfix" id="mapTab">
							<li class="active" title="公交" id="bus">公交<span></span></li>
							<li class="" title="地铁" id="bus">地铁<span></span></li>
							<li title="餐饮" id="eat" class="">餐饮<span></span></li>
							<li title="购物" id="shopping" class="">购物<span></span></li>
							<li title="银行" id="bank" class="">银行<span></span></li>
							<li title="景点" id="scenic" class="">景点<span></span></li>
							<li title="超市" id="supermarket" class="">超市<span></span></li>
							<li title="电影院" id="movie" class="">电影院<span></span></li>
							<li title="火车站" id="ticket" class="">火车站<span></span></li>
							</ul1>
						</div>
						<div id="map" class="col-md-12"
							style="padding-top:500px; margin-top: 20px;
							border:1px solid #F5F5F5; 
                            -moz-border-radius:10px;  -webkit-border-radius:10px;  border-radius:10px;">

						</div>

					</div>

				</div>
				<!-- <div class="col-md-2 column"></div> -->
			</div>
		</div>
	</div>

	</div>


	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script
		src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script
		src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
<script type="text/javascript" language="javascript">
	/* 删除用户时的确认信息 */
function deleteHouse(houseId){
//js 原生确认对话框函数
if(confirm("是否确认租房")){
	//当用户点击确定按钮
	window.location.href = "delete/"+houseId;

}

}
</script>
<script type="text/javascript">
	$('.mapTab li').click(function() {
		$('.mapTab li').removeClass('active');
		$(this).addClass('active');
		var name = $(this).attr('title');
		local.searchNearby(name, "${house.houseAddress }");

	});
	var map = new BMap.Map("map");
	map.enableScrollWheelZoom();
	map.centerAndZoom(new BMap.Point(116.404, 39.915), 11);

	// 创建地址解析器实例     
	var myGeo = new BMap.Geocoder();
	// 将地址解析结果显示在地图上，并调整地图视野    
	myGeo.getPoint("${house.houseAddress }", function(point) {
		if (point) {
			var marker = new BMap.Marker(point);
			map.centerAndZoom(point, 17);
			map.addOverlay(marker);
			marker.setAnimation(BMAP_ANIMATION_BOUNCE);
		}
	}, "上海");
	var local = new BMap.LocalSearch(map, {
		renderOptions : {
			map : map,
			autoViewport : true
		}
	});

	/* local.searchNearby("交通",
	"${house.houseAddress }"); */

	map.addControl(new BMap.NavigationControl());
	map.addControl(new BMap.ScaleControl());
	map.addControl(new BMap.OverviewMapControl());
	map.addControl(new BMap.MapTypeControl());

	map.setCurrentCity("上海"); // 仅当设置城市信息时，MapTypeControl的切换功能才能可用
</script>
<script type="text/javascript" language="javascript">
	/* 删除用户时的确认信息 */
function deleteHouse(houseId){
//js 原生确认对话框函数
if(confirm("是否租下此房源？")){
	//当用户点击确定按钮
	window.location.href = "delete/"+houseId;

}

}
</script>
</html>