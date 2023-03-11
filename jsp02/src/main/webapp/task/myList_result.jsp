<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../include/jquery-3.6.3.min.js"></script>
<%@ include file="../include/header.jsp" %>
</head>
<body>
<h2>ArrayList 출력</h2>
<c:forEach var ="result" items="${requestScope.arr}">
${result} <br>
</c:forEach>

</body>
</html>