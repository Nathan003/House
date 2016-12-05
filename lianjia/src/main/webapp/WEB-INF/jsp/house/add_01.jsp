<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>

<meta charset="UTF-8">
<title>房屋列表</title>
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
<!-- 可选的Bootstrap主题文件（一般不使用） -->
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap-theme.min.css"></script>

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

.filter-bar01 {
	height: 48px;
	line-height: 48px;
	border-top: 1px solid #e0e0e0;
	padding: 0 26px;
	font-size: 0;
	background: #fbfbfb;
	position: relative;
}

.sort-bar span {
	font-size: 12px;
	float: left;
	margin: 0;
	font-weight: 700;
}

.sort-bar .sort-parent {
	height: 48px;
	line-height: 48px;
	color: #555;
	background: #fff9f7;
	padding: 0 16px;
	position: relative;
	border: 1px solid #fbfbfb;
	border-top: 0;
	border-bottom: 0;
	float: left;
	background: none;
	margin-left: -1px;
	z-index: 1;
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

dt {
	float: left;
	height: 27px;
	line-height: 27px;
	font-size: 12px;
	margin-right: 6px;
	font-weight: 700;
	list-style: none;
	margin: 0;
	padding: 0;
	display: block;
}

a1.on {
	color: #39ac6a;
	font-weight: 700;
}

a1 {
	padding: 10px 7px 15px;
	height: 27px;
	line-height: 27px;
	color: #333;
	font-size: 12px;
	text-decoration: none;
	outline: none;
	cursor: pointer;
}

a1:hover {
	text-decoration: underline;
	color: #39ac6a;
}

.filter-box .bd .custom {
	margin-left: 10px;
	padding-bottom: 1px;
}

.txt {
	display: block;
	width: 35px;
	padding: 2px 1px;
	text-align: center;
	color: #333;
	height: 18px;
	line-height: 18px;
	font-size: 12px;
}

.sort-bar .sort-parent i {
	background: url(../resources/images/sprite_lb.png) no-repeat -10px -28px;
	width: 10px;
	height: 5px;
	display: inline-block;
	margin-left: 7px;
	position: relative;
	top: 2px;
}

i {
	font-weight: 400;
	font-style: normal;
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
							<li><a
								href="<%=request.getContextPath()%>/traRecords/traRecordsList">交易记录</a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">更多<strong class="caret"></strong></a>
								<ul class="dropdown-menu">
									<li><a href="#">关于我们</a></li>
									<li><a href="#">加入我们</a></li>

								</ul></li>
						</ul>
						<form method="post" action="getSelectLike"
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
									<li><a href="#">我的收藏</a></li>
								</ul></li>
							<li><a href="#">注册</a></li>
							<li style="visibility: hidden;"><a href="#"></a></li>


						</ul>
					</div>
				</nav>



				<!-- <div class="filter-bar01" style="padding-left: 100px"></div> -->



				<div class="row clearfix" style="padding-top: 50px">

					<!-- <div class="col-md-2 column"></div> -->

					<div class="col-md-12 column">

						<div class="row clearfix">
							<div class="col-md-2 column"></div>
							<div class="col-md-8 column">
								<sf:form method="post" modelAttribute="house" enctype="multipart/form-data">
								<div class="form-group">
									<label>房主姓名： </label>
									<sf:input value="${user.userName }" class="form-control"
										path="user.userName" />
									<sf:errors path="user.userName"></sf:errors>
								</div>
								<div class="form-group">
									<label>房主电话：</label>
									<sf:input value="${user.userPhone }" class="form-control"
										path="user.userPhone" />
									<sf:errors path="user.userPhone"></sf:errors>
								</div>
								<div class="form-group">
									<label>省：</label>
									<sf:select class="form-control"
										path="area.city.province.province" id="province">
										<sf:option value="" label="请选择"></sf:option>
									</sf:select>
								</div>
								<div class="form-group">
									<label>市：</label>
									<sf:select class="form-control" path="area.city.city" id="city">
										<sf:option value="" label="请选择"></sf:option>
									</sf:select>

								</div>
								<div class="form-group">
									<label>县/区：</label>
									<sf:select class="form-control" path="area.area" id="area">
										<sf:option value="" label="请选择"></sf:option>
									</sf:select>

								</div>

								<div class="form-group">
									<label for="exampleInputEmail1">房屋地址：</label>
									<sf:input class="form-control" path="houseAddress" />
									<sf:errors path="houseAddress"></sf:errors>
								</div>
								<div class="form-group">
									<label for="exampleInputEmail1">户型：</label>
									<sf:select path="type.typeName" class="form-control">
										<sf:option value="" label="--请选择--"></sf:option>
										<sf:options items="${typeList }" itemValue="typeId"
											itemLabel="typeName" />
									</sf:select>
								</div>
								<div class="form-group">
									<label for="exampleInputEmail1">租金：</label>
									<sf:input class="form-control" path="housePrice" />
									<sf:errors path="housePrice"></sf:errors>
								</div>
								<div class="form-group">
									<label for="exampleInputEmail1">房屋面积：</label>
									<sf:input class="form-control" path="houseArea" />
									<sf:errors path="houseArea"></sf:errors>
								</div>
								<div class="form-group">
									<label>房屋简介： </label>
									<sf:input class="form-control"
										path="info" />
									<sf:errors path="info"></sf:errors>
								</div>
								<div class="form-group">
									<label for="exampleInputFile">房屋照片：</label><input
										name="attachs" type="file" id="exampleInputFile" />
									<!-- <p class="help-block">
                                Example block-level help text here.
                            </p> -->
								</div>
								<button type="submit" class="btn btn-default">提交</button>
							</sf:form>
							</div>
							<div class="col-md-2 column"></div>
						</div>
					</div>
				</div>

			</div>





			<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
			<script
				src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
			<script type="text/javascript">
				/* alert("开始");  */
				$(function() {
					/*  alert("ok");  */
					$.ajax({
						url : "selectProvinceList",
						type : "get",
						async : false,
						dataType : "JSON",
						success : function(data) {
							/* alert("数据"); */
							/* alert(data); */
							$.each(data, function(i, item) {
								$("#province").append(
										"<option value='" + item.provinceId + "'>"
												+ item.province + "</option>");
							});
						}
					});

					$("#province").change(
							function() {
								$("#city").html(" <option>请选择</option>");
								$.ajax({
									url : "selectCityList/"
											+ $("#province option:selected ")
													.val(),
									type : "get",
									dataType : "JSON",
									success : function(data) {
										$.each(data, function(i, item) {
											$("#city").append(
													"<option value='" + item.cityID + "'>"
															+ item.city
															+ "</option>");
										});
									}
								});
							});
					$("#city")
							.change(
									function() {
										$("#area")
												.html(" <option>请选择</option>");
										$
												.ajax({
													url : "selectAreaList/"
															+ $(
																	"#city option:selected ")
																	.val(),
													type : "get",
													dataType : "JSON",
													success : function(data) {
														$
																.each(
																		data,
																		function(
																				i,
																				item) {
																			$(
																					"#area")
																					.append(
																							"<option value='" + item.areaID + "'>"
																									+ item.area
																									+ "</option>");
																		});
													}
												});
									});
				});
			</script>
			<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
			<script
				src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>

</html>