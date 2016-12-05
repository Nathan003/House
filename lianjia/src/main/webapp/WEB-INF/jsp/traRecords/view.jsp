<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
#style{
	width: 480px;
	height: 360px;
}

#div1{
	background-position:center;
	float: left;
	margin-left:3cm;
	margin-right: 3cm;
	background-color: white;
	height:360px;
	width: 500px;
	
}
#div2{
	background-color: white;
	line-height: 2;
	color: gray;
	font-family: 微软雅黑;
	height:360px;
	width: 40%;
	margin-left:14cm;
	text-align:left;
}
.div3{
	border-style:solid; 
	border-width:1px; 
	border-color:gray;
	color: gray;
}
.div4{
	background-image: url(../resources/upload/beijing2.jpg);
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
            height:600px;
            text-align: center;
            line-height: 100px;
}
#div5{
	width: 50%;
	margin-left: 310px;
}
</style>
<title>view</title>
</head>
<body id="body">
      <div class="div4">
      <h1 align="center">房屋信息</h1>
      <div id="div1">
      <a><img id="style" src="../resources/upload/tra.jpg"></a><br/>
      </div>
      <div id="div2"><br/>
      租房用户：${traRecords.userName }<br/>
     地址：${traRecords.houseAddress }<br/>
     房屋面积：${traRecords.houseArea }<br/>
     交易价格：${traRecords.housePrice }/月<br/>
     房东：${traRecords.hostName }<br/>
     <br/><br/><br/>
     <a href="javascript:history.go(-1)">返回</a>
	</div>
	</div>     
     <%-- 邮箱：${user.email } --%>
     <!-- 新增返回按钮2016-10-31 16：47-->
     <div class="div3">
     <div id="div5"><br/><br/><br/>
     <p align="center">公司简介</p>
     <p>　　****有限公司成立于2008年，公司总部位于中国上海市，一直坚持“恪守信誉、以人为本”的经营理念，“科技创新、质量第一”的管理信念，在国内外打下坚实的基础，成为中国知名专业品牌。</p>
     <p>　　我们一直追求专业化发展道路，始终秉持“质量第一，客户至上，开拓创新求发展”的运营方针，通过持续不断改进，始终掌握高端精密的核心技术，精湛的生产制造工艺和产品质量控制，用我们的专业化服务帮助客户创造更高的价值。</p>
     <p>　　我们相信，通过我们的不断努力和追求，一定能够实现与客户的互利共赢！</p>
     </div>
     </div>
</body>
</html>