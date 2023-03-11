<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
<script src="../include/jquery-3.6.3.min.js"></script>
<%@ include file="../include/header.jsp" %>
<%@ include file="../include/session_check.jsp" %>
<script type="text/javascript">
$(function() {
	$("#btnLogout").click(function() {
		location.href="${path}/session_servlet/logout.do";
	});
});

</script>
</head>
<body>
<%-- <h2><%= session.getAttribute("message") %></h2> --%>
<h2>${sessionScope.message}</h2>
${sessionScope.userid}님이 접속중입니다.<br>
<a href="sessionpage2.jsp">세션페이지2 이동</a>
<button type="button" id="btnLogout">로그아웃</button>
</body>
</html>