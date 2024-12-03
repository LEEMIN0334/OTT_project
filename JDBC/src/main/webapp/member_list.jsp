<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table{
         border-collapse: collapse;
        }
    td,tr,th{
         border : 1px solid black;
    }
</style>
</head>
<body>
	<h2>전체 회원 정보</h2>
	<table>
		<thead>
			<tr>
				<th>아디</th>
				<th>비번</th>
				<th>이름</th>
				<th>닉넴</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="member" items="${requestScope.list }">
				<tr>
					<td>${member.id }</td>
					<td>${member.password }</td>
					<td>${member.nickName }</td>
					<td>${member.userName }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>