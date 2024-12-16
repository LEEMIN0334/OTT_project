<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>OTT 메인</title>
    <link rel="stylesheet" type="text/css" href="css/main.css">
</head>
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
        <h1>OTT 공유하기</h1>
        <div class="container">
            <div class="card">
                <img class="logo" src="netflix-logo.png" alt="넷플릭스">
                <h2>넷플릭스 공유하기</h2>
                <p>넷플릭스 계정을 함께 사용하고 절약하세요!</p>
                <button>참여하기 &gt;</button>
            </div>
            <div class="card">
                <img class="logo" src="disney-logo.png" alt="디즈니+">
                <h2>디즈니+ 공유하기</h2>
                <p>디즈니+ 콘텐츠를 함께 즐기세요!</p>
                <button>참여하기 &gt;</button>
            </div>
            <div class="card">
                <img class="logo" src="youtube-logo.png" alt="유튜브">
                <h2>유튜브 프리미엄 공유하기</h2>
                <p>광고 없는 유튜브를 함께 즐겨보세요.</p>
                <button>참여하기 &gt;</button>
            </div>
            <div class="card">
                <img class="logo" src="coupang-logo.png" alt="쿠팡">
                <h2>쿠팡 플레이 공유하기</h2>
                <p>쿠팡 플레이로 더 많은 콘텐츠를 경험하세요.</p>
                <button>참여하기 &gt;</button>
            </div>
            <div class="card">
                <img class="logo" src="wavve-logo.png" alt="웨이브">
                <h2>웨이브 공유하기</h2>
                <p>국내 인기 콘텐츠를 함께 즐겨요.</p>
                <button>참여하기 &gt;</button>
            </div>
            <div class="card">
                <img class="logo" src="tving-logo.png" alt="티빙">
                <h2>티빙 공유하기</h2>
                <p>티빙 오리지널 시리즈를 함께 감상하세요.</p>
                <button>참여하기 &gt;</button>
            </div>
        </div>
    </main>

    <footer>
        <div class="social-links">
            <img src="facebook-icon.png" alt="Facebook">
            <img src="instagram-icon.png" alt="Instagram">
            <img src="youtube-icon.png" alt="YouTube">
        </div>
        <p>Copyright Text - All rights reserved.</p>
    </footer>
</body>
</html>
