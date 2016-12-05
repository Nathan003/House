<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sform"%>
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

a1 {
	font-family: "Hiragino Sans GB", "微软雅黑", "Microsoft YaHei", SimHei,
		Tahoma, "宋体b8b\4f53", SimSun, sans-serif;
	color: #009de8;
	font-size: 20px;
	font-weight: 700
}
.house-lst{
	list-style-type:none
}
.price {
	color: #e4393c;
	margin-top: 7px;
	position: relative;
	width: 100%;
	display: inline-block;
	vertical-align: middle;
}
.list-no-data {
    border: 0 none;
    height: 159px;
    line-height: 150px;
    text-align: center;
    color: #888;
    font-size: 22px;
}
.num {
	font-family: tahoma;
	font-size: 30px;
	font-weight: 700;
	letter-spacing: -1px;
	margin-right: 3px;
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
									<li><a href="#">我的收藏</a></li>
								</ul></li>
							<li><a href="#">注册</a></li>
							<li style="visibility: hidden;"><a href="#"></a></li>


						</ul>
					</div>
				</nav>

				<div class="row clearfix" style="padding-top: 100px">

					<!-- <div class="col-md-2 column"></div> -->

					<div class="col-md-12 column">

						<div class="row">

							<div class="col-md-12"
								style="margin-top: 10px;border:1px solid #F5F5F5; 
                            -moz-border-radius:10px;  -webkit-border-radius:10px;  border-radius:10px;">
								<ul id="house-lst" class="house-lst">
								</ul>
								<ul id="house-lst" class="house-lst">
									<li class="list-no-data clear">
										<p>暂时没有找到符合条件的内容，换个条件试试呗？</p>
									</li>
								</ul>
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

</html>