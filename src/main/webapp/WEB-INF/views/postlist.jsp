
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>모집 글 작성하기</title>
    <link rel="stylesheet" type="text/css" href="css/postlist.css">
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
            <h2>OTT별 게시글 보기</h2>
            <div class="ott-icons2">
            <button><img src="./netflix-logo.png" alt="Netflix"></button>
            <button><img src="./disney-logo.png" alt="Disney+"></button>
            <button><img src="./coupang-logo.png" alt="Coupang"></button>
            <button><img src="./youtube-logo.png" alt="YouTube"></button>
            <button><img src="./wavve-logo.png" alt="Wavve"></button>
            <button><img src="./tving-logo.png" alt="Tving"></button>
    		</div>
	<table>
		<thead>
                <tr>
                    <th>번호</th>
                    <th>작성자</th>
                    <th>ott플랫폼</th>
                    <th>게시글 작성일</th>
                    <th>그룹 현황</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="post" items="${postList}">
                    <tr>
                        <td><a href="./postView.do?postnum=${post.postnum}&platformnum=${post.platformnum}">${post.postnum}</a></td>
                        <td>${post.id}</td>
                        <td>${post.platformnum}</td>
                        <td>${post.postdate}</td>
                        <td>${post.nownum}/${post.sharenum}</td>
                    </tr>
                </c:forEach>
            </tbody>
	</table>
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
    // .ott-icons2 클래스를 가진 모든 요소를 선택
    const buttons = document.querySelectorAll('.ott-icons2');

    // 각 버튼에 클릭 이벤트 리스너 추가
    buttons.forEach(button => {
        button.addEventListener('click', () => {
            // post.platformnum 값을 동적으로 가져오기
            const platformNum = button.getAttribute('data-platformnum'); // data-platformnum 속성에서 값 추출
            consolelog(const);
            if (platformNum) {
                // 원하는 URL로 이동
                window.location.href = `postlist.jsp?platformnum=${platformNum}`;
            } else {
                console.error('platformnum이 정의되지 않았습니다.');
            }
        });
    });
};

</script>
</html>