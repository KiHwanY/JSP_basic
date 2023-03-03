<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
<script src="../include/jquery-3.6.3.min.js"></script>
</head>
<body>
<!-- forward 방식 : 주소는 그대로 , 화면만 이동 -->
<jsp:forward page="template.jsp">
	<jsp:param value="content.jsp" name="CONTENTPAGE"/>
</jsp:forward>

</body>
</html>