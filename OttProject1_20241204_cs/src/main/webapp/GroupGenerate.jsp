<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="./gruopGenerate.do" method="post">
	<label for="ottList">Choose a ott:</label>
	<select id="ottList" name="ott">
	  <option value="netplix">넷플</option>
	  <option value="D+">디즈니플러스</option>
	  <option value="watcha">왓챠</option>
	</select>
		<input type="text" name="groupName" 
			placeholder="최대 20자, 미입력시 랜덤생성">
		<input type="text" name="ottId" placeholder="ott아이디"><br>
		<input type="password" name="ottPassword" placeholder="ott암호"><br>
		<button>등록 하기</button>	
	</form>
	
</body>
</html>