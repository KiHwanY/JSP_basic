<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session_login</title>
<script src="../include/jquery-3.6.3.min.js"></script>
<%@ include file="../include/header.jsp" %>
<!-- JSTL 명령어
c:코어태그
if test="조건식
param.변수 => request.getpARAMETER("변수")
JSTL은 null 처리도 자동처리 됨.
 -->

<c:if test="${param.message == 'error' }">
<script>
alert("아이디 또는 비밀번호가 일치하지 않습니다.");
</script>
</c:if>
<c:if test="${param.message == 'logout' }">
<script>
alert("로그아웃 되었습니다.")
</script>
</c:if>
</head>
<body>
<h2>세션 로그인</h2>
<form method="post" name="form1" action="${path}/session_servlet/login.do">
<table>
	<tr>
	<td>아이디</td>
	<td><input name="userid"> </td>
	</tr>
	<tr>
	<td>비밀번호</td>
	<td><input type="password" name="passwd"> </td>
	</tr>
	<tr>
	<td colspan="2" align="center">
	<input type="submit" value="로그인">
	</td>
	</tr>
</table>

</form>
</body>
</html>