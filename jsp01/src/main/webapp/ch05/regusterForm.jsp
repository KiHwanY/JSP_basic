<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../include/jquery-3.6.3.min.js"></script>
</head>
<body>
<form action="registerPro.jsp" method="post">
	<table>
		<tr>
			<td>아이디</td>
			<td><input name="id"> </td>
		</tr>
		<tr>
			<td>비번</td>
			<td><input name="passwd"> </td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input name="name"> </td>
		</tr>
		<tr>
			<td colspan="2" align="center">
			<input type="submit" value="확인"> </td>
		</tr>
	</table>
</form>

</body>
</html>