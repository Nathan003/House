<%@ page contentType="text/html; charset=utf-8" language="java"
	import="java.sql.*" errorPage=""%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib prefix="display" uri="http://displaytag.sf.net"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<base href="<%=basePath%>" />
<title>lainjia</title>


<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="Cache-Control" content="no-transform" />
<script type="text/javascript">
	var _cid = 11836967;
</script>

<meta name="mobile-agent"
	content="format=html5;url=http://m.nl11361689.icoc.me/" />
<meta name="keywords" content="" />
<meta name="description" content="" />

<link type="text/css"
	href="http://2.ss.faisys.com/css/base.min.css?v=201611031423"
	rel="stylesheet" />
<link type="text/css"
	href="http://2.ss.faisys.com/css/template/14001.min.css?v=201610311810"
	rel="stylesheet" id="templateFrame" class="templateFrameClass" />
<link type="text/css"
	href="http://2.ss.faisys.com/css/moduleAnimation.min.css?v=201609261715"
	rel="stylesheet" />
<link type="text/css"
	href="http://2.ss.faisys.com/css/site/poshytipAndmCustomScrollbar.min.css?v=201604181741"
	rel="stylesheet" />

<style>
#module312 .fk-formContentOther {
	display: none;
}

#module312 .fk-formContentOtherPadding {
	padding-top: 0;
}

#module312 .formBanner312 .formBannerTitle .titleCenter {
	display: table-cell;
}

#module312 .formBanner312 div.titleText {
	display: block;
}

#module312 .contentLineIcon {
	*padding: 0;
}

#module312 .contentLineIcon {
	*width: 0;
}

#module304 .fk-formContentOther {
	display: none;
}

#module304 .fk-formContentOtherPadding {
	padding-top: 0;
}

#module304 .formBanner304 .formBannerTitle .titleCenter {
	display: table-cell;
}

#module304 .formBanner304 div.titleText {
	display: block;
}

#module304 .contentLineIcon {
	*padding: 0;
}

#module304 .contentLineIcon {
	*width: 0;
}

#module308 .fk-formContentOther {
	display: none;
}

#module308 .fk-formContentOtherPadding {
	padding-top: 0;
}

#module308 .formBanner308 .formBannerTitle .titleCenter {
	display: table-cell;
}

#module308 .formBanner308 div.titleText {
	display: block;
}

#module308 .contentLineIcon {
	*padding: 0;
}

#module308 .contentLineIcon {
	*width: 0;
}

#module302 .fk-formContentOther {
	display: none;
}

#module302 .fk-formContentOtherPadding {
	padding-top: 0;
}

#module302 .formBanner302 .formBannerTitle .titleCenter {
	display: table-cell;
}

#module302 .formBanner302 div.titleText {
	display: block;
}

#module302 .contentLineIcon {
	*padding: 0;
}

#module302 .contentLineIcon {
	*width: 0;
}

#module305 .fk-formContentOther {
	display: none;
}

#module305 .fk-formContentOtherPadding {
	padding-top: 0;
}

#module305 .formBanner305 .formBannerTitle .titleCenter {
	display: table-cell;
}

#module305 .formBanner305 div.titleText {
	display: block;
}

#module305 .contentLineIcon {
	*padding: 0;
}

#module305 .contentLineIcon {
	*width: 0;
}

#module315 .fk-formContentOther {
	display: none;
}

#module315 .fk-formContentOtherPadding {
	padding-top: 0;
}

#module315 .formBanner315 .formBannerTitle .titleCenter {
	display: table-cell;
}

#module315 .formBanner315 div.titleText {
	display: block;
}

#module315 .contentLineIcon {
	*padding: 0;
}

#module315 .contentLineIcon {
	*width: 0;
}

#module315 .top_with_line_icon {
	padding-left: 25px;
}

#module315 .contentLineIcon {
	width: 0px
}

#module301 .fk-formContentOther {
	display: none;
}

#module301 .fk-formContentOtherPadding {
	padding-top: 0;
}

#module301 .formBanner301 .formBannerTitle .titleCenter {
	display: table-cell;
}

#module301 .formBanner301 div.titleText {
	display: block;
}

#module301 .contentLineIcon {
	*padding: 0;
}

#module301 .contentLineIcon {
	*width: 0;
}

#module311 .fk-formContentOther {
	display: none;
}

#module311 .fk-formContentOtherPadding {
	padding-top: 0;
}

#module311 .formBanner311 .formBannerTitle .titleCenter {
	display: table-cell;
}

#module311 .formBanner311 div.titleText {
	display: block;
}

#module311 .contentLineIcon {
	*padding: 0;
}

#module311 .contentLineIcon {
	*width: 0;
}
</style>
<style type='text/css'>
</style>
<style type='text/css'>
.sty {
	color: red;
}
</style>
<style type='text/css'>
.webBanner {
	height: 200px;
}

.webBanner {
	min-height: 200px;
}
</style>
<style type='text/css'>
</style>
<style type='text/css'>
#nav {
	display: none;
}

#nav {
	top: 194px;
}

#nav {
	left: 0px;
}
</style>
<style type='text/css'>
</style>
<style type="text/css">
.tab {
	text-align: center;
	width: 80%;
	font-weight: 500;
	border: 1px solid;
}
}
</style>
<style type="text/css" media="all">
@import url("css/maven-base.css");

@import url("css/maven-theme.css");

@import url("css/site.css");

