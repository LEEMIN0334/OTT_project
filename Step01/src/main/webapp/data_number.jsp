<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int number = Integer.parseInt(request.getParameter("number"));
	%>
	<p>사용자가 보낸 값 : <%=number %></p>
	<%
		for(int i = 0;i<=number;i++){
	%>	
		<p><%=i %></p>
	<%
		}
	%>
</body>
</html>