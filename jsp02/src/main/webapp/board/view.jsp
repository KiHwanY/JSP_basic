<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>view</title>
<script src="../include/jquery-3.6.3.min.js"></script>
<%@ include file="../include/header.jsp" %>
</head>
<body>
<h2>상세 화면</h2>
<form name="form1" method="post">
<table border="1" style="width:100%;">
	<tr>
	<td>날짜</td>
	<td>${dto.reg_date}</td>
	<td>조회수</td>
	<td>${dto.readcount}</td>
	</tr>
	<tr>
	<td>이름</td>
	<td colspan="3">${dto.writer}</td>
	</tr>
	<tr>
	<td>제목</td>
	<td colspan="3">${dto.subject}</td>
	</tr>
		<tr>
	<td>본문</td>
	<td colspan="3">${dto.content}</td>
	</tr>
	<tr>
	<td>비밀번호</td>
	<td colspan="3">
	<input type="password" name="passwd" id="passwd">
	<c:if test="${param.message == 'error' }">
		<span style="color: red;">비밀번호가 일치하지 않습니다.</span>
	</c:if>
	</td>
	</tr>
	<tr>
	<td>첨부파일</td>
	<td colspan="3">
	<c:if test="${dto.filesize > 0}">${dto.filename}(${dto.filesize} bytes)
		<a href="${path}/board_servlet/download.do?num=${dto.num}">[다운로드]</a>
	</c:if>
	</td>
	</tr>
</table>

</form>
</body>
</html>