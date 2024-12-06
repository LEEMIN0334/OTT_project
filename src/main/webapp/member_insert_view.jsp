<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>회원가입</title>
    <style>
        body {
            margin: 0;
            font-family: 'Arial', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            width: 100vw;
            height: 100vh;
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
        .signup-container input[type="email"],
        .signup-container input[type="date"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #E5E7EB;
            border-radius: 5px;
            font-size: 14px;
        }

        .inline-input {
            display: flex;
            gap: 10px;
            align-items: center;
        }

        .inline-input button {
            padding: 10px;
            background-color: #4CAF50;
            color: #FFFFFF;
            border: none;
            border-radius: 5px;
            font-size: 14px;
            cursor: pointer;
        }

        .signup-container button {
            padding: 1px;
            background-color: #4CAF50;
            color: #FFFFFF;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }

        .signup-container button:hover {
            background-color: #45a049;
        }
    </style>
    <script>
        // 아이디 중복 확인 함수
        function checkDuplicateId() {
            const idInput = document.getElementById("id");
            const userId = idInput.value;

            if (!userId) {
                alert("아이디를 입력하세요.");
                return;
            }

            // encodeURIComponent를 사용한 JavaScript fetch 호출
            const encodedId = encodeURIComponent(userId); // JSP와 분리
            fetch(`checkId.do?id=${encodedId}`)
                .then(response => response.json())
                .then(data => {
                    if (data.exists) {
                        alert("이미 사용 중인 아이디입니다.");
                    } else {
                        alert("사용 가능한 아이디입니다.");
                    }
                })
                .catch(error => {
                    alert("서버 오류가 발생했습니다.");
                    console.error("Error:", error);
                });
        }
    </script>
</head>
<body>
    <div class="signup-container">
        <h1>회원 가입하기</h1>
        <p>회원가입 후 다양한 서비스를 경험해보세요.</p>
        <form action="register.do" method="post">
            <div class="inline-input">
                <input type="text" id="id" name="id" placeholder="아이디" required>
                <button type="button" onclick="checkDuplicateId()">중복확인</button>
            </div>
            <input type="password" name="password" placeholder="비밀번호" required>
            <input type="password" name="confirm_password" placeholder="비밀번호 확인" required>
            <input type="text" name="name" placeholder="이름" required>
            <input type="email" name="email" placeholder="이메일" required>
            <input type="text" name="birth" placeholder="생년월일 (ex: 19900101)" required>
            <button type="submit">회원 가입</button>
        </form>
    </div>
</body>
</html>
