<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>로그인</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f4f4f4;
        }
        .login-container {
            text-align: center;
            width: 400px;
            padding: 40px;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        .login-container input {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        .login-container button {
            width: 100%;
            padding: 10px;
            background: #007BFF;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .login-container button:hover {
            background: #0056b3;
        }
        .login-container .footer {
            margin-top: 20px;
            font-size: 14px;
        }
        .login-container .footer a {
            color: #007BFF;
            text-decoration: none;
        }
        .login-container .footer a:hover {
            text-decoration: underline;
        }
    </style>
    <script>
        // 서버에서 전달된 error 파라미터를 확인하여 alert를 표시
        window.onload = function() {
            const urlParams = new URLSearchParams(window.location.search);
            const error = urlParams.get('error');
            if (error === 'invalid_password') {
                alert('비밀번호가 일치하지 않습니다.');
            } else if (error === 'server_error') {
                alert('서버 오류가 발생했습니다. 관리자에게 문의하세요.');
            }
        };
    </script>
</head>
<body>
    <div class="login-container">
        <h1>로그인</h1>
        <form action="login.do" method="post">
            <input type="text" name="id" placeholder="아이디" required>
            <input type="password" name="password" placeholder="비밀번호" required>
            <button type="submit">로그인</button>
        </form>
        <div class="footer">
            <p>회원이 아니신가요? <a href="member_insert_view.jsp">회원가입하기</a></p>
        </div>
    </div>
</body>
</html>