@import url("css/screen.css");
</style>
<!-- 错误信息 -->
<script type="text/javascript">
	(function(FUN, undefined) {
		var list = [];

		FUN.run = function() {
			if (arguments.length < 1) {
				throw new Error("jzUtils.run 参数错误");
				return;
			}

			var name = arguments[0].name, callMethod = arguments[0].callMethod || false, prompt = arguments[0].prompt || false, promptMsg = arguments[0].promptMsg
					|| "功能还在加载中，请稍候", base = arguments[0].base
					|| (window.Fai && Fai.top.Site) || top.Site || window,

			args = Array.prototype.slice.call(arguments), funcArgs = args
					.slice(1), callbackFunc = {}, result;

			result = checkMethod(name, base);
			if (result.success) {
				callMethod = false;
				try {
					result.func.apply(result.func, funcArgs);
				} catch (e) {
					console
							&& console.log
							&& console.log("错误:name=" + e.name + "; message="
									+ e.message);
				}
			} else {
				if (prompt) {
					window.Fai && Fai.ing(promptMsg, true);
				}
			}

			if (callMethod) {
				callbackFunc.name = name;
				callbackFunc.base = base;
				callbackFunc.args = funcArgs;
				list.push(callbackFunc);
			}
		};

		FUN.trigger = function(option) {
			if (typeof option !== "object") {
				throw new Error("jzUtils.trigger 参数错误");
				return;
			}

			var funcName = option.name || "", base = option.base
					|| (window.Fai && Fai.top.Site) || top.Site || window, newList = [], result, i, param;

			if (funcName.length < 1) {
				return;
			}

			for (i = 0; i < list.length; i++) {
				param = list[i];
				if (param.name == funcName) {
					result = checkMethod(funcName, base);
					if (result.success) {
						try {
							result.func.apply(result.func, param.args);
						} catch (e) {
							console
									&& console.log
									&& console.log("错误:name=" + e.name
											+ "; message=" + e.message);
						}
					}
				} else {
					newList.push(param);
				}
			}

			list = newList;
		};

		function checkMethod(funcName, base) {
			var methodList = funcName.split("."), readyFunc = base, result = {
				"success" : true,
				"func" : function() {
				}
			}, methodName, i;

			for (i = 0; i < methodList.length; i++) {
				methodName = methodList[i];
				if (methodName in readyFunc) {
					readyFunc = readyFunc[methodName];
				} else {
					result.success = false;
					return result;
				}
			}

			result.func = readyFunc;
			return result;
		}
	})(window.jzUtils || (window.jzUtils = {}));
</script>


