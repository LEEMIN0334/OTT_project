<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
    <style>
        body {
            margin: 0;
            font-family: 'Arial', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #FFFFFF;
        }

        .login-container {
            text-align: center;
            width: 400px;
            padding: 40px;
            border: 1px solid #E5E7EB;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            background: #FFFFFF;
        }

        .login-container h1 {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 10px;
            color: #000000;
        }

        .login-container p {
            font-size: 14px;
            color: #6B7280;
            margin-bottom: 20px;
        }

        .login-container form {
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        .login-container input[type="text"],
        .login-container input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #E5E7EB;
            border-radius: 5px;
            font-size: 14px;
        }

        .login-container button {
            padding: 10px;
            background-color: #E5E7EB;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            font-weight: bold;
            color: #000000;
            cursor: pointer;
        }

        .login-container button:hover {
            background-color: #D1D5DB;
        }

        .login-container .footer {
            margin-top: 20px;
            font-size: 14px;
            color: #6B7280;
        }

        .login-container .footer a {
            text-decoration: underline;
            color: #000000;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h1>로그인</h1>
        <p>로그인 한 후 OOO의 다양한 서비스를 만나보세요.</p>
        <form action="./login.do" method="post">
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
