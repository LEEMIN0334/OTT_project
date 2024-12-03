<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        table {
            width: 50%;
            border-collapse: collapse;
            margin: 20px auto;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
        }
        th {
            background-color: #f4f4f4;
        }
    </style>
</head>
<body>
	<form action="./searchMajor2.do" method="get">
		<select name="type">
			<option value="major_no">학과번호</option>
			<option value="major_name">학과명</option>
		</select>
		<input type="text" name="search">
		<button>검색</button>
	</form>
	<hr>
	<c:if test="${requestScope.majorList != null }">
		<table>
        <thead>
            <tr>
                <th>학과 번호</th>
                <th>학과 이름</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="major" items="${majorList}">
                <tr>
                    <td>${major.majorNo}</td>
                    <td>${major.majorName}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
	</c:if>
</body>
</html>















