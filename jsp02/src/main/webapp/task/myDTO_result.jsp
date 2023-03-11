<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../include/jquery-3.6.3.min.js"></script>
<%@ include file="../include/header.jsp" %>
</head>
<body>
<h2> DTO 출력</h2>
아이디 : ${dto.userid }<br>
이름 : ${dto.name }<br>
비번 : ${dto.passwd }<br>
이메일 : ${dto.email }<br>
전화 : ${dto.hp }<br>

</body>
</html>