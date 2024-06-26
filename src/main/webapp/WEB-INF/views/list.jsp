<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>List Page</h1>
    <hr>
    <table border="1">
        <tr>
            <th>bno</th><th>title</th><th>content</th><th>writer</th><th>regdate</th>
        </tr>
        <c:forEach var="dto" items="${list}" varStatus="status">
            <tr>
                <td>${dto.bno}</td>
                <td><a href="detail?bno=${dto.bno}">${dto.title}</a></td>
                <td>${dto.content}</td>
                <td>${dto.writer}</td>
                <td>${dto.regdate}</td>
            </tr>
        </c:forEach>
    </table>
    <a href="writeForm">글 작성하기</a>
</body>
</html>