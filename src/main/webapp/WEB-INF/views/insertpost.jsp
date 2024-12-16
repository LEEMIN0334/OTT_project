
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>모집 글 작성하기</title>
<<<<<<< HEAD
    <link rel="stylesheet" type="text/css" href="css/insertpost.css">
     
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
=======
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
        input[type="radio"] {
			display: none; /* 화면에서 숨김 */
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
>>>>>>> 775632f93c79b58f7c1ef567c31a349f253d65aa
    </header>
    <main>
        <h1>글 작성하기</h1>
        <form action="./insertGroupAndPost.do">
        <div class="form-group">
            <label for="title">글 제목</label>
            <input type="text" id="title" name="title" placeholder="내 OTT 아이디로 팀원을 구하고 싶어요!">
        </div>
        <div class="form-group">
            <label for="postdata">글 내용</label>
            <textarea id="postdata" name="postdata" placeholder="글 내용을 자유롭게 작성해주세요."></textarea>
        </div>
        <div class="ott-section">
            <h2>OTT 설정</h2>
            <p>팀원을 구할 OTT를 선택하세요.</p>
            <div class="ott-icons2">
			    <input type="radio" id="ottservice1" name="platformnum" value="Netflix">
			   		<label for="ottservice1"><img src="./netflix-logo.png" alt="Netflix"></label>
			    <input type="radio" id="ottservice2" name="platformnum" value="Disneyplus">
			   		<label for="ottservice2"><img src="./disney-logo.png" alt="Disney+"></label>
			    <input type="radio" id="ottservice3" name="platformnum" value="Coupang">
			    	<label for="ottservice3"><img src="./coupang-logo.png" alt="Coupang"></label>
			    <input type="radio" id="ottservice4" name="platformnum" value="YouTube">
			    	<label for="ottservice4"><img src="./youtube-logo.png" alt="YouTube"></label>
			    <input type="radio" id="ottservice5" name="platformnum" value="Wavve">
			    	<label for="ottservice5"><img src="./wavve-logo.png" alt="Wavve"></label>
			    <input type="radio" id="ottservice6" name="platformnum" value="Tving">
			    	<label for="ottservice6"><img src="./tving-logo.png" alt="Tving"></label>
    		</div>
        <br><br>
        
        <label for="ottid">공유할 ott계정:</label>
        <input type="text" id="ottid" name="ottid">
        <br><br>
        
        <label for="ottpasswrod">공유할 ott비밀번호:</label>
        <input type="text" id="ottpassword" name="ottpassword">
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
    	const radioNogrouphave = document.getElementById('nogrouphave');
        const ottSection = document.querySelector('.ott-section');
        const selectOtt = document.querySelector('.mygroup');

        document.addEventListener('change', function () {
            if (radioNogrouphave.checked) {
                ottSection.classList.add('visible');
                selectOtt.classList.remove('visible');
            } else {
                ottSection.classList.remove('visible');
                selectOtt.classList.add('visible');
            }
        });
<<<<<<< HEAD
        <% 
        String errorMessage = (String) request.getAttribute("errorMessage");
        if (errorMessage != null) {
    	%>
    	alert("<%= errorMessage %>");
    	<% 
        	} 
    	%>
        
=======
>>>>>>> 775632f93c79b58f7c1ef567c31a349f253d65aa
    }
</script>
</html>

