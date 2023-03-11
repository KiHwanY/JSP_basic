<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../include/jquery-3.6.3.min.js"></script>
<%@ include file="../include/header.jsp" %>
</head>
<body>
<% HashMap<String,String> map=(HashMap<String,String>)request.getAttribute("map"); %>
<h2>Hash Map 출력</h2>
아이디 : ${map["id"]} <br>
이름 : ${map["name"]}<br>
비번 : ${map["pw"]}<br>
이메일 : ${map["email"]}<br>
전화 : ${map["hp"]}<br>
</body>
</html>