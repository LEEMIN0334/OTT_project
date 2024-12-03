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
		int dan = Integer.parseInt(request.getParameter("dan"));
	%>
	<p><%=dan %>단</p>
	<% for(int i = 1; i <=9;i++){%>
	<p><%=i %> * <%=dan %> = <%=i*dan %></p>
	<%
	}
	%>
</body>
</html>