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
	background-color: gray;
}

</style>
</head>
<body>
	<h1>更新用信息</h1>
	<sf:form method="post" modelAttribute="user">
	用户编号：<sf:input path="ID" cssClass="read" readonly="true"/>
		<sf:errors path="ID"></sf:errors><br/>
	用户名：<sf:input path="NAME" />
	<sf:errors path="NAME"></sf:errors><br/>
	密码：<sf:password path="PASSWORD"/><sf:errors path="PASSWORD"></sf:errors><br/>
	
	<input type="submit" value="更新" />
	</sf:form>
</body>
</html>