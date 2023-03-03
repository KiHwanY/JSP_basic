<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session_success</title>
<script src="../include/jquery-3.6.3.min.js"></script>
<!-- 사용여부에 관계없이 각 페이지마다 세션체크하는 기능을 추가해주는 것이 좋다. -->
<%@ include file="../include/session_check.jsp" %>
<% String context = request.getContextPath(); %>
<script type="text/javascript">
$(function() {
	$("#btnLogout").click(function() {
		location.href="<%=context%>/ch02_servlet/logout.do";
	});
});
</script>
</head>
<body>
<!-- 세션은 기본적으로 30분을 유지시킨다. -->
<h2><%= session.getAttribute("message") %> </h2>
접속중인 아이디 <%= session.getAttribute("userid")%>입니다.
<button type="button" id ="btnLogout">로그아웃</button>

</body>
</html>