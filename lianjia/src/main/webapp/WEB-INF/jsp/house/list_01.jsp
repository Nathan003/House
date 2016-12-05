<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sform"%>
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

		.option-list a.on {
			color: #39ac6a;
			font-weight: 700;
		}

		.option-list a {
			padding: 10px 7px 15px;
			height: 27px;
			line-height: 27px;
			color: #333;
			font-size: 12px;
			text-decoration: none;
			outline: none;
			cursor: pointer;
		}

		a:hover {
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
		.col-md-1 p a{
			height: 40px;

		}

		
	
	</style>
</head>
<body>
<%-- 	<c:set var="totalNum" value="${houseList.size() }"></c:set>
	
	<c:set var="pageSize" value="10"></c:set>
	<c:set var="totalPageTemp"
	value="${totalNum%pageSize==0?totalNum/pageSize:totalNum/pageSize+0.5 }"></c:set>
	<fmt:formatNumber var="totalPage" type="number"
	value="${totalPageTemp }" maxFractionDigits="0"></fmt:formatNumber>
	<c:choose>
	<c:when test="${empty param.curPage }">
	<c:set var="curPage" value="1"></c:set>
</c:when>
<c:otherwise>
<c:set var="curPage" value="${param.curPage }"></c:set>
</c:otherwise>
</c:choose> --%>
	<c:choose>
	<c:when test="${empty param.curPage }">
	<c:set var="curPage" value="1"></c:set>
</c:when>
<c:otherwise>
<c:set var="curPage" value="${param.curPage }"></c:set>
</c:otherwise>
</c:choose> 


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
	<div class="bd" id="filter-options"
	style="padding-left: 150px;padding-top: 20px;border:1px solid #F5F5F5; 
	-moz-border-radius:10px;  -webkit-border-radius:10px;  border-radius:10px;">

	<dl class="dl-lst clear">
		<dt>区域：</dt>
		<dd>
			<div class="option-list gio_district">
				<a href="<%=request.getContextPath() %>/house/getSelectByArea/不限" gahref="" class="on">不限</a>
								<a href="<%=request.getContextPath() %>/house/getSelectByArea/浦东新区" class="" >浦东</a>
								<a href="<%=request.getContextPath() %>/house/getSelectByArea/闵行区" class="" >闵行</a>
								<a href="<%=request.getContextPath() %>/house/getSelectByArea/宝山区" class="" >宝山</a>
								<a href="<%=request.getContextPath() %>/house/getSelectByArea/徐汇区" class="" >徐汇</a>
								<a href="<%=request.getContextPath() %>/house/getSelectByArea/普陀区" class="" >普陀</a>
								<a href="<%=request.getContextPath() %>/house/getSelectByArea/杨浦区" class="" >杨浦</a>
								<a href="<%=request.getContextPath() %>/house/getSelectByArea/长宁区" class="" >长宁</a>
								<a href="<%=request.getContextPath() %>/house/getSelectByArea/松江区" class="" >松江</a>
								<a href="<%=request.getContextPath() %>/house/getSelectByArea/嘉定区" class="" >嘉定</a>
								<a href="<%=request.getContextPath() %>/house/getSelectByArea/黄浦区" class="" >黄浦</a>
								<a href="<%=request.getContextPath() %>/house/getSelectByArea/静安区" class="" >静安</a>
								<a href="<%=request.getContextPath() %>/house/getSelectByArea/闸北区" class="" >闸北</a>
								<a href="<%=request.getContextPath() %>/house/getSelectByArea/虹口区" class="" >虹口</a>
								<a href="<%=request.getContextPath() %>/house/getSelectByArea/青浦区" class="" >青浦</a>
								<a href="<%=request.getContextPath() %>/house/getSelectByArea/奉贤区" class="" >奉贤</a>
								<a href="<%=request.getContextPath() %>/house/getSelectByArea/金山区" class="" >金山</a>
								<a href="<%=request.getContextPath() %>/house/getSelectByArea/崇明区" class="" gahref="chongming">崇明</a>
								<a href="<%=request.getContextPath() %>/house/getSelectByArea/上海周边" class="" gahref="shanghaizhoubian">上海周边</a>

			</div>

		</dd>
	</dl>

	<dl class="dl-lst clear gio_price">
		<dt>租金：</dt>
		<dd>
			<div class="option-list">
				<a href="<%=request.getContextPath() %>/house/getSelectByprice/不限" gahref="rent-price-nolimit" class="on">不限</a>
				<a href="<%=request.getContextPath() %>/house/getSelectByprice/1000-2000" gahref="z1" class="">1000-2000元</a>
				<a href="<%=request.getContextPath() %>/house/getSelectByprice/2000-4000" gahref="z2" class="">2000-4000元</a>
				<a href="<%=request.getContextPath() %>/house/getSelectByprice/4000-6000" gahref="z3" class="">4000-6000元</a>
				<a href="<%=request.getContextPath() %>/house/getSelectByprice/6000-8000" gahref="z4" class="">6000-8000元</a>
				<a href="<%=request.getContextPath() %>/house/getSelectByprice/8000-12000" gahref="z5" class="">8000-12000元</a>
				<a href="<%=request.getContextPath() %>/house/getSelectByprice/12000元以上" gahref="z6" class="">12000元以上</a>



								<!-- <div class="custom"
									style="display:inline-block;zoom: 1;vertical-align: middle;">
									<div class="txt-box" style="display:inline-block;">
										<input type="text" class="txt" name="min_price" value="">
									</div>
									&nbsp;-&nbsp;
									<div class="txt-box" style="display:inline-block;">
										<input type="text" class="txt" name="max_price" value="">
									</div>
									&nbsp; 元/月&nbsp;&nbsp;<input type="button"
										gahref="price-custom-confirm" codetype="k"
										class="ok inputCode" value="确定">
									</div> -->
								</div>
							</dd>
						</dl>
						<dl class="dl-lst clear gio_area">
							<dt>面积：</dt>
							<dd>
								<div class="option-list">
									<a href="<%=request.getContextPath() %>/house/getSelectByHouseArea/不限" gahref="area-nolimit" class="on">不限</a>
									<a href="<%=request.getContextPath() %>/house/getSelectByHouseArea/0-50" gahref="a1" class="">50平以下</a>
									<a href="<%=request.getContextPath() %>/house/getSelectByHouseArea/50-70" gahref="a2" class="">50-70平</a>
									<a href="<%=request.getContextPath() %>/house/getSelectByHouseArea/70-90" gahref="a3" class="">70-90平</a>
									<a href="<%=request.getContextPath() %>/house/getSelectByHouseArea/90-110" gahref="a4" class="">90-110平</a>
									<a href="<%=request.getContextPath() %>/house/getSelectByHouseArea/110-130" gahref="a5" class="">110-130平</a>
									<a href="<%=request.getContextPath() %>/house/getSelectByHouseArea/130-150" gahref="a6" class="">130-150平</a>
									<a href="<%=request.getContextPath() %>/house/getSelectByHouseArea/150-200" gahref="a7" class="">150-200平</a>
									<a href="<%=request.getContextPath() %>/house/getSelectByHouseArea/200平以上" gahref="a8" class="">200平以上</a>


								<!-- <div class="custom"
									style="display:inline-block;zoom: 1;vertical-align: middle;">
									<div class="txt-box" style="display:inline-block;">
										<input type="text" class="txt" name="min_area" value="">
									</div>
									&nbsp;-&nbsp;
									<div class="txt-box" style="display:inline-block;">
										<input type="text" class="txt" name="max_area" value="">
									</div>
									&nbsp; 平&nbsp;&nbsp;<input type="button"
										gahref="area-custom-confirm" codetype="m" class="ok inputCode"
										value="确定">
									</div> -->

								</div>
							</dd>
						</dl>
						<dl class="dl-lst clear gio_room">
							<dt>户型：</dt>
							<dd>
								<div class="option-list">
									<a href="<%=request.getContextPath() %>/house/getSelectByType/不限" gahref="room-nolimit" class="on">不限</a>
									<a href="<%=request.getContextPath() %>/house/getSelectByType/一室" gahref="l1" class="">一室</a>
									<a href="<%=request.getContextPath() %>/house/getSelectByType/两室" gahref="l2" class="">二室</a>
									<a href="<%=request.getContextPath() %>/house/getSelectByType/三室" gahref="l3" class="">三室</a>
									<a href="<%=request.getContextPath() %>/house/getSelectByType/四室" gahref="l4" class="">四室</a>
									<a href="<%=request.getContextPath() %>/house/getSelectByType/五室" gahref="l5" class="">五室</a>
									<a href="<%=request.getContextPath() %>/house/getSelectByType/五室以上" gahref="l6" class="">五室以上</a>

								</div>
							</dd>
						</dl>
					</div>

					<!-- 排序 -->
				<!-- <div class="filter-bar01" style="padding-left: 100px">
					<div class="sort-bar" id="sort-bar">
						<span>排序：</span>
						<div class="sort-parent on">
							<a href="/zufang/" gahref="default-order"><span>默认</span></a>
						</div>

						<div class="sort-parent ">
							<a href="/zufang/s7" gahref="s7"><span>最新</span></a>
						</div>

						<div class="sort-parent ">
							<span>租金</span> <i></i>
							<ul class="sort-children">
								<li><a href="/zufang/s22" gahref="s22">从低到高</a></li>
								<li><a href="/zufang/s21" gahref="s21">从高到低</a></li>
							</ul>
						</div>
						<div class="sort-parent ">
							<span>面积</span> <i></i>
							<ul class="sort-children">
								<li><a href="/zufang/s6" gahref="s6">从小到大</a></li>
								<li><a href="/zufang/s5" gahref="s5">从大到小</a></li>
							</ul>
						</div>


					</div>
				</div> -->



				<div class="row clearfix" style="padding-top: 50px">

					<!-- <div class="col-md-2 column"></div> -->

					<div class="col-md-12 column">

						<div class="row">
							<c:forEach items="${houseList }" var="house"  varStatus="status"
							begin="${totalPage*(curPage-1) }" end="${pagesize*curPage-1 }">
							<div class="col-md-12"
							style="margin-top: 10px;border:1px solid #F5F5F5; 
							-moz-border-radius:10px;  -webkit-border-radius:10px;  border-radius:10px;">
							<div class="col-md-3">
								<img alt="200x150" width="200px" height="150px"
								src="<%=request.getContextPath() %>/resources/images/${house.imagesLink}" />
							</div>
							<div class="col-md-6" style="padding-top: 20px">
								<a
								style="color: #00a9fa; 
								text-decoration: none; 
								color: #009de8;font-size: 20px;
								font-weight: 700;">${house.info }</a>
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
										<a class="btn btn-success btn-lg active"
										href="<%=request.getContextPath() %>/house/${house.info }">详细</a>
									</p>
								</div>
							</div>
						</c:forEach>

					</div>

					<nav style="text-align: center">
						<ul class="pagination pagination-lg">
							<li><a href="?curPage=1">&laquo;</a></li>
							<%-- <li><a href="?curPage=${curPage-1>1?curPage-1:1 }">${curPage>1?curPage-1:null }</a></li>
							<li><a href="?curPage=${curPage }">${curPage }</a></li>
							<li><a href="?curPage=${curPage+1<=totalPage?curPage+1:totalPage }">${curPage<totalPage?curPage+1:null }</a></li> --%>
							<c:forEach var="i"  begin="1" end="${totalPage }">
							<li><a href="?curPage=${i }">${i }</a></li>
							</c:forEach>
							<li><a href="?curPage=${totalPage }">&raquo;</a></li>
						</ul>
					</nav>
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
<<script type="text/javascript">
$(document).ready(function(){
$('.option-list a').click(function() {
	$('.option-list a').removeClass('on');
	$(this).addClass('on');
});
});

		
</script> 

</html>