<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>error</title>
<script src="../include/jquery-3.6.3.min.js"></script>
</head>
<body>
<%
int a= Integer.parseInt(request.getParameter("num"));
// null을 숫자로 바꿀 수 없어서 java.lang.NumberFormatException 
%>
a : <%= a %>

</body>
</html>