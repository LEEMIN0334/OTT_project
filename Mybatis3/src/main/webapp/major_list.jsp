<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>학과 정보</title>
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
    <h1 style="text-align: center;">학과 정보</h1>
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
</body>
</html>