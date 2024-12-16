<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<link rel="stylesheet" type="text/css" href="css/mypage.css">
<script>
  window.onload = () => {
    const deleteLink = document.getElementById("deleteLink");

    deleteLink.addEventListener("click", (event) => {
      const confirmation = confirm("탈퇴하시겠습니까?");
      if (!confirmation) {
        event.preventDefault(); 
      }
    });
    
    const updateInfo = document.getElementById("updateInfo");

    updateInfo.addEventListener("click", (event) => {
      const confirmation = confirm("회원 정보를 수정하시겠습니까?");
      if (!confirmation) {
        event.preventDefault(); 
      }
    });
    
  };
</script>

</head>
<body>
	<form action="userUpdate.do" method="post">
		<div class="container">
			<div class="header">
				<a href="./Main.do" id="logo"></a>
				<div class="title">마이페이지</div>
				<div class="user-info">
					<span id="user_name">${user.name} 님</span> | <a href="logout.do"
						id="logout">로그아웃</a>
				</div>
			</div>
			<div class="main-content">
				<div class="profile-section">
					<img src="img/profile.png" alt="프로필 사진">
					<h2>
						<c:if test="${user != null}">
              				${user.name} 님
            			</c:if>
					</h2>
					<div class="ott-sharing">
						<!-- OTT 공유 상태 -->
						<c:forEach var="groupmember" items="${groupmemberList}">
							<c:if test="${groupmember.platformNum} == 1">
								<img alt="" src="">
								<!-- 링크는 게시글 jsp 파일 받고 나서 수정 -->
								<!--<a href="post.jsp?postId=${post.postNum}">넷플릭스 공유 중</a>  -->
								<a>넷플릭스 공유 중</a>
							</c:if>
							<c:if test="${groupmember.platformNum} == 2">
								<img alt="" src="">
								<p>디즈니플러스 공유 중</p>
							</c:if>
							<c:if test="${groupmember.platformNum} == 3">
								<img alt="" src="">
								<p>유튜브프리미엄 공유 중</p>
							</c:if>
							<c:if test="${groupmember.platformNum} == 4">
								<img alt="" src="">
								<p>쿠팡플레이 공유 중</p>
							</c:if>
							<c:if test="${groupmember.platformNum} == 5">
								<img alt="" src="">
								<p>웨이브 공유 중</p>
							</c:if>
							<c:if test="${groupmember.platformNum} == 6">
								<img alt="" src="">
								<p>티빙 공유 중</p>
							</c:if>
							<!-- <a id="payment" href="https://link.kakaopay.com/_/0pDpd3P">1/n 정산하기</a> -->
						</c:forEach>
					</div>
				</div>
				<div class="form-section">
					<label for="id">아이디</label> <input type="text" id="id" name="id"
						readonly="readonly"
						value="<c:if test="${user != null}">${user.id}</c:if>"> <label
						for="name">이름</label> <input type="text" id="name" name="name"
						value="<c:if test="${user != null}">${user.name}</c:if>">

					<label for="birth">생년월일</label> <input type="date" id="birth"
						name="birth"
						value="<c:if test="${user != null}">${user.birth}</c:if>">

					<label for="password">비밀번호 변경</label> <input type="password"
						id="password" name="password" placeholder="비밀번호 변경"> <label
						for="password2">비밀번호 확인</label> <input type="password"
						id="password2" name="password2" placeholder="비밀번호 확인"> <label
						for="email">이메일</label> <input type="text" id="email" name="email"
						value="<c:if test="${user != null}">${user.email}</c:if>">

					<label for="account">등록 계좌</label> <input type="text" id="account"
						name="account"
						value="<c:if test="${user != null}">${user.account}</c:if>"
						placeholder="등록 계좌">


					<div class="actions">
						<a href="userDelete.do?id=${user != null ? user.id : ''}" id="deleteLink">회원탈퇴</a>

						<button type="submit" id="updateInfo">저장</button>
					</div>
				</div>
			</div>
			<div class="footer">
				<p id="footer_values">Connecting the world, one click at a time.</p>
				<p>Contact us: support@shareME.com | Phone: +82-10-1234-5678</p>
				<p>Address: 123 Dangsan-dong, Yeongdeungpo-gu, Seoul, South Korea</p>
				<p>&copy; 2024 shareME. All rights reserved.</p>

			</div>
		</div>
	</form>
</body>
</html>