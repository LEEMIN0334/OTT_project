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

	<ul>
		<li><a href="./index.jsp">홈으로 이동</a></li>
	</ul>
		<table border="1">
			<thead>
				<tr>
					<td>글번호</td>
					<td>글제목</td>
					<td>글내용</td>
					<td>글작성자</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="postList" items="${postList }" >
					<tr>
						<td>${postList.postNum }</td>
						<td>${postList.title }</td>
						<td>${postList.content }</td>
						<td>${postList.name }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		
	<ul>
		<li><a href="./write_post.jsp">게시글 작성하기</a></li>
	</ul>
		
</body>
</html>