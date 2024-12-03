<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	*{
		margin : 0; padding : 0;
	}
	nav{
		margin : 0 auto;
		justify-content: center;
		width: 1000px;
	}
	ul{
		width: 100%;
		margin : 0 auto;
		list-style: none;
		display: flex;
		flex-flow: row nowrap;
		justify-content: center;
	}
	li{
		margin : 0 auto;
		width: 20%;
		text-align: center;
	}
	main{
		margin : 100px auto;
		width: 1200px;
		height : 300px;
		border : 1px solid black;
	}
</style>
<body>
	<jsp:include page="./template/header.jsp"></jsp:include>
	<main>Hello</main>
</body>
</html>