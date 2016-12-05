<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sform"%>
<!doctype html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<title>信息展示</title>
<meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<link rel="stylesheet" type="text/css"
	href="../resources/lib/bootstrap/css/bootstrap.css">
<link rel="stylesheet"
	href="../resources/lib/font-awesome/css/font-awesome.css">

<script src="../resources/lib/jquery-1.11.1.min.js"
	type="text/javascript"></script>

<script src="../resources/lib/jQuery-Knob/js/jquery.knob.js"
	type="text/javascript"></script>
<script type="text/javascript">
	$(function() {
		$(".knob").knob();
	});
</script>


<link rel="stylesheet" type="text/css"
	href="../resources/stylesheets/theme.css">
<link rel="stylesheet" type="text/css"
	href="../resources/stylesheets/premium.css">

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

	<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
      <![endif]-->

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
	<div class="copyrights">
		Collect from <a href="http://www.cssmoban.com/" title="网站模板">网站模板</a>
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
			<div class="stats">
				<!-- <p class="stat">
					<span class="label label-info">5</span> Tickets
				</p>
				<p class="stat">
					<span class="label label-success">27</span> Tasks
				</p>
				<p class="stat">
					<span class="label label-danger">15</span> Overdue
				</p> -->
			</div>

			<h1 class="page-title">Dashboard</h1>
			<ul class="breadcrumb">
				<li><a href="index.html">Home</a></li>
				<li class="active">Dashboard</li>
			</ul>

		</div>
		<div class="main-content">





			<div class="panel panel-default">
				<a href="#page-stats" class="panel-heading" data-toggle="collapse">Latest
					Stats</a>
				<div id="page-stats" class="panel-collapse panel-body collapse in">

					<div class="row">
						<div class="col-md-3 col-sm-6">
							<div class="knob-container">
								<input class="knob" data-width="200" data-min="0" data-max="100"
									data-displayPrevious="true" value="${houseList.size() }"
									data-fgColor="#92A3C2" data-readOnly=true;>
								<h3 class="text-muted text-center">房屋数量</h3>
							</div>
						</div>
						<div class="col-md-3 col-sm-6">
							<div class="knob-container">
								<input class="knob" data-width="200" data-min="0" data-max="30"
									data-displayPrevious="true" value="${userList.size() }"
									data-fgColor="#92A3C2" data-readOnly=true;>
								<h3 class="text-muted text-center">用户数量</h3>
							</div>
						</div>
						<div class="col-md-3 col-sm-6">
							<div class="knob-container">
								<input class="knob" data-width="200" data-min="0" data-max="3"
									data-displayPrevious="true" value="${adminList.size() }"
									data-fgColor="#92A3C2" data-readOnly=true;>
								<h3 class="text-muted text-center">管理员数量</h3>
							</div>
						</div>
						<div class="col-md-3 col-sm-6">
							<div class="knob-container">
								<input class="knob" data-width="200" data-min="0"
									data-max="${traRecordsList.size()+3 }"
									data-displayPrevious="true" value="${traRecordsList.size() }"
									data-fgColor="#92A3C2" data-readOnly=true;>
								<h3 class="text-muted text-center">交易记录数量</h3>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-sm-6 col-md-6">
					<div class="panel panel-default">
						<div class="panel-heading no-collapse">
							用户一览<span class="label label-warning">${userList.size() }</span>
						</div>
						<table class="table table-bordered table-striped">
							<thead>
								<tr>
									<th>用户编号</th>
									<th>用户姓名</th>
									<th>用户联系方式</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${userList }" var="user">
									<tr>
										<td>${user.userId }</td>
										<td>${user.userName }</td>
										<td>${user.userPhone }</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
				<div class="col-sm-6 col-md-6">
					<div class="panel panel-default">
						<a href="#widget1container" class="panel-heading"
							data-toggle="collapse">交易记录一览 </a>
						<table class="table table-bordered table-striped">
							<thead>
								<tr>
									<th>记录编号</th>
									<th>租客姓名</th>
									<th>房屋地址</th>
									<th>房东</th>
									<th>房屋价格</th>
									<th>房屋大小</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${traRecordsList }" var="records">
									<tr>
										<td>${records.recordId }</td>
										<td>${records.userName }</td>
										<td>${records.houseAddress }</td>
										<td>${records.hostName }</td>
										<td>${records.housePrice }</td>
										<td>${records.houseArea }</td>
										
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-sm-6 col-md-6">
					<div class="panel panel-default">
						<div class="panel-heading no-collapse">
							<span class="panel-icon pull-right"> <a href="#"
								class="demo-cancel-click" rel="tooltip" title="Click to refresh"><i
									class="fa fa-refresh"></i></a>
							</span> 房屋一览
						</div>
						<table class="table list">
							<tbody>
								<c:forEach items="${houseList }" var="house">
									<tr>
										<td><a><p class="title">${house.houseAddress }</p></a>
											<p class="info">${house.houseArea }</p></td>
										<td>
											<p>${house.type.typeName }</p> <a>${house.user.userName }</a>
										</td>
										<td>
											<p class="text-danger h3 pull-right"
												style="margin-top: 12px;">￥ ${house.housePrice }</p>
										</td>
									</tr>
								</c:forEach>

							</tbody>
						</table>
					</div>
				</div>
				<!-- <div class="col-sm-6 col-md-6">
					<div class="panel panel-default">
						<a href="#widget2container" class="panel-heading"
							data-toggle="collapse">Collapsible </a>
						<div id="widget2container" class="panel-body collapse in">
							<h2>Built with Less</h2>
							<p>The CSS is built with Less. There is a compiled version
								included if you prefer plain CSS.</p>
							<p>Fava bean jícama seakale beetroot courgette shallot
								amaranth pea garbanzo carrot radicchio peanut leek pea sprouts
								arugula brussels sprout green bean. Spring onion broccoli
								chicory shallot winter purslane pumpkin gumbo cabbage squash
								beet greens lettuce celery. Gram zucchini swiss chard mustard
								burdock radish brussels sprout groundnut. Asparagus horseradish
								beet greens broccoli brussels.</p>
							<p>
								<a class="btn btn-primary">Learn more »</a>
							</p>
						</div>
					</div>
				</div> -->
			</div>


			<footer>
				<hr>


				<p class="pull-right">
					Collect from <a href="http://www.cssmoban.com/" title="网页模板"
						target="_blank">网页模板</a>
				</p>
				<p>
					© 2014 <a href="#" target="_blank">Portnine</a>
				</p>
			</footer>
		</div>
	</div>


	<script src="../resources/lib/bootstrap/js/bootstrap.js"></script>
	<script type="text/javascript">
		$("[rel=tooltip]").tooltip();
		$(function() {
			$('.demo-cancel-click').click(function() {
				return false;
			});
		});
	</script>


</body>
</html>
