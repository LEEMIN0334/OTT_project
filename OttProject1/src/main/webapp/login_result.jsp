<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${empty sessionScope.msg}">
		<script>
			location.href = './login.jsp';
		</script>
	</c:if>
	<c:if test="${not empty sessionScope.msg}">
	<h2>${sessionScope.msg}</h2>
	<p><a href="./logout.do">로그아웃</a></p>
	</c:if>
</body>
</html>