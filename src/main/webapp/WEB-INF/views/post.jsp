<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>모집 글 작성하기</title>
    <link rel="stylesheet" type="text/css" href="css/post.css">
</head>
<body>
    <header>
    <a href="./Main.do" id="logo"></a>
        <nav>
            <a href="./insertpostview.do">글 작성하기</a>
            <a href="./postlistview.do">공유글 보기</a>
            <a href="./mainpage_guide.do">요금 가이드</a>
            <a href="./mypage_view.do">마이페이지</a>
        </nav>
        <div class="user-info">
            <span><c:if test="${user != null}">${user.name} 님</c:if></span>
            <a href="./logout.do">로그아웃</a>
        </div>
    </header>
    <main>
    	<h1>${post.platformnum} 공유글</h1>
    	<a href="./insertgroupmember.do?postnum=${post.postnum}&platformnum=${post.platformnum}">신청하기</a>
    	<div>
    		<p>게시글 번호 : ${post.postnum}</p>
    		<p>작성자 : ${post.id}</p>
    		<p>내용 : ${post.postdata}</p>
    		<p>현재 인원수 : ${post.nownum}</p>
    	</div>
    </main>
    <footer>
        <p>Social Links</p>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore</p>
        <p>Copyright Text - All rights reserved.</p>
        <p>
            <a href="#">Instagram</a>
            <a href="#">Facebook</a>
            <a href="#">YouTube</a>
        </p>
    </footer>
</body>
<script>
    window.onload= () => {
    	
    }
</script>
</html>
