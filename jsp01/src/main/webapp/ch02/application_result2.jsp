<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>application_result2</title>
<script src="../include/jquery-3.6.3.min.js"></script>
</head>
<body>
<h2>[application_result2.jsp 파일]</h2>
<%
String message = (String)application.getAttribute("message");
out.print("메시지 : "+ message);
%>
</body>
</html>