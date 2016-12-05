<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sform" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>list</title>
</head>
<body>
<a href="addHouse">添加房屋信息</a>
<br/>
<%-- <h1>欢迎你，${loginUser.name }</h1> --%>
<h2>房屋信息列表</h2>
<!-- 使用jstl表达式遍历userList -->
<!-- spring与mybatis框架整合：
	任务一：替换控制器中map对象，修改list对象
	注意：foreach遍历时，ul.username 直接拿List集合中保存的user对象（List<user>） -->

<table>

<c:forEach items="${houseList }" var="house">
	房屋地址：${house.houseAddress }
	房屋价格：${house.housePrice }
	屋主名：${house.user.userName }
	屋主电话：${house.user.userPhone }
	屋主类型：${house.type.typeName }
	区县：${house.area.area }
	市：${house.area.city.city }
	省：${house.area.city.province.province }
	<%-- <a href="${muser.NAME }">查看</a> --%>
	<a href="javascript:deleteHouse('${house.houseId}')">删除</a>

	<%-- <a href="${muser.NAME }">查看</a> --%>

	<a href="update/${house.user.userName }">更新</a><br>
</c:forEach>
</table>
</body>

<script type="text/javascript">
	/* 删除用户时确认信息 */
	function deleteHouse(houseId) {
		//原生确认对话框
		if(confirm("确认要删除用户："+houseId)){
			//当用户点击确定
			window.location.href="delete/"+houseId;
		}
	}
</script>


</html>