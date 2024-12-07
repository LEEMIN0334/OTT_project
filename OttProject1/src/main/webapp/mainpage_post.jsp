
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>모집 글 작성하기</title>
    <style>
        /* 스타일은 원본 그대로 유지 */
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
        }
        h1 {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 10px;
            text-align: center;
        }
        p.subtitle {
            text-align: center;
            font-size: 14px;
            color: #6b7280;
            margin-bottom: 30px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }
        input[type="text"], textarea {
            width: 100%;
            padding: 10px;
            font-size: 14px;
            border: 1px solid #d4d4d4;
            border-radius: 5px;
            box-sizing: border-box;
        }
        textarea {
            height: 150px;
        }
        .ott-section {
            margin-bottom: 30px;
        }
        .ott-icons {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
        }
        .ott-icons img {
            width: 120px;
            height: 60px;
            object-fit: contain;
            margin: 10px 5px;
            cursor: pointer;
            border: 1px solid #d4d4d4;
            border-radius: 5px;
            transition: transform 0.3s, border-color 0.3s;
        }
        .ott-icons img:hover {
            transform: scale(1.1);
            border-color: #000000;
        }
        .settings {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }
        .settings div {
            display: flex;
            align-items: center;
        }
        .settings div label {
            margin-right: 10px;
        }
        select {
            padding: 5px 10px;
            font-size: 14px;
            border: 1px solid #d4d4d4;
            border-radius: 5px;
        }
        button.submit {
            display: block;
            margin: 20px auto;
            padding: 10px 20px;
            background-color: #000000;
            color: #FFFFFF;
            font-size: 16px;
            font-weight: bold;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button.submit:hover {
            background-color: #333333;
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
            <a href="./makegroup.do">그룹 생성하기</a>
            <a href="./mainpage_post.jsp">글 작성하기</a>
            <a href="./postlist.jsp">공유글 보기</a>
            <a href="./guide.jsp">요금 가이드</a>
            <a href="./mypage.jsp">마이페이지</a>
        </nav>
    </header>
    <main>
        <h1>모집 글 작성하기</h1>
        <p class="subtitle">같이 쉐어할 팀원을 모집할 게시글을 작성할 수 있습니다.</p>
        <form action="./insertPost.do">
        <div class="form-group">
            <label for="title">글 제목</label>
            <input type="text" id="title" placeholder="내 OTT 아이디로 팀원을 구하고 싶어요!" name="title">
        </div>
        <div class="form-group">
            <label for="content">글 내용</label>
            <textarea id="content" placeholder="글 내용을 자유롭게 작성해주세요." name="posteddata"></textarea>
        </div>
        <div class="ott-section">
            <h2>OTT 설정</h2>
            <p>팀원을 구할 OTT를 선택하세요.</p>
            <div class="ott-icons">
                <img src="./netflix-logo.png" alt="Netflix">
                <img src="./disney-logo.png" alt="Disney+">
                <img src="./coupang-logo.png" alt="CoupangPlay">
                <img src="./youtube-logo.png" alt="YouTubePremium">
                <img src="./wavve-logo.png" alt="Wavve">
                <img src="./tving-logo.png" alt="Tving">
            </div>
        </div>
        <div class="settings">
            <div>
                <label for="current-members">현재 구독자는</label>
                <select id="current-members" name="presentmemcount">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                </select>
                명 있어요
            </div>
            <div>
                <label for="total-members">전체 팀원</label>
                <select id="total-members" name="maxmemcount">
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                </select>
                명
            </div>
        </div>
        <button class="submit">글 작성하기</button>
    </form>
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
    window.onload = () => {
        // ott-class 안의 모든 이미지를 선택
        const images = document.querySelectorAll('.ott-icons img');
		
        if (images.length === 0) {
            console.error('이미지 요소가 없습니다. HTML 구조를 확인하세요.');
        }
        // 각 이미지에 클릭 이벤트 추가
        images.forEach(image => {
            image.addEventListener('click', () => {
                // 이미지의 alt 값을 변수 ott에 저장
                const ott = image.alt;
                console.log('클릭된 이미지의 alt 값:', ott);

                // 원하는 추가 작업을 여기서 수행 가능
            });
        });
    };
</script>
</html>
<!-- 현재 페이지에서 받는 정보
1. 작성자 membernum
2. 글 제목
3. 글 내용
4. OTT서비스 (몇개까지?)
5. 현재 구독자 수
6. 전체 팀원 
7. 게시 시간
8. 
현재 페이지에서 데이터를 생성해서 넣을 테이블
1. POST ( POSTNUM, MEMBERNUM, POSTEDDATE, POSTEDDATA, PASSWORD, VIEW1 )
2. GROUPTABLE ( GNO, PAYNUM, GROUP_NAME, OTT_SERVICE )-->

