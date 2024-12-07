<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>OTT 공유 페이지</title>
    <style>
        body {
            margin: 0;
            font-family: 'Arial', sans-serif;
            background-color: #F9FAFB;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        header {
            width: 100%;
            background-color: #FFFFFF;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px 80px;
            box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.1);
        }

        header .logo {
            font-size: 24px;
            font-weight: bold;
            color: #000000;
        }

        header nav {
            display: flex;
            gap: 20px;
        }

        header nav a {
            text-decoration: none;
            font-size: 16px;
            color: #000000;
        }

        header .user-info {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        header .user-info span {
            font-size: 16px;
            color: #000000;
        }

        .container {
            max-width: 1300px;
            margin: 40px 0;
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 20px;
        }

        .card {
            background: #FFFFFF;
            border: 1px solid #E5E7EB;
            border-radius: 10px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
            padding: 20px;
            display: flex;
            flex-direction: column;
            gap: 10px;
        }

        .card .logo {
            width: 50px;
            height: 50px;
        }

        .card h2 {
            font-size: 20px;
            font-weight: bold;
            margin: 10px 0;
        }

        .card p {
            font-size: 14px;
            color: #6B7280;
        }

        .card button {
            margin-top: auto;
            align-self: flex-start;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            background: #E5E7EB;
            font-size: 14px;
            font-weight: bold;
            cursor: pointer;
        }

        footer {
            margin-top: 40px;
            width: 100%;
            background-color: #FAFAFA;
            text-align: center;
            padding: 20px 0;
            border-top: 1px solid #E5E7EB;
        }

        footer .social-links {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin-bottom: 10px;
        }

        footer .social-links img {
            width: 30px;
            height: 30px;
        }

        footer p {
            font-size: 14px;
            color: #6B7280;
        }
    </style>
</head>
<body>
    <header>
        <div class="logo">logo</div>
        <nav>
        	<a href="./insertGroup.jsp">그룹 생성하기</a>
            <a href="./insert_post.jsp">글 작성하기</a>
            <a href="./postlist.jsp">공유글 보기</a>
            <a href="./mainpage_guide.jsp">요금 가이드</a>
            <a href="./mypage.jsp">마이페이지</a>
        </nav>
        <div class="user-info">
            <span>chs731322 님</span>
            <a href="logout.do">로그아웃</a>
        </div>
    </header>

    <main>
        <h1>OTT 공유하기</h1>
        <div class="container">
            <div class="card">
                <img class="logo" src="netflix-logo.png" alt="넷플릭스">
                <h2>넷플릭스 공유하기</h2>
                <p>넷플릭스 계정을 함께 사용하고 절약하세요!</p>
                <button>참여하기 &gt;</button><button>참여하기 &gt;</button>
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
</html>>