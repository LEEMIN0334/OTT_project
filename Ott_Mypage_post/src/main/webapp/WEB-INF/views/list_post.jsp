<%@ page contentType="text/html; charset=UTF-8" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" %>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>넷플릭스 공유하기</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
            background-color: #FFFFFF;
        }

        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px 80px;
            border-bottom: 1px solid #E5E7EB;
        }

        header .logo {
            font-size: 24px;
            font-weight: bold;
        }

        header nav {
            display: flex;
            gap: 40px;
        }

        header nav a {
            text-decoration: none;
            color: #000000;
            font-size: 16px;
        }

        header .user-info {
            display: flex;
            align-items: center;
            gap: 15px;
        }

        header .user-info span {
            font-size: 16px;
        }

        header .user-info a {
            text-decoration: none;
            font-size: 14px;
            color: #000000;
            text-decoration: underline;
        }

        main {
            max-width: 1300px;
            margin: 50px auto;
        }

        .title-section {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }

        .title-section h1 {
            font-size: 32px;
            font-weight: 700;
        }

        .title-section button {
            background-color: #F3F4F6;
            border: 1px solid #E5E7EB;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
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
            margin-top: 50px;
            background-color: #FAFAFA;
            padding: 30px 0;
            text-align: center;
        }

        footer .social-links {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin-bottom: 20px;
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
            <a href="./write_post_view.do">글 작성하기</a>
            <a href="./list_post.do">공유글 보기</a>
            <a href="#">요금 가이드</a>
            <a href="./mypage_view.do">마이페이지</a>
        </nav>
        <div class="user-info">
            <span><c:if test="${user != null}">${user.name} 님</c:if></span>
            <a href="#">로그아웃</a>
        </div>
    </header>

    <main>
        <div class="title-section">
            <h1>넷플릭스 공유하기</h1>
            <button  onclick="location.href='./write_post_view.do'">글 작성하기</button>
        </div>

        <table>
            <thead>
                <tr>
                    <th>글번호</th>
                    <th>제목</th>
                    <th>작성일</th>
                    <th>모집 상태</th>
                </tr>
            </thead>
            <tbody>
                <!-- 10개의 빈 행 추가 -->
                <c:forEach var="postList" items="${postList }" >
	                <tr>
	                    <td>${postList.postNum}</td>
	                    <td>${postList.postData}(제목대신 내용으로)</td>
	                    <td>${postList.postDate}</td>
	                    <td class="recruiting">모집중 ${postList.shareNum}</td>
	                </tr>
                </c:forEach>
            </tbody>
        </table>
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
</html>
