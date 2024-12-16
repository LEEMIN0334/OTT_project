<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>요금 가이드</title>
    <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/mainpage_guide.css">
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
        <h1>요금 가이드</h1>
        <p class="subtitle">각 OTT 별 요금 가이드를 확인해보세요!<br>버튼을 클릭하면 각 사이트로 이동합니다.</p>
        <div class="guide-container">
            <div class="card">
                <img src="<%= request.getContextPath() %>/resources/netflix-logo.png" alt="Netflix">
                <h2>넷플릭스 요금가이드</h2>
                <p>넷플릭스는 다양한 콘텐츠를 제공합니다. 요금제를 비교하여 선택하세요.</p>
                <a href="#">바로가기 ></a>
            </div>
            <div class="card">
                <img src="<%= request.getContextPath() %>/resources/disney-logo.png" alt="Disney+">
                <h2>디즈니+ 요금가이드</h2>
                <p>디즈니+는 가족 모두를 위한 콘텐츠를 제공합니다. 요금제를 확인해보세요.</p>
                <a href="#">바로가기 ></a>
            </div>
            <div class="card">
                <img src="<%= request.getContextPath() %>/resources/youtube-logo.png" alt="YouTube Premium">
                <h2>유튜브 프리미엄 요금가이드</h2>
                <p>광고 없이 유튜브를 즐기세요. 유튜브 프리미엄 요금제를 확인하세요.</p>
                <a href="#">바로가기 ></a>
            </div>
            <div class="card">
                <img src="<%= request.getContextPath() %>/resources/coupang-logo.png" alt="Coupang Play">
                <h2>쿠팡 플레이 요금가이드</h2>
                <p>쿠팡 멤버십과 함께 즐길 수 있는 다양한 콘텐츠를 제공합니다.</p>
                <a href="#">바로가기 ></a>
            </div>
            <div class="card">
                <img src="<%= request.getContextPath() %>/resources/wavve-logo.png" alt="Wavve">
                <h2>웨이브 요금가이드</h2>
                <p>국내 및 해외 콘텐츠를 즐길 수 있는 웨이브의 요금제를 확인하세요.</p>
                <a href="#">바로가기 ></a>
            </div>
            <div class="card">
                <img src="<%= request.getContextPath() %>/resources/tving-logo.png" alt="Tving">
                <h2>티빙 요금가이드</h2>
                <p>티빙에서만 볼 수 있는 독점 콘텐츠를 확인하세요. 요금제를 비교해보세요.</p>
                <a href="#">바로가기 ></a>
            </div>
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
</html>
