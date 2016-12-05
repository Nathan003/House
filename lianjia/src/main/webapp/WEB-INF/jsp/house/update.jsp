<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>update</title>
	<style type="text/css">
		.read{
			color:white;
			background-color:gray
		}
		.error{
			color:red;
			font-weight:bold	
		}
	</style>
</head>
<body>
<h1>更新房屋信息</h1>
<sf:form method="post" modelAttribute="house">
	<!-- user是house的成员变量 -->
	房主名：<sf:input path="user.userName" readonly="true" cssClass="read"/><sf:errors path="user.userName"></sf:errors>
	<br>
	电话：   <sf:input path="user.userPhone" readonly="true" cssClass="read"/><sf:errors path="user.userPhone"></sf:errors>
	<br>	
	省：<sf:input path="area.city.province.province"/><sf:errors path="area.city.province.province"></sf:errors>
	<br>
	市：   <sf:input path="area.city.city"/><sf:errors path="area.city.city"></sf:errors>
	<br>
	区县：<sf:input path="area.area"/><sf:errors path="area.area"></sf:errors>
	<br>
	房屋地址：   <sf:input path="houseAddress"/><sf:errors path="houseAddress"></sf:errors>
	<br>
	房屋类型：<sf:input path="type.typeName"/><sf:errors path="houseAddress"></sf:errors>
	<br>
	房屋价格：   <sf:input path="housePrice"/><sf:errors path="housePrice"></sf:errors>
	<br>
	房屋面积：<sf:input path="houseArea"/><sf:errors path="houseArea"></sf:errors>
	<label>平方米</label>
	<br>
	
	<br>
	<input type="submit" value="更新" />
</sf:form>
</body>
</html>