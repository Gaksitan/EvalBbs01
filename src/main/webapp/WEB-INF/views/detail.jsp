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
    <h1>Detail Page</h1>
    <hr>
    <table border="1">
        <tr>
            <th>bno</th><th>title</th><th>content</th><th>writer</th><th>regdate</th><th></th>
        </tr>
        <tr>
            <td>${dto.bno}</td>
            <td>${dto.title}</td>
            <td>${dto.content}</td>
            <td>${dto.writer}</td>
            <td>${dto.regdate}</td>
            <td><a href="delete?bno=${dto.bno}">X</a></td>
        </tr>
    </table>
</body>
</html>