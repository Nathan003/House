<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sform"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>add</title>
	<style type="text/css">
		.error{
			color:red;
			font-weight:bold	
		}
		
	</style>
</head>
<body>
	<!-- 使用spring提供封装的form表单 -->
	<h1>新增房屋</h1>
	<!-- 表单的modelAttribute属性值user，对应控制器中保存在Model对象中的属性值 -->
	<sform:form method="post" modelAttribute="house" enctype="multipart/form-data">
	<!-- spring form 表单中input标签对应的path，对应实体对象的成员变量名称 -->
		用户名：<sform:input path="NAME"/><sform:errors path="NAME" cssClass="error"></sform:errors>
		<br>
		密码：   <sform:input path="PASSWORD"/><sform:errors path="PASSWORD" cssClass="error"></sform:errors>
		<br>
		<input type="submit" value="保存" />
	</sform:form>
	
</body>
</html>
