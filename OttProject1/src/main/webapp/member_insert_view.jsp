<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <style>
        body {
            margin: 0;
            font-family: 'Arial', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            width: 1920px;
            height: 1080px;
            background-color: #FFFFFF;
        }

        .signup-container {
            text-align: center;
            width: 600px;
            padding: 40px;
            border: 1px solid #E5E7EB;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            background: #FFFFFF;
        }

        .signup-container h1 {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 10px;
            color: #000000;
        }

        .signup-container p {
            font-size: 14px;
            color: #6B7280;
            margin-bottom: 30px;
        }

        .signup-container form {
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        .signup-container input[type="text"],
        .signup-container input[type="password"],
        .signup-container input[type="date"],
        .signup-container input[type="email"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #E5E7EB;
            border-radius: 5px;
            font-size: 14px;
        }

        .signup-container .email-group {
            display: flex;
            gap: 10px;
        }

        .signup-container .email-group input {
            flex: 1;
        }

        .signup-container .email-group select {
            flex: 0.5;
            padding: 10px;
            border: 1px solid #E5E7EB;
            border-radius: 5px;
            font-size: 14px;
        }

        .signup-container .checkbox-group {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .signup-container .checkbox-group input[type="checkbox"] {
            width: 20px;
            height: 20px;
        }

        .signup-container .checkbox-group label {
            font-size: 14px;
            color: #6B7280;
        }

        .signup-container button {
            padding: 10px;
            background-color: #E5E7EB;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            font-weight: bold;
            color: #000000;
            cursor: pointer;
        }

        .signup-container button:hover {
            background-color: #D1D5DB;
        }

        .inline-input {
            display: flex;
            gap: 10px;
            align-items: center;
        }

        .inline-input button {
            padding: 10px;
            background-color: #E5E7EB;
            border: none;
            border-radius: 5px;
            font-size: 14px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="signup-container">
        <h1>회원 가입하기</h1>
        <p>회원가입 후 OOO의 다양한 서비스를 경험해보세요.</p>
        <form action="register.do" method="post">
            <div class="inline-input">
                <input type="text" name="id" placeholder="아이디" required>
                <button type="button">중복확인</button>
            </div>
            <input type="password" name="password" placeholder="비밀번호" required>
            <input type="password" name="confirm_password" placeholder="비밀번호 확인" required>
            <input type="text" name="name" placeholder="이름" required>
            <div class="email-group">
                <input type="email" name="email" placeholder="이메일" required>
                <select>
                    <option value="naver.com">@naver.com</option>
                    <option value="gmail.com">@gmail.com</option>
                    <option value="daum.net">@daum.net</option>
                </select>
            </div>
            <input type="text" name="birth" placeholder="생년월일 (ex: 19900101)" required>
            <div class="checkbox-group">
                <input type="checkbox" name="privacy_policy" required>
                <label for="privacy_policy">개인정보 수집 및 활용에 동의합니다.</label>
            </div>
            <button type="submit">회원 가입</button>
        </form>
    </div>
</body>
</html>
