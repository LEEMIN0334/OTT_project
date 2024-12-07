<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>로그인 성공</title>
</head>
<body>
    <h1>로그인 성공</h1>
    <p>환영합니다! <%= ((dto.UsersDTO)session.getAttribute("user")).getName() %> 님.</p>
    <a href="/logout.do">로그아웃</a>
</body>
</html>
