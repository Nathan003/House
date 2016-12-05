<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!doctype html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<title>Bootstrap Admin</title>
<meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">


<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/lib/bootstrap/css/bootstrap.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/lib/font-awesome/css/font-awesome.css">

<script
	src="<%=request.getContextPath()%>/resources/lib/jquery-1.11.1.min.js"
	type="text/javascript"></script>



<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/stylesheets/theme.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/stylesheets/premium.css">

</head>
<body class=" theme-blue">

	<!-- Demo page code -->

	<script type="text/javascript">
		$(function() {
			var match = document.cookie.match(new RegExp('color=([^;]+)'));
			if (match)
				var color = match[1];
			if (color) {
				$('body').removeClass(function(index, css) {
					return (css.match(/\btheme-\S+/g) || []).join(' ')
				})
				$('body').addClass('theme-' + color);
			}

			$('[data-popover="true"]').popover({
				html : true
			});

		});
	</script>
	<style type="text/css">
#line-chart {
	height: 300px;
	width: 800px;
	margin: 0px auto;
	margin-top: 1em;
}

.navbar-default .navbar-brand,.navbar-default .navbar-brand:hover {
	color: #fff;
}
</style>

	<script type="text/javascript">
		$(function() {
			var uls = $('.sidebar-nav > ul > *').clone();
			uls.addClass('visible-xs');
			$('#main-menu').append(uls.clone());
		});
	</script>



	<!-- Le fav and touch icons -->
	<link rel="shortcut icon" href="../assets/ico/favicon.ico">
	<link rel="apple-touch-icon-precomposed" sizes="144x144"
		href="../assets/ico/apple-touch-icon-144-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="114x114"
		href="../assets/ico/apple-touch-icon-114-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72"
		href="../assets/ico/apple-touch-icon-72-precomposed.png">
	<link rel="apple-touch-icon-precomposed"
		href="../assets/ico/apple-touch-icon-57-precomposed.png">



	<div class="navbar navbar-default" role="navigation">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="" href="index.html"><span class="navbar-brand"><span
					class="fa fa-paper-plane"></span> Aircraft</span></a>
		</div>

		<div class="navbar-collapse collapse" style="height: 1px;">
			<ul id="main-menu" class="nav navbar-nav navbar-right">
				<li class="dropdown hidden-xs"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"> <span
						class="glyphicon glyphicon-user padding-right-small"
						style="position:relative;top: 3px;"></span> ${admin.adminname } <i
						class="fa fa-caret-down"></i>
				</a>

					<ul class="dropdown-menu">
						<li><a href="./">My Account</a></li>
						<li class="divider"></li>
						<li class="dropdown-header">Admin Panel</li>
						<li><a href="./">Users</a></li>
						<li><a href="./">Security</a></li>
						<li><a tabindex="-1" href="./">Payments</a></li>
						<li class="divider"></li>
						<li><a tabindex="-1" href="sign-in.html">Logout</a></li>
					</ul></li>
			</ul>

		</div>
	</div>
	</div>


	<div class="sidebar-nav">
		<ul>
			<li><a href="#" data-target=".dashboard-menu" class="nav-header"
				data-toggle="collapse"><i class="fa fa-fw fa-dashboard"></i>
					Dashboard<i class="fa fa-collapse"></i></a></li>
			<li><ul class="dashboard-menu nav nav-list collapse in">
					<li><a href="<%=request.getContextPath()%>/admin/index"><span
							class="fa fa-caret-right"></span>主页</a></li>
					<li><a href="<%=request.getContextPath()%>/admin/userList"><span
							class="fa fa-caret-right"></span>用户列表</a></li>

					<li><a href="<%=request.getContextPath()%>/admin/houseList"><span
							class="fa fa-caret-right"></span> 房屋列表</a></li>
					<li><a
						href="<%=request.getContextPath()%>/admin/traRecordsList"><span
							class="fa fa-caret-right"></span>交易记录</a></li>
				</ul></li>
		</ul>
	</div>

	<div class="content">
		<div class="header">

			<h1 class="page-title">编辑房屋信息</h1>
			<ul class="breadcrumb">
				<li><a href="index.html">Home</a></li>
				<li><a href="users.html">Users</a></li>
				<li class="active">Edit</li>
			</ul>

		</div>
		<div class="main-content">

			<ul class="nav nav-tabs">
				<li class="active"><a href="#home" data-toggle="tab">详细信息</a></li>

			</ul>

			<div class="row">
				<div class="col-md-4">
					<br>
					<div id="myTabContent" class="tab-content">
						<div class="tab-pane active in" id="home">
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

						<%-- <div class="tab-pane fade" id="profile">

							<sf:form method="post" modelAttribute="user">
								<div class="form-group">
									<label>新密码</label>
									<sf:password path="userPassword" class="form-control" />
								</div>
								<div>
									<button type="submit" class="btn btn-primary">更新</button>
								</div>
							</sf:form>
						</div> --%>
					</div>

					<div class="btn-toolbar list-toolbar">

						<!-- <button class="btn btn-primary"><i class="fa fa-save"></i> 保存</button> -->

					</div>
				</div>
			</div>

			<div class="modal small fade" id="myModal" tabindex="-1"
				role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">×</button>
							<h3 id="myModalLabel">Delete Confirmation</h3>
						</div>
						<div class="modal-body">

							<p class="error-text">
								<i class="fa fa-warning modal-icon"></i>Are you sure you want to
								delete the user?
							</p>
						</div>
						<div class="modal-footer">
							<button class="btn btn-default" data-dismiss="modal"
								aria-hidden="true">Cancel</button>
							<button class="btn btn-danger" data-dismiss="modal">Delete</button>
						</div>
					</div>
				</div>
			</div>


			<footer>
				<hr>
				<p>
					© 2014 <a href="#" target="_blank">Portnine</a>
				</p>
			</footer>
		</div>
	</div>


	<script
		src="<%=request.getContextPath()%>/resources/lib/bootstrap/js/bootstrap.js"></script>
	<script type="text/javascript">
		$("[rel=tooltip]").tooltip();
		$(function() {
			$('.demo-cancel-click').click(function() {
				return false;
			});
		});
	</script>

	<script type="text/javascript">
		/* alert("开始");  */
		$(function() {
			/* alert("ok"); */
			$.ajax({
				url : "../selectProvinceList",
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
							url : "../selectCityList/"
									+ $("#province option:selected ").val(),
							type : "get",
							dataType : "JSON",
							success : function(data) {
								$.each(data, function(i, item) {
									$("#city").append(
											"<option value='" + item.cityID + "'>"
													+ item.city + "</option>");
								});
							}
						});
					});
			$("#city").change(
					function() {
						$("#area").html(" <option>请选择</option>");
						$.ajax({
							url : "../selectAreaList/"
									+ $("#city option:selected ").val(),
							type : "get",
							dataType : "JSON",
							success : function(data) {
								$.each(data, function(i, item) {
									$("#area").append(
											"<option value='" + item.areaID + "'>"
													+ item.area + "</option>");
								});
							}
						});
					});
		});
	</script>
</body>
</html>
