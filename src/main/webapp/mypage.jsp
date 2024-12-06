<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<style>
body {
	margin: 0;
	padding: 0;
	font-family: Arial, sans-serif;
	background: #F5F5F5;
	color: #333;
}

.container {
	width: 100%;
	max-width: 1200px;
	margin: 0 auto;
	padding: 20px;
}

.header {
	display: flex;
	justify-content: space-between;
	align-items: center;
	background: #fff;
	padding: 20px 40px;
	border-bottom: 1px solid #ddd;
}

.header .title {
	font-size: 24px;
	font-weight: bold;
}

.header .user-info {
	font-size: 16px;
}

.main-content {
	display: flex;
	justify-content: space-between;
	background: #fff;
	padding: 40px;
	margin-top: 20px;
	border-radius: 8px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.profile-section {
	width: 40%;
	text-align: center;
	border-right: 1px solid #ddd;
	padding-right: 20px;
}

.profile-section img {
	width: 100px;
	height: 100px;
	border-radius: 50%;
	margin-bottom: 10px;
}

.profile-section h2 {
	margin: 10px 0;
	font-size: 20px;
}

.ott-sharing button {
	display: inline-block;
	width: 60%;
	margin: 10px auto;
	padding: 10px;
	text-align: left;
	font-size: 14px;
	box-sizing: border-box;
	background: #FFFFFF;
	border: 1px solid #6B7280;
	box-shadow: 4px 4px 8px rgba(0, 0, 0, 0.25);
	border-radius: 15px;
}

.form-section {
	width: 55%;
	padding-left: 20px;
}

.form-section label {
	display: block;
	margin-bottom: 5px;
	font-weight: bold;
}

.form-section input {
	width: 100%;
	margin-bottom: 20px;
	padding: 10px;
	border: 1px solid #ddd;
	border-radius: 4px;
}

.form-section .actions {
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.form-section .actions a {
	color: red;
	text-decoration: underline;
	cursor: pointer;
}

.form-section .actions button {
	width: 150px;
	height: 50px;
	background: #007BFF;
	color: #fff;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

.form-section .actions button:hover {
	background: #0056b3;
}

.footer {
	text-align: center;
	margin-top: 20px;
	padding: 20px;
	background: #fff;
	border-top: 1px solid #ddd;
}

.footer p {
	margin: 0;
	font-size: 12px;
	color: #888;
}

.footer .social-links {
	margin-top: 10px;
}

.footer .social-links img {
	width: 30px;
	height: 30px;
	margin: 0 5px;
}
</style>
</head>
<body>
	<form action="updateProfile.do" method="post">
		<div class="container">
			<div class="header">
				<div class="title">마이페이지</div>
				<div class="user-info">
					<c:if test="${user != null}">
           			 ${user.name} 님 | <a href="logout.do">로그아웃</a>
         		 	</c:if>
				</div>
			</div>
			<div class="main-content">
				<div class="profile-section">
					<img src="/mypage_html/img/profile.png" alt="프로필 사진">
					<h2>
						<c:if test="${user != null}">
              				${user.name} 님
            			</c:if>
					</h2>
					<div class="ott-sharing">
						<button>내 아이디로 넷플릭스 공유 중</button>
						<button>그룹으로 넷플릭스 공유 중</button>
					</div>
				</div>
				<div class="form-section">
					<label for="id">아이디</label>
         			<input type="text" id="id" name="id" readonly="readonly" value="<c:if test="${user != null}">${user.id}</c:if>">
				
					<label for="name">이름</label> 
					<input type="text" id="name" value="<c:if test="${user != null}">${user.name}</c:if>"> 
					
					<label for="birth">생년월일</label> 
					<input type="date" id="birth" value="<c:if test="${user != null}">${user.birth}</c:if>"> 
					
					<label for="password">비밀번호 변경</label> 
					<input type="password" id="password" placeholder="비밀번호 변경">
					
					<label for="password2">비밀번호 확인</label> 
					<input type="password" id="password2" placeholder="비밀번호 확인">
					
					<label for="account">등록 계좌</label> 
					<input type="text" id="account" placeholder="등록 계좌">
					
					<div class="actions">
						<a href="deleteMember.do">회원탈퇴</a>
						<button type="submit">저장</button>
					</div>
				</div>
			</div>
			<div class="footer">
				<p>Social Links</p>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
					do eiusmod tempor incididunt ut labore</p>
				<p>Copyright Text - All rights reserved.</p>
				<div class="social-links">
					<img src="/mypage_html/img/facebook.png" alt="Facebook"> <img
						src="/mypage_html/img/instagram.png" alt="Instagram"> <img
						src="/mypage_html/img/youtube_logo_1.png" alt="YouTube">
				</div>
			</div>
		</div>
	</form>
</body>
</html>