<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sform"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>add</title>

<style type="text/css">
.error{
	color:red;
	font-weight: blod;
}

</style>

</head>
<body>
	<h1>新增用户</h1>
	<!-- 使用spring提供封装的form表单 2016-10-25 9:33 -->
	<!-- 表单中的modelAttribute属性值traRecords，对应控制器中保存在model对象的属性 -->
	
	<!-- 新增文件上传属性enctype=‘multipart/form-data’2016-10-25 17:14 -->
	<sform:form method="post" modelAttribute="traRecords" enctype="multipart/form-data">
	
	<!-- spring form表单中input标签的path，对应实体对象的成员变量名称 -->
	用户姓名：<sform:input path="NAME"/>
	<sform:errors path="NAME" cssClass="error"></sform:errors><br/>
	密码：<sform:password path="PASSWORD" />
	<sform:errors path="PASSWORD" cssClass="error"></sform:errors><br/>
	
	<input type="submit" value="保存" />
	
	</sform:form>
</body>
</html>
