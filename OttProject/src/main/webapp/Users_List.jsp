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
                <th>membernum</th>
                <th>id</th>
                <th>name</th>
                <th>password</th>
                <th>email</th>
                <th>birth</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="users" items="${usersList}">
                <tr>
                    <td>${users.membernum}</td>
                    <td>${users.id}</td>
                    <td>${users.name}</td>
                    <td>${users.password}</td>
                    <td>${users.email}</td>
                    <td>${users.birth}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</html>