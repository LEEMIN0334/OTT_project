<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="css/member_insert.css">
    <title>회원가입</title>
    <style>
        body { margin: 0; font-family: Arial, sans-serif; display: flex; justify-content: center; align-items: center; height: 100vh; background-color: #f9f9f9; }
        .signup-container { width: 400px; padding: 20px; background: white; box-shadow: 0 0 10px rgba(0,0,0,0.1); border-radius: 8px; }
        .signup-container h1 { font-size: 24px; margin-bottom: 20px; }
        .signup-container input { width: 100%; padding: 10px; margin-bottom: 10px; border: 1px solid #ddd; border-radius: 4px; }
        .signup-container button { width: 100%; padding: 10px; background: #007BFF; color: white; border: none; border-radius: 4px; cursor: pointer; }
        .signup-container button:hover { background: #0056b3; }
    </style>
</head>
<body>
    <div class="signup-container">
        <h1>회원가입</h1>
        <form action="register.do" method="post">
            <input type="text" name="id" placeholder="아이디" required>
            <input type="password" name="password" placeholder="비밀번호" required>
            <input type="password" name="confirm_password" placeholder="비밀번호 확인" required>
            <input type="text" name="name" placeholder="이름" required>
            <input type="email" name="email" placeholder="이메일" required>
            <input type="date" name="birth" placeholder="생년월일">
            <input type="text" name="account" placeholder="계좌번호 (선택)">
            <button type="submit">회원가입</button>
        </form>
        <c:if test="${not empty error}">
            <p style="color: red;">${error}</p>
        </c:if>
    </div>
</body>
</html>
