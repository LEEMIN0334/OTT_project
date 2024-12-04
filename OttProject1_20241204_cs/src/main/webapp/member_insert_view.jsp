<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>회원 가입</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }
        input[type="text"], input[type="password"], input[type="date"], input[type="email"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        input[type="submit"] {
            background-color: #28a745;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <h2>회원 가입</h2>
    <form action="register.do" method="post">
        <label for="id">아이디:</label>
        <input type="text" id="id" name="id" required>

        <label for="password">비밀번호:</label>
        <input type="password" id="password" name="password" required>

        <label for="confirm_password">비밀번호 재입력:</label>
        <input type="password" id="confirm_password" name="confirm_password" required>

        <label for="name">이름:</label>
        <input type="text" id="name" name="name" required>

        <label for="birth">생년월일:</label>
        <input type="date" id="birth" name="birth" required>

        <label for="email">이메일:</label>
        <input type="email" id="email" name="email" required>

        <input type="submit" value="가입하기">
    </form>
</body>
</html>
