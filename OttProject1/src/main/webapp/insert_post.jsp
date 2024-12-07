
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>모집 글 작성하기</title>
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
        .ott-icons2{
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
        }
        .ott-icons2 img {
            width: 120px;
            height: 60px;
            object-fit: contain;
            margin: 10px 5px;
            cursor: pointer;
            border: 1px solid #d4d4d4;
            border-radius: 5px;
            transition: transform 0.3s, border-color 0.3s;
        }
        .ott-icons2 img:hover {
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
        input[name="ottservice"] {
    display: none; /* 화면에서 숨김 */
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
    </header>
    <main>
        <h1>글 작성하기</h1>
        <form action="./insertPost">
        <div class="form-group">
            <label for="title">글 제목</label>
            <input type="text" id="title" name="title" placeholder="내 OTT 아이디로 팀원을 구하고 싶어요!">
        </div>
        <div class="form-group">
            <label for="content">글 내용</label>
            <textarea id="content" name="content" placeholder="글 내용을 자유롭게 작성해주세요."></textarea>
        </div>
        <div>
        <input type="radio" id="groupheve" name="grouphave" value="true">
        <label for="groupheve"><a>내 그룹에서 찾기</a></label>
		    <select id="email-domain" name="gno">
			    <option value="">-- 도메인 선택 --</option>
			    <option value="naver.com">@naver.com</option>
			    <option value="gmail.com">@gmail.com</option>
			    <option value="daum.net">@daum.net</option>
			</select>
		</div>
        <input type="radio" id="grouphave" name="grouphave" value="false">
        <label for="grouphave"><a>현재 그룹이 없으신가요?</a></label>
        <div class="ott-section">
            <h2>OTT 설정</h2>
            <p>팀원을 구할 OTT를 선택하세요.</p>
            <div class="ott-icons2">
			    <input type="radio" id="ottservice1" name="ottservice" value="Netflix">
			   		<label for="ottservice1"><img src="./netflix-logo.png" alt="Netflix"></label>
			    <input type="radio" id="ottservice2" name="ottservice" value="Disneyplus">
			   		<label for="ottservice2"><img src="./disney-logo.png" alt="Disney+"></label>
			    <input type="radio" id="ottservice3" name="ottservice" value="CoupangPlay">
			    	<label for="ottservice3"><img src="./coupang-logo.png" alt="CoupangPlay"></label>
			    <input type="radio" id="ottservice4" name="ottservice" value="YouTubePremium">
			    	<label for="ottservice4"><img src="./youtube-logo.png" alt="YouTubePremium"></label>
			    <input type="radio" id="ottservice5" name="ottservice" value="Wavve">
			    	<label for="ottservice5"><img src="./wavve-logo.png" alt="Wavve"></label>
			    <input type="radio" id="ottservice6" name="ottservice" value="Tving">
			    	<label for="ottservice6"><img src="./tving-logo.png" alt="Tving"></label>
    		</div>
    		<label for="ottaccount">공유할 ott계정:</label>
	        <input type="text" id="ottaccount" name="ottaccount">
	        <br><br>
	        
	        <label for="groupname">그룹 이름:</label>
	        <input type="text" id="groupname" name="groupname" placeholder="그룹 이름 입력">
	        <br><br>
	        
	        <label for="paynum">정산받을 계좌:</label>
	        <select id="paynum" name="paynum">
	            <option value="paynum1">신한</option>
	            <option value="paynum2">농협</option>
	            <option value="paynum3">국민</option>
	            <option value="paynum4">기업</option>
	            <option value="paynum5">우리</option>
	        </select>
	        <br><br>
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
    window.onload= () => {
    	
    }
</script>
</html>

