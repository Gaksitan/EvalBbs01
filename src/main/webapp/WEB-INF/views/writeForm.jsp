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
    <h1>WriteForm Page</h1>
    <hr>
    <form action="write" method="post">
        <table border="1">
            <tr>
                <th>제목</th>
                <td><input type="text" name="title"></td>
            </tr>
            <tr>
                <th>내용</th>
                <td><input type="text" name="content"></td>
            </tr>
            <tr>
                <th>작가</th>
                <td><input type="text" name="writer"></td>
            </tr>
            <tr>
                <th>등록날짜</th>
                <td><input type="text" name="regdate"></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="등록"></td>
            </tr>
        </table>
    </form>
</body>
</html>