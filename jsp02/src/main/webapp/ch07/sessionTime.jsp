<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sessionTime</title>
<script src="../include/jquery-3.6.3.min.js"></script>
</head>
<body>
<h2>세션의 유효 시간</h2>
<%
int timeout = session.getMaxInactiveInterval(); // 세션 유효시간 값을 알아보는 메서드
out.print("세션의 유효시간 :" + timeout);
%>

</body>
</html>