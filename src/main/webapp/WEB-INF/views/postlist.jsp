
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>모집 글 작성하기</title>
<<<<<<< HEAD
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
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #E5E7EB;
            padding: 15px;
            text-align: center;
        }

        th {
            background-color: #F9FAFB;
            font-weight: 500;
            font-size: 16px;
        }

        td {
            font-size: 14px;
            height: 40px;
        }

        td.recruiting {
            color: #0082E0;
            font-weight: bold;
        }

        td.full {
            color: #FF0000;
            font-weight: bold;
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
    </header>
    <main>
    	<h2>넷플릭스 공유 게시글</h2>
>>>>>>> 775632f93c79b58f7c1ef567c31a349f253d65aa
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
<<<<<<< HEAD
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

=======
    window.onload= () => {
    	
    }
>>>>>>> 775632f93c79b58f7c1ef567c31a349f253d65aa
</script>
</html>