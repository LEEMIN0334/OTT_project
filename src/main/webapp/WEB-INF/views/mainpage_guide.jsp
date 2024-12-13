<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>요금 가이드</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: #FFFFFF;
        }
        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px 50px;
            border-bottom: 1px solid #e0e0e0;
        }
        header nav a {
            margin: 0 15px;
            text-decoration: none;
            color: #000000;
            font-size: 16px;
        }
        .logo {
            font-size: 20px;
            font-weight: bold;
        }
        main {
            max-width: 1200px;
            margin: 30px auto;
            padding: 0 20px;
            text-align: center;
        }
        h1 {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 10px;
        }
        p.subtitle {
            font-size: 14px;
            color: #6b7280;
            margin-bottom: 30px;
        }
        .guide-container {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(350px, 1fr));
            gap: 20px;
            justify-items: center;
        }
        .card {
            background-color: #FFFFFF;
            width: 350px;
            padding: 20px;
            border: 1px solid #e0e0e0;
            border-radius: 10px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            text-align: left;
        }
        .card img {
            width: 50px;
            height: 50px;
            margin-bottom: 10px;
        }
        .card h2 {
            font-size: 18px;
            font-weight: bold;
            margin-bottom: 10px;
        }
        .card p {
            font-size: 14px;
            color: #6b7280;
            margin-bottom: 20px;
            line-height: 1.4;
        }
        .card a {
            display: inline-block;
            padding: 10px 20px;
            background-color: #007BFF;
            color: #FFFFFF;
            text-decoration: none;
            border-radius: 5px;
            font-size: 14px;
            font-weight: bold;
            text-align: center;
        }
        .card a:hover {
            background-color: #0056b3;
        }
        footer {
            text-align: center;
            padding: 20px;
            background-color: #f9f9f9;
            margin-top: 50px;
            font-size: 14px;
            color: #6b7280;
        }
        footer a {
            margin: 0 10px;
            text-decoration: none;
            color: #000000;
        }
    </style>
</head>
<body>
    <header>
        <div class="logo">logo</div>
        <nav>
        	<a href="./insertpostview.do">글 작성하기</a>
            <a href="./postlistview.do">공유글 보기</a>
            <a href="#">요금 가이드</a>
            <a href="#">마이페이지</a>
        </nav>
    </header>
    <main>
        <h1>요금 가이드</h1>
        <p class="subtitle">각 OTT 별 요금 가이드를 확인해보세요!<br>버튼을 클릭하면 각 사이트로 이동합니다.</p>
        <div class="guide-container">
            <div class="card">
                <img src="netflix-logo.png" alt="Netflix">
                <h2>넷플릭스 요금가이드</h2>
                <p>넷플릭스는 다양한 콘텐츠를 제공합니다. 요금제를 비교하여 선택하세요.</p>
                <a href="#">바로가기 ></a>
            </div>
            <div class="card">
                <img src="disney-logo.png" alt="Disney+">
                <h2>디즈니+ 요금가이드</h2>
                <p>디즈니+는 가족 모두를 위한 콘텐츠를 제공합니다. 요금제를 확인해보세요.</p>
                <a href="#">바로가기 ></a>
            </div>
            <div class="card">
                <img src="youtube-logo.png" alt="YouTube Premium">
                <h2>유튜브 프리미엄 요금가이드</h2>
                <p>광고 없이 유튜브를 즐기세요. 유튜브 프리미엄 요금제를 확인하세요.</p>
                <a href="#">바로가기 ></a>
            </div>
            <div class="card">
                <img src="coupang-logo.png" alt="Coupang Play">
                <h2>쿠팡 플레이 요금가이드</h2>
                <p>쿠팡 멤버십과 함께 즐길 수 있는 다양한 콘텐츠를 제공합니다.</p>
                <a href="#">바로가기 ></a>
            </div>
            <div class="card">
                <img src="wavve-logo.png" alt="Wavve">
                <h2>웨이브 요금가이드</h2>
                <p>국내 및 해외 콘텐츠를 즐길 수 있는 웨이브의 요금제를 확인하세요.</p>
                <a href="#">바로가기 ></a>
            </div>
            <div class="card">
                <img src="tving-logo.png" alt="Tving">
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