</head>
<body class="g_body g_locale2052 ">

	<div id="g_main" class='g_main g_col2 ' style='0'>
		<div id="web" class="g_web ">
			<table class="webTopTable" cellpadding="0" cellspacing="0">
				<tr>
					<td align="center">
						<div id="webTop" class="webTop"></div>
					</td>
				</tr>
			</table>

			<table class="absTopTable" cellpadding="0" cellspacing="0">
				<tr>
					<td align="center">
						<div id="absTopForms" class="forms sideForms absForms">
							<div style="position:absolute;"></div>
							<!-- for ie6 -->

						</div>
					</td>
				</tr>
			</table>
			<table class="webNavTable" cellpadding="0" cellspacing="0">
				<tr>
					<td align="center">
						<div id="webNav" class="webNav webNavDefault">
							<div id='nav' class='nav nav2 fixedNavPos '>
								<div class='navMainContent'>
									<table class='navTop' cellpadding='0' cellspacing='0'>
										<tr>
											<td class='navTopLeft'></td>
											<td class='navTopCenter'></td>
											<td class='navTopRight'></td>
										</tr>
									</table>
									<table class='navContent' cellpadding='0' cellspacing='0'>
										<tr>
											<td class='navLeft'></td>
											<td class='navCenterContent' id='navCenterContent'
												valign='top' align='left'>
												<div id='navCenter' class='navCenter' style='width:5px;'>
													<div class='itemPrev'></div>
													<div class='itemContainer'>
														<table title='' class='item itemCol2 itemIndex1'
															cellpadding='0' cellspacing='0' id='nav2'
															onclick='window.open("/", "_self")'>
															<tr>
																<td class='itemLeft'></td>
																<td class='itemCenter'><a style='outline:none;'
																	href='/' target='_self' onclick='return false;'><span
																		class='itemName0'>首页</span></a></td>
																<td class='itemRight'></td>
															</tr>
														</table>
														<div class='itemSep'></div>
														<table title='' class='item itemCol103 itemIndex2'
															cellpadding='0' cellspacing='0' id='nav103'
															onclick='window.open("/col.jsp?id=103", "_self")'>
															<tr>
																<td class='itemLeft'></td>
																<td class='itemCenter'><a style='outline:none;'
																	href='/col.jsp?id=103' target='_self'
																	onclick='return false;'><span class='itemName0'>产品展示</span></a></td>
																<td class='itemRight'></td>
															</tr>
														</table>
														<div class='itemSep'></div>
														<table title='' class='item itemCol104 itemIndex3'
															cellpadding='0' cellspacing='0' id='nav104'
															onclick='window.open("/col.jsp?id=104", "_self")'>
															<tr>
																<td class='itemLeft'></td>
																<td class='itemCenter'><a style='outline:none;'
																	href='/col.jsp?id=104' target='_self'
																	onclick='return false;'><span class='itemName0'>新闻动态</span></a></td>
																<td class='itemRight'></td>
															</tr>
														</table>
														<div class='itemSep'></div>
														<table title='' class='item itemCol9 itemIndex4'
															cellpadding='0' cellspacing='0' id='nav9'
															onclick='window.open("/msgBoard.jsp", "_self")'>
															<tr>
																<td class='itemLeft'></td>
																<td class='itemCenter'><a style='outline:none;'
																	href='/msgBoard.jsp' target='_self'
																	onclick='return false;'><span class='itemName0'>留言板</span></a></td>
																<td class='itemRight'></td>
															</tr>
														</table>
														<div class='itemSep'></div>
														<table title='' class='item itemCol101 itemIndex5'
															cellpadding='0' cellspacing='0' id='nav101'
															onclick='window.open("/col.jsp?id=101", "_self")'>
															<tr>
																<td class='itemLeft'></td>
																<td class='itemCenter'><a style='outline:none;'
																	href='/col.jsp?id=101' target='_self'
																	onclick='return false;'><span class='itemName0'>关于我们</span></a></td>
																<td class='itemRight'></td>
															</tr>
														</table>
														<div class='itemSep'></div>
														<table title='' class='item itemCol102 itemIndex6'
															cellpadding='0' cellspacing='0' id='nav102'
															onclick='window.open("/col.jsp?id=102", "_self")'>
															<tr>
																<td class='itemLeft'></td>
																<td class='itemCenter'><a style='outline:none;'
																	href='/col.jsp?id=102' target='_self'
																	onclick='return false;'><span class='itemName0'>联系我们</span></a></td>
																<td class='itemRight'></td>
															</tr>
														</table>
													</div>
													<div class='itemNext'></div>
												</div>
											</td>
											<td class='navRight'></td>
										</tr>
									</table>
									<table class='navBottom' cellpadding='0' cellspacing='0'>
										<tr>
											<td class='navBottomLeft'></td>
											<td class='navBottomCenter'></td>
											<td class='navBottomRight'></td>
										</tr>
									</table>
								</div>
							</div>

						</div>
					</td>
				</tr>
			</table>
			<table class="webHeaderTable" cellpadding="0" cellspacing="0"
				id="webHeaderTable">
				<tr>
					<td align="center" class="webHeaderTd">
						<div id="webHeader" class="webHeader">
							<table class='headerTable' cellpadding='0' cellspacing='0'>
								<tr>
									<td class='headerCusLeft'></td>
									<td class='headerCusMiddle' align='center' valign='top'>
										<div class='headerNav'></div>
									</td>
									<td class='headerCusRight'></td>
								</tr>
							</table>
						</div>
					</td>
				</tr>
			</table>

			<table class="webBannerTable J_webBannerTable" cellpadding="0"
				cellspacing="0">
				<tr>
					<td align="center">
						<div id="webBanner" class="webBanner">
							<table class="bannerTable" cellpadding="0" cellspacing="0">
								<tr>
									<td class="bannerLeft"></td>
									<td class="bannerCenter" align='center' valign='top'>
										<div class='bannerTop'></div>
										<div id='banner' class='banner extBanner'
											style='background:url(http://0.ss.faisys.com/image/template/banners/391.jpg?v=) 50% 50% no-repeat;height:160px'>
											<div class='banner defaultBannerMain'
												style='background:url(http://0.ss.faisys.com/image/template/banners/391.jpg?v=) 50% 50% no-repeat;height:160px'></div>
											<div class='defaultBannerEdge defaultBannerEdgeRight'></div>
											<div class='defaultBannerEdge defaultBannerEdgeLeft'></div>
										</div>


									</td>
									<td class="bannerRight"></td>
								</tr>
							</table>
						</div>
					</td>
				</tr>
			</table>

			<table class="absMiddleTable" cellpadding="0" cellspacing="0">
				<tr>
					<td align="center">
						<div id="absForms" class="forms sideForms absForms"></div>
					</td>
				</tr>
			</table>



			<div id="fullmeasureTopForms"
				class="fullmeasureContainer forms sideForms fullmeasureForms fullmeasureTopForms"
				style='display:none'></div>

			<table id="webContainerTable" class="webContainerTable"
				cellpadding="0" cellspacing="0">
				<tr>
					<td align="center">
						<div id="webContainer" class="webContainer">
							<div id="container" class="container">
								<table class="containerTop" cellpadding='0' cellspacing='0'>
									<tr valign='top'>
										<td class="left"></td>
										<td class="center"></td>
										<td class="right"></td>
									</tr>
								</table>

								<table class="containerMiddle" cellpadding='0' cellspacing='0'>
									<tr valign='top'>
										<td id="containerMiddleLeft" class="containerMiddleLeft">
										</td>

										<td class="containerMiddleCenter">
											<div id="containerMiddleCenterTop"
												class="containerMiddleCenterTop"></div>

											<div id="containerForms" class="containerForms">
												<div id="topForms" class="column forms mainForms topForms">
													<div id='module315'
														class='form form315 formIndex1 formStyle7' title=''
														style=''>
														<table class='formTop formTop315' cellpadding='0'
															cellspacing='0'>
															<tr>
																<td class='left'></td>
																<td class='center'></td>
																<td class='right'></td>
															</tr>
														</table>
														<table class='formBanner formBanner315' cellpadding='0'
															cellspacing='0' style=''>
															<tr>
																<td class='left left315'></td>
																<td class='center center315' valign='top'>
																	<table cellpadding='0' cellspacing='0'
																		class='formBannerTitle formBannerTitle315'>
																		<tr>
																			<td class='titleLeft titleLeft315' valign='top'>
																			</td>
																			<td class='titleCenter titleCenter315' valign='top'>
																				<div class='titleText titleText315'>
																					<span
																						class='bannerNormalTitle fk_mainTitle mainTitle mainTitle315'>交易记录</span>
																					<div class='bannerTextOutWrap j_doubleTitleSkin'>
																						<span class='bannerTextInnerWrap'><span
																							class='doubleTitleWrap doubleTitleWrap315'><span
																								class='fk_mainTitle mainTitle mainTitle315'>交易记录</span><span
																								class='subTitleLineTop dividingLine dividingLine315'></span><span
																								class='subTitleText fk_auxiliaryTitle auxiliaryTitle auxiliaryTitle315'>副标题</span><span
																								class='subTitleLineBottom dividingLine dividingLine315'></span></span></span>
																					</div>
																				</div>
																			</td>
																			<td class='titleRight titleRight315' valign='top'>
																			</td>
																		</tr>
																	</table>
																</td>
																<td class='right right315'></td>
															</tr>
														</table>

														<!-- <a href="addTraRecords">添加交易记录</a> -->
														<div align="center">
															<form action="traRecords/traRecordsList" method="post">
																<h1>交易信息查询</h1>
																编号：<input type="text" name="recordId" /> 地址：<input
																	type="text" name="houseAddress" /> <input type="submit"
																	value="查询" />
															</form>
														</div>
														<div
															class='J_separatorLine separatorLine g_separator  pic-separatorLine '></div>
														<!-- 分页 适用于数据量小的-->
														<display:table class="tab" name="traRecordsList"
															sort="list" pagesize="10"
															requestURI="traRecords/traRecordsList" style="list"
															cellspacing="3" cellpadding="0">
															<display:column class="sty" property="recordId"
																title="编号" sortable="true" />
															<display:column property="userName" title="住户"
																sortable="true" />
															<display:column property="houseAddress" title="地址"
																sortable="true" />
															<display:column property="hostName" title="房东"
																sortable="true" />
															<display:column href="traRecords/recordId"
																paramId="recordId" paramProperty="recordId"
																title="查看详细信息" value="查看详细信息" />
															<%-- <display:column href="traRecords/delete"
																paramId="recordId" paramProperty="recordId"
																value="删除交易信息" title="删除交易信息" /> --%>
														</display:table>
															<a href="javascript:history.go(-1)">返回</a>
														<table class='formMiddle formMiddle315' style=''
															cellpadding='0' cellspacing='0'>
															<tr>
																<td class='formMiddleLeft formMiddleLeft315'></td>
																<td class='formMiddleCenter formMiddleCenter315'
																	valign='top'>
																	<div class='formMiddleContent formMiddleContent315'>
																		<div>


																			<div
																				class='J_separatorLine separatorLine g_separator '
																				style='visibility:hidden;'></div>
																			<div class='clearfloat'></div>
																		</div>
																	</div>
																</td>
																<td class='formMiddleRight formMiddleRight315'></td>
															</tr>
														</table>
														<table class='formBottom formBottom315' cellpadding='10'
															cellspacing='10'>
															<tr>
																<td class='left left315'></td>
																<td class='center center315'></td>
																<td class='right right315'></td>
															</tr>
														</table>
														<div class='clearfloat clearfloat315'></div>
													</div>

													<div id='module301'
														class='form form301 formIndex2 formStyle1' title=''
														style=''>
														<table class='formTop formTop301' cellpadding='0'
															cellspacing='0'>
															<tr>
																<td class='left'></td>
																<td class='center'></td>
																<td class='right'></td>
															</tr>
														</table>
														<table class='formBanner formBanner301' cellpadding='0'
															cellspacing='0' style=''>
															<tr>
																<td class='left left301'></td>
																<td class='center center301' valign='top'>
																	<table cellpadding='0' cellspacing='0'
																		class='formBannerTitle formBannerTitle301'>
																		<tr>
																			<td class='titleLeft titleLeft301' valign='top'>
																			</td>
																			<td class='titleCenter titleCenter301' valign='top'>
																				<div class='titleText titleText301'>
																					<span
																						class='bannerNormalTitle fk_mainTitle mainTitle mainTitle301'>公司简介</span>
																					<div class='bannerTextOutWrap j_doubleTitleSkin'>
																						<span class='fk_mainTitle mainTitle mainTitle301'>公司简介</span><span
																							class='subTitleLineTop dividingLine dividingLine301'></span><span
																							class='subTitleText fk_auxiliaryTitle auxiliaryTitle auxiliaryTitle301'>副标题</span><span
																							class='subTitleLineBottom dividingLine dividingLine301'></span>
																					</div>
																				</div>
																			</td>
																			<td class='titleRight titleRight301' valign='top'>
																			</td>
																		</tr>
																	</table>
																</td>
																<td class='right right301'></td>
															</tr>
														</table>
														<table class='formMiddle formMiddle301' style=''
															cellpadding='0' cellspacing='0'>
															<tr>
																<td class='formMiddleLeft formMiddleLeft301'></td>
																<td class='formMiddleCenter formMiddleCenter301'
																	valign='top'>
																	<div class='formMiddleContent formMiddleContent301'>
																		<div class='richModuleSlaveImgContainer textImg3'>
																			<img class='richModuleSlaveImg' alt='dfffgfgfgg'
																				title=''
																				src='${pageContext.request.contextPath }/resources/upload/true.jpg' />
																			<div class='richEditPic'
																				onclick='Site.changeRichPic(301);return false;'>
																				<a class='edit' id='uploadButton' title='编辑图片'></a>
																			</div>
																		</div>
																		<div class='richContent richContent3'>
																			<p>
																				****有限公司成立于2008年，公司总部位于中国上海市，一直坚持“恪守信誉、以人为本”的经营理念，“科技创新、质量第一”的管理信念，在国内外打下坚实的基础，成为中国知名专业品牌。</p>
																			<p>
																				我们一直追求专业化发展道路，始终秉持“质量第一，客户至上，开拓创新求发展”的运营方针，通过持续不断改进，始终掌握高端精密的核心技术，精湛的生产制造工艺和产品质量控制，用我们的专业化服务帮助客户创造更高的价值。</p>
																			<p>我们相信，通过我们的不断努力和追求，一定能够实现与客户的互利共赢！</p>
																		</div>
																	</div>
																</td>
																<td class='formMiddleRight formMiddleRight301'></td>
															</tr>
														</table>
														<table class='formBottom formBottom301' cellpadding='0'
															cellspacing='0'>
															<tr>
																<td class='left left301'></td>
																<td class='center center301'></td>
																<td class='right right301'></td>
															</tr>
														</table>
														<div class='clearfloat clearfloat301'></div>
													</div>
												</div>

												<table class="containerFormsMiddle" cellpadding='0'
													cellspacing='0'>
													<tr>
														<td valign="top" id="containerFormsLeft"
															class="containerFormsLeft" style='display:none'>
															<div class="containerFormsLeftTop"></div>
															<div id="leftForms"
																class="column forms sideForms leftForms"></div>
															<div class="containerFormsLeftBottom"></div>
														</td>

														<td valign="top" id="containerFormsCenter"
															class="containerFormsCenter">

															<div id="centerTopForms"
																class="column forms mainForms centerTopForms"></div>
															<div
																class="containerFormsCenterMiddle J_containerFormsCenterMiddle">
																<div id="middleLeftForms"
																	class="column forms mainForms middleLeftForms"
																	style='display:none'></div>
																<div id="middleRightForms"
																	class="column forms mainForms middleRightForms"
																	style='display:none'></div>
																<div class="clearfloat"></div>
															</div>
															<div id="centerBottomForms"
																class="column forms mainForms centerBottomForms"
																style='display:none'></div>
														</td>

														<td valign="top" id="containerFormsRight"
															class="containerFormsRight" style='display:none'>
															<div class="containerFormsRightTop"></div>
															<div id="rightForms"
																class="column forms sideForms rightForms"></div>
															<div class="containerFormsRightBottom"></div>
														</td>
													</tr>
												</table>

												<div id="bottomForms"
													class="column forms mainForms bottomForms"
													style='display:none'></div>

												<div id="containerPlaceholder" class="containerPlaceholder"></div>

											</div>

											<div id="containerMiddleCenterBottom"
												class="containerMiddleCenterBottom"></div>

										</td>

										<td id="containerMiddleRight" class="containerMiddleRight"></td>
									</tr>
								</table>

								<table class="containerBottom" cellpadding='0' cellspacing='0'>
									<tr valign='top'>
										<td class="left"></td>
										<td class="center"></td>
										<td class="right"></td>
									</tr>
								</table>
							</div>

						</div>
					</td>
				</tr>
			</table>

			<div id="fullmeasureBottomForms"
				class="fullmeasureContainer forms sideForms fullmeasureForms fullmeasureBottomForms"
				style='display:none'></div>

			<table class="absBottomTable" cellpadding="0" cellspacing="0">
				<tr>
					<td align="center">
						<div id="absBottomForms" class="forms sideForms absForms">
							<div style="position:absolute;"></div>
							<!-- for ie6 -->
						</div>
					</td>
				</tr>
			</table>

			<table id="webFooterTable" class="webFooterTable" cellpadding="0"
				cellspacing="0">
				<tr>
					<td align="center" valign="top">

						<div id="webFooter" class="webFooter">
							<div id='footer' class='footer'>
								<table class='footerTop' cellpadding='0' cellspacing='0'>
									<tr valign='top'>
										<td class='topLeft'></td>
										<td class='topCenter'></td>
										<td class='topRight'></td>
									</tr>
								</table>
								<table class='footerMiddle' cellpadding='0' cellspacing='0'>
									<tr valign='top'>
										<td class='middleLeft'></td>
										<td class='middleCenter' align='center'><div
												class='footerContent'>
												<div id='footerNav' class='footerNav  footerPattern1'>
													<div class='footerItemListBox'>
														<ul
															class='footerItemListContainer J_footerItemListContainer'>
															<li class='J_footerItemSection footerItemSection'><table
																	class='J_footerItemContainer footerItemContainer'>
																	<tr>
																		<td class='footerItemContainer-firstTd'><div
																				class='footerItemPic'>
																				<a href='javascript:;' class='footerItemNormalPic '
																					style='text-decoration: none;' id='footerItemPic2'></a>
																			</div></td>
																		<td class='footerItemContainer-secondTd'><div
																				class='footerItemContent'>
																				<div class='footerItemTop'>
																					<a title='' class='footerItemTopLink' href='/'>首页<span
																						class='fk-footerTriangle'></span></a>
																					<div class='fk-footerTrianglePlaceholder'></div>
																				</div>
																				<div class='footerItemMiddle'>
																					<div class='footSplitline'></div>
																				</div>
																			</div></td>
																	</tr>
																</table></li>
															<li class='footerItemSpacing'><div
																	class='footerVerticalLine'></div></li>
															<li class='J_footerItemSection footerItemSection'><table
																	class='J_footerItemContainer footerItemContainer'>
																	<tr>
																		<td class='footerItemContainer-firstTd'><div
																				class='footerItemPic'>
																				<a href='javascript:;' class='footerItemNormalPic '
																					style='text-decoration: none;'
																					id='footerItemPic101'></a>
																			</div></td>
																		<td class='footerItemContainer-secondTd'><div
																				class='footerItemContent'>
																				<div class='footerItemTop'>
																					<a title='' class='footerItemTopLink'
																						href='/col.jsp?id=101'>关于我们<span
																						class='fk-footerTriangle'></span></a>
																					<div class='fk-footerTrianglePlaceholder'></div>
																				</div>
																				<div class='footerItemMiddle'>
																					<div class='footSplitline'></div>
																				</div>
																			</div></td>
																	</tr>
																</table></li>
															<li class='footerItemSpacing'><div
																	class='footerVerticalLine'></div></li>
															<li class='J_footerItemSection footerItemSection'><table
																	class='J_footerItemContainer footerItemContainer'>
																	<tr>
																		<td class='footerItemContainer-firstTd'><div
																				class='footerItemPic'>
																				<a href='javascript:;' class='footerItemNormalPic '
																					style='text-decoration: none;'
																					id='footerItemPic102'></a>
																			</div></td>
																		<td class='footerItemContainer-secondTd'><div
																				class='footerItemContent'>
																				<div class='footerItemTop'>
																					<a title='' class='footerItemTopLink'
																						href='/col.jsp?id=102'>联系我们<span
																						class='fk-footerTriangle'></span></a>
																					<div class='fk-footerTrianglePlaceholder'></div>
																				</div>
																				<div class='footerItemMiddle'>
																					<div class='footSplitline'></div>
																				</div>
																			</div></td>
																	</tr>
																</table></li>
															<li
																class='J_footerItemSpacing_end footerItemSpacing footerItemSpacing_end'><div
																	class='footerVerticalLine'></div></li>
														</ul>
													</div>
												</div>
												<div class='footerInfo'>
													<font face='Arial'>©</font>2016&nbsp;请输入企业名称&nbsp;版权所有
												</div>
												<div class='footerSupport' id='footerSupport'>
													<span class='footerMobile'><a
														href='http://m.nl11361689.icoc.me' target='_blank'>手机版</a></span>
													<span class='footerSep'>|</span> <span class='footerFaisco'>本站使用
													</span><span class='footerSep'>|</span> <span id='footerLogin'
														class='footerLogin'><a name='popupLogin'
														href='http://www.faisco.cn?cacct=nl11361689'
														onclick='Fai.closeTip("#footerLogin");'>管理登录</a></span> <span
														class='bgplayerButton' id='bgplayerButton'
														style='display:none;'></span>
												</div>
											</div></td>
										<td class='middleRight'></td>
									</tr>
								</table>
								<table class='footerBottom' cellpadding='0' cellspacing='0'>
									<tr valign='top'>
										<td class='bottomLeft'></td>
										<td class='bottomCenter'></td>
										<td class='bottomRight'></td>
									</tr>
								</table>
							</div>

						</div>

					</td>
				</tr>
			</table>

			<div class="clearfloat"></div>
		</div>
	</div>

	<div class="floatLeftTop">
		<div id="floatLeftTopForms" class="forms sideForms floatForms">

		</div>
	</div>
	<div class="floatRightTop">
		<div id="floatRightTopForms" class="forms sideForms floatForms">
			<div id='module311' class='form  formIndex1 formStyle67' title=''
				style='position:absolute;top:180px;left:0px;width:180px;'>
				<table class='formTop formTop311' cellpadding='0' cellspacing='0'>
					<tr>
						<td class='left'></td>
						<td class='center'></td>
						<td class='right'></td>
					</tr>
				</table>
				<table class='formBanner formBanner311' cellpadding='0'
					cellspacing='0' style=''>
					<tr>
						<td class='left left311'></td>
						<td class='center center311' valign='top'>
							<table cellpadding='0' cellspacing='0'
								class='formBannerTitle formBannerTitle311'>
								<tr>
									<td class='titleLeft titleLeft311' valign='top'></td>
									<td class='titleCenter titleCenter311' valign='top'>
										<div class='titleText titleText311'>
											<span
												class='bannerNormalTitle fk_mainTitle mainTitle mainTitle311'>分享网站</span>
											<div class='bannerTextOutWrap j_doubleTitleSkin'>
												<span class='bannerTextInnerWrap'><span
													class='doubleTitleWrap doubleTitleWrap311'><span
														class='fk_mainTitle mainTitle mainTitle311'>分享网站</span><span
														class='subTitleLineTop dividingLine dividingLine311'></span><span
														class='subTitleText fk_auxiliaryTitle auxiliaryTitle auxiliaryTitle311'>副标题</span><span
														class='subTitleLineBottom dividingLine dividingLine311'></span></span></span>
											</div>
										</div>
									</td>
									<td class='titleRight titleRight311' valign='top'></td>
								</tr>
							</table>
							<div class='formBannerOther formBannerOther311'>
								<div class='formBannerBtn formBannerBtn311'>
									<span style='_display:inline-block;_position:relative;'><a
										href='javascript:;'
										onclick='Site.closeAd("module311");return false;'
										class='g_close'><span class='bannerMoreInnerSpan'
											style='_display:none;'>&nbsp;</span></a> </span>
								</div>
								&nbsp;
							</div>
						</td>
						<td class='right right311'></td>
					</tr>
				</table>
				<table class='formBottom formBottom311' cellpadding='0'
					cellspacing='0'>
					<tr>
						<td class='left left311'></td>
						<td class='center center311'></td>
						<td class='right right311'></td>
					</tr>
				</table>
				<div class='clearfloat clearfloat311'></div>
			</div>

		</div>
	</div>
	<div class="floatLeftBottom">
		<div id="floatLeftBottomForms" class="forms sideForms floatForms">

		</div>
	</div>
	<div class="floatRightBottom">
		<div id="floatRightBottomForms" class="forms sideForms floatForms">

		</div>
	</div>
	<div id="bgMusic" class="bgMusic"></div>

	<script type="text/javascript"
		src="http://1.ss.faisys.com/js/comm/jquery/jquery-core.min.js?v=201601261749"></script>
	<script type="text/javascript"
		src="http://1.ss.faisys.com/js/comm/jquery/jquery-mousewheel.min.js?v=201408111734"></script>
	<script type="text/javascript"
		src="http://1.ss.faisys.com/js/comm/fai.min.js?v=201610311810"></script>
	<script type="text/javascript"
		src="http://1.ss.faisys.com/js/comm/jquery/jquery-ui-core.min.js?v=201610311810"></script>
	<script type="text/javascript"
		src="http://1.ss.faisys.com/js/site.min.js?v=201611031613"></script>
	<script type="text/javascript"
		src="http://1.ss.faisys.com/js/locale/2052.min.js?v=201610311810"></script>
	<script type="text/javascript"
		src="http://1.ss.faisys.com/js/comm/ZeroClipboard/ZeroClipboard.min.js?v=201212061014"></script>

	<script type="text/javascript">
		/* function showYuanDanWindow(){
		 var hasShowYuanDanLuckyGuy = $.cookie("hasShowYuanDanLuckyGuy",{path:"/"});
		 var _hasGetYuanDanLuckyGuy_ = $.cookie("_hasGetYuanDanLuckyGuy_",{path:"/"});
		 var _openbigImg = false;
		
		 if(_openbigImg == true){
		 if(hasShowYuanDanLuckyGuy == 'true' || _hasGetYuanDanLuckyGuy_ != 'true' ){
		 Site.isShowThreeDaysLuckyGuy = "true";
		 Site.isTenMinutes = 'true';
		 $.cookie("hasShowYuanDanLuckyGuy",false,{path:"/"});
		 Site.drawLottery();
		 }else{
		
		 Site.sendResult2();	
		 }
		 }	
		 }



		 var fk_sale = new Object();	
		 fk_sale.cid = 11836967;
		 fk_sale.siteVer = 10;
		 fk_sale.popupWindowSiteVer = 10;	
		 fk_sale.isLuckyGuyFlag = false;
		 fk_sale.popupWindowEndYear = 2016;
		 fk_sale.popupWindowEndMonth = 10;
		 fk_sale.popupWindowEndDay = 31;
		 fk_sale.popupWindowDays = -7;
		 fk_sale.popupWindowMs = -639702788;
		 fk_sale.openDays = 0;
		 fk_sale.openMinutes = 25;
		 fk_sale.popupWindowEndSignupHours = 720.0;
		 fk_sale.url = 'http://www.faisco.cn/portal.jsp#appId=shop';	
		 fk_sale.showDomainWindowFlag = false;
		 fk_sale.cacct = 'nl11361689';
		 fk_sale.imgBigSrc = 'http://jz.faisys.com/image/pro/20161001/salesPromotion.png?v=201610171408';
		 fk_sale.imgBigBtn = 'http://jz.faisys.com/image/pro/20161001/btn_buy.png?v=201610171408';
		 fk_sale.imgClose = 'http://jz.faisys.com/image/pro/20161001/close.png?v=201610171408';
		 fk_sale.siteFirstLogin = true;
		 fk_sale.isShowAdvertisementWindowThreeMinute = false;
		 fk_sale.textUrl = 'http://www.faisco.cn/portal.jsp#appId=shop';
		 fk_sale.domainImgBigBg = 'http://jz.faisys.com/image/pro/20160101/domainSearchImg.png';
		 fk_sale.domainImgClose = 'http://jz.faisys.com/image/pro/20160101/close.png?v=201601181937';
		 fk_sale.siteBizBigClose = 'http://jz.faisys.com/image/pro/20160701/close_popup.png';
		 fk_sale.siteBizBigBg = 'http://jz.faisys.com/image/pro/20160701/popup02.png';
		 fk_sale.showSiteBizWindow = false;
		 fk_sale.showSitePopWindow = false;
		 fk_sale.openFlyer = false;
		 */
	</script>
	<script type='text/javascript'>
		if ($.cookie('faiscoAd') == 'true') {
			$('.siteAdvertisement_box').show();
		}
		$('#sitePopVister').show();
	</script>


	<script type="text/javascript">
		// 为了避免用户误操作，在域名结尾输入多余字符导致cookie失效问题，这里校验一下浏览器的host是否与后台拿到的host一致
		//if (window.location.host != 'www.nl11361689.icoc.me') { window.location.href = 'http://' + 'www.nl11361689.icoc.me'; }
		//console.log(window.location.host.lastIndexOf("."));

		/* var _faiAjax = function(){
		 //for regexp
		
		 var _o = {
		 type:"get",
		 url:"",
		 data:"",
		 error:function(){},
		 success:function(){}
		 };
		 var _sendRequest=function(o) {
		 var xmlhttp = null;
		 //init option code
		 o.type = o.type || _o.type;
		 o.url = o.url || _o.url;
		 o.data = o.data || _o.data;
		 o.error = o.error || _o.error;
		 o.success = o.success || _o.success;
		 if (window.XMLHttpRequest) {
		 // code for IE7+, Firefox, Chrome, Opera, Safari
		 xmlhttp=new XMLHttpRequest();
		 }else{
		 // code for IE6, IE5
		 xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		 }
		 //the instructions param takes the form of an eval statement
		 if(o.type != "post") {
		 o.url += ( this.r.test( o.url ) ? "&" : "?" ) + o.data;
		 xmlhttp.open("GET", o.url, true);
		 xmlhttp.onreadystatechange=function() {
		 if (xmlhttp.readyState==4 && xmlhttp.status==200) {
		 o.success( xmlhttp.responseText );
		 }else if( o.error ){
		 o.error();
		 }
		 };
		 xmlhttp.send();
		 } else {
		 xmlhttp.open("POST", o.url, true);
		 //Send the proper header information along with the request
		 xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded; charset=UTF-8");
		 xmlhttp.onreadystatechange=function() {
		 if (xmlhttp.readyState==4 && xmlhttp.status==200) {
		 o.success( xmlhttp.responseText );
		 }else{
		 o.error();
		 }
		 };
		 xmlhttp.send(o.data);
		 }
		 };
		 return {
		 ajax:function(option){
		 try {
		 //此次调用的错误不让抛出给window。防止函数重入
		 _sendRequest(option);	
		 }catch(e){
		 //alert(e);
		 }
		 }
		 };
		 }();
		 var _jsErrCahche = [];
		 window.onerror = function(sMsg,sUrl,sLine){
		 if (typeof Site == 'undefined') {
		 alert('您的网页未加载完成，请尝试按“CTRL+功能键F5”重新加载。');
		 }
		 if( sLine < 1 || typeof sMsg != 'string' || sMsg.length < 1 ){
		 return;
		 }
		
		 var log = "Error:" + sMsg + ";Line:" + sLine + ";Url:" + sUrl;
		 var alertLog = "Error:"+sMsg+"\n" + "Line:" + sLine + "\n" + "Url:" + sUrl + "\n";
		 var encodeUrl = function (url){
		 return typeof url === "undefined" ? "" : encodeURIComponent(url);
		 };
		
		 var ajax = true;
		 var obj = { 'm' : sMsg, 'u' : sUrl, 'l' : sLine };
		 for( var i = 0; i < _jsErrCahche.length; i ++ ){
		 if( _jsErrCahche[i].m == obj.m && _jsErrCahche[i].u == obj.u && _jsErrCahche[i].l == obj.l  ){
		 ajax = false;
		 break;
		 }
		 }
		
		 if( ajax ){
		 _jsErrCahche.push( obj );
		 _faiAjax.ajax({
		 type	: "post",
		 url		: "ajax/logJsErr_h.jsp?cmd=jsErr",
		 data	: 'msg='+ encodeUrl(log)
		 });
		 }
		 if(false){
		 alert( alertLog );
		 }
		 };
		 Fai.top = window;
		 var bgmCloseToOpen = false;
		 var _debug = false;
		 var _devMode = false;
		 var _colOtherStyleData = {"independentList":[],"y":0,"h":0,"layout4Width":0,"layout5Width":0};						// 当前页面的数据    
		 var _templateOtherStyleData = {"h":5,"independentList":[],"y":0,"layout4Width":0,"layout5Width":0};						// 全局的数据

		 $(function() {
		
		 //Site.changeTheLogoSize();
		 Site.showOrHideMailBox();
		
		 var hasLoginSite = $.cookie('hasLoginSite');
		 if(hasLoginSite == "true" && hasLoginSite != null){	
		 $.cookie('hasLoginSite','false', { expires: 1, path: '/' } );
		 Site.changeAdmHref('nl11361689','faisco.cn');
		 }
		 if(false){
		 Fai.ing("",true);
		 }
		 //topBarMember 

		 // 绑定退出事件
		 $(window).bind("beforeunload", function(e) { 
		
		 if(bgmCloseToOpen){
		 Site.bgmFlushContinue();
		 }		
		 });
		 Site.initTemplateLayout(0, true, false );
		 // spider统计
		
		 // ajax统计
		 Site.total({colId:2, pdId:-1, ndId:-1, sc:0, rf:"http://nl11361689.faisco.cn/"});
		 //前端性能数据上报
		 //Site.report();
		 //保留旧用户的初始化版式区域4 和区域5 中，区域4的padding-right空间
		 Site.colLayout45Width();
		 //各个模块inc吐出脚本
		 Site.initBanner({"_open":true,"data":[{"title":"","desc":"","imgWidth":960,"imgHeight":160,"ot":1,"src":"http://0.ss.faisys.com/image/template/banners/391.jpg?v=","edgeLeft":"","edgeRight":""}],"width":960,"height":160,"playTime":4000,"animateTime":1500,"from":"banner","btnType":1,"wideScreen":false}, {"_open":false}, 4);
		 Site.loadNewsList(315, {"y":0,"s":0,"w":1}, false);
		 Site.loadNewsNewStyle(315, false,false,false,true,false,false,false);
		 Site.initMixNews({moduleId:315, leader:'0'});

		 Site.hoverChangeImage();Site.hoverStyle();

		 Site.initPage();	// 这个要放在最后，因为模块组初始化时会把一些模块隐藏，导致没有高度，所以要放最后执行

		
		 setTimeout(afterModuleLoaded, 0);

		 if( _manageMode ) {
		
		 Site.initManagePage();
		
		
		 }
		

		 Site.triggerGobalEvent("siteReadyLoad");
		 });

		 function afterModuleLoaded() {
		 Site.initPage2();
		
		
		 } // afterModuleLoaded end

		 var _lcid = 2052;
		 var _userHostName = 'www.nl11361689.icoc.me';
		 var _siteDomain = 'http://www.nl11361689.icoc.me';
		 var _openDays = 0;
		 var _openHours = 0;
		 var _resRoot = 'http://0.ss.faisys.com';
		 var _colId = 2;
		 var _extId = 0;
		 var _fromColId = -1;
		 var _designAuth = false;
		 var _manageMode = false;
		 var _oem = false;
		 var _siteAuth = 0;
		 var _adm = false;
		 var _siteVer = 10;
		 var _manageStatus = false;

		 var nav2SubMenu=[];
		 var nav103SubMenu=[];
		 var nav104SubMenu=[];
		 var nav9SubMenu=[];
		 var nav101SubMenu=[];
		 var nav102SubMenu=[];

		 var _customBackgroundData = {"styleDefault":true,"s":true,"h":false,"r":3,"o":"","sw":-1,"e":0,"wbh":-1,"wbw":-1,"clw":-1,"crw":-1,"id":"","p":"","bBg":{"y":0,"r":3,"f":"","p":"","c":"#000"},"cBg":{"y":0,"r":3,"f":"","p":"","c":"#000"},"cmBg":{"y":0,"r":3,"f":"","p":"","c":"#000"},"bm":{},"cm":{}};          //自定义的数据
		 var _templateBackgroundData = {"id":"","wbh":200,"bBg":{"c":"#000","f":"","r":3,"p":"","y":0},"cBg":{"c":"#000","f":"","r":3,"p":"","y":0},"cmBg":{"c":"#000","f":"","r":3,"p":"","y":0},"s":true,"h":false,"r":3,"o":"","sw":-1,"e":0,"wbw":-1,"clw":-1,"crw":-1,"p":"","bm":{},"cm":{}};// 模版的数据
		 var _useTemplateBanner = true;				// 是否使用全局模版
		 var _templateBannerData = {"ce":{},"pl":0,"n":[{"t":0,"i":"391","ot":1,"e":0,"u":"","p":"http://0.ss.faisys.com/image/template/banners/391.jpg?v=","w":960,"h":160,"el":"","er":""}],"s":4,"i":4000,"a":1500,"h":false,"o":false,"t":1,"p":0,"pt":0,"bt":1,"ws2":false,"l":[],"f":{},"c":3,"at":0,"ws":false};		// 模版的数据
		 var _pageBannerData = {"s":0,"i":4000,"a":1500,"h":false,"o":false,"t":1,"p":0,"pt":0,"pl":0,"bt":1,"ws2":false,"l":[],"f":{},"ce":{},"n":[],"c":3,"at":0,"ws":false};					// 当前页面的自定义数据（页面独立样式设置）
		 var _bannerData = _templateBannerData;

		 var _mallOpen = false;


		 var _navStyleChanged = 0;
		 var _navItemOnCkOpen = false;					  // 有下级菜单不可点击
		 var _navStyleData = {"no":false,"s":0,"ns":{"w":-1,"h":-1},"cs":{"w":-1,"h":-1},"np":{},"ncp":{"y":1,"t":194,"r":-1,"b":-1,"l":0,"hl":194,"ht":190},"cp":{"y":0,"t":-1,"l":-1},"nis":{"w":-1,"h":-1},"gt":{"y":0},"ht":{"y":0},"nb":{"f":"","p":"","y":0},"cb":{"f":"","p":"","y":0},"nib":{"f":"","p":"","y":0},"nihb":{"f":"","p":"","y":0},"niss":{"w":-1,"h":-1},"nisb":{"f":"","p":"","y":0},"nsigt":{"y":0},"nsiht":{"y":0},"nsis":{"w":-1,"h":-1},"nsib":{"f":"","p":"","y":0},"nsihb":{"f":"","p":"","y":0},"nsiho":0,"nmove":1,"v":2,"nsmt":{},"nsmb":{},"nrs":{"n":{"t":0},"c":{"t":0},"i":{"t":0},"smt":{"t":0},"smb":{"t":0},"si":{"t":0},"is":{"t":0},"sis":{"t":0},"tmt":{"t":0},"tmb":{"t":0},"ti":{"t":0},"tis":{"t":0}},"nsw":{"n":{"t":0},"c":{"t":0},"i":{"t":0},"sm":{"t":0},"si":{"t":0},"is":{"t":0},"sis":{"t":0}},"nbr":{"n":{"t":0},"i":{"t":0},"sm":{"t":0},"si":{"t":0},"is":{"t":0},"sis":{"t":0},"tm":{"t":0},"ti":{"t":0},"tis":{"t":0}},"ntmt":{},"ntmb":{}};				      // 栏目导航样式
		 var _navHidden =false;                                  //true:隐藏；flase：显示
		 var _navPositionFixTop =  false;        		  // 导航栏固定到顶部
		 var _navHeightChange = false;						  //导航栏高度改变，逻辑分界点2015-08-21
		 var _siteDemo = false;

		 var _backToTop = false;
		 var _aid = 11836967;
		 var _cloneAid = 0;
		 var _templateLayout = 0;
		 var _webBannerHeight = 200;
		 var _isTemplateVersion2 = false;
		 var _uiMode= false;
		 //20160817 jack smallLanguage flag
		 var _smallLanguage = false;
		 var _moduleAnimationPercent = -1; */
	</script>


	<script type="text/javascript">
		var fk_old_onload = window.onload;
		window.onload = function() {
			if (typeof fk_old_onload == "function") {
				fk_old_onload.apply(this, arguments);
			}

			Site.userReadyOperateSite();
			Site.pageOnload();

		};

		$LAB
				.script("http://1.ss.faisys.com/js/photoSlide.min.js?v=201605161742");
		$LAB.script(
				"http://1.ss.faisys.com/js/imageEffect.min.js?v=201611011548")
				.wait(function() {
					jzUtils.trigger({
						"name" : "ImageEffect.FUNC.BASIC.Init",
						"base" : Site
					});
				});

		$LAB
				.script(
						"http://1.ss.faisys.com/js/moduleAnimation.min.js?v=201610311810")
				.wait(function() {

					jzUtils.trigger({
						"name" : "moduleAnimation.subscribe",
						"base" : Site
					});

					jzUtils.run({
						"name" : "moduleAnimation.scroll",
						"base" : Site
					});

					jzUtils.run({
						"name" : "moduleAnimation.publish",
						"base" : Site
					});

				});
	</script>

</body>
</html>




