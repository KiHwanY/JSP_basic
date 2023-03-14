<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index</title>
<script src="../include/jquery-3.6.3.min.js"></script>
<%@ include file="../include/header.jsp" %>
</head>
<body>
<%
String context = request.getContextPath();
//컨트롤러 이동
response.sendRedirect(context+"/guestbook_servlet/list.do");

%>

</body>
</html>