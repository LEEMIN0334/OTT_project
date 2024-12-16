
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>모집 글 작성하기</title>
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
        <% 
        String errorMessage = (String) request.getAttribute("errorMessage");
        if (errorMessage != null) {
    	%>
    	alert("<%= errorMessage %>");
    	<% 
        	} 
    	%>
        
    }
</script>
</html>

