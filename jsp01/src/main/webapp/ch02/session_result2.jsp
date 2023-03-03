<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session_result2</title>
<script src="../include/jquery-3.6.3.min.js"></script>
</head>
<body>
[session으로 넘어온 값] <br>
이름 : <%= session.getAttribute("name") %> <br>
나이 : <%= session.getAttribute("age") %> <br>
<hr>
[request으로 넘어온 값] <br>
이름 : <%= request.getAttribute("name") %> <br>
나이 : <%= request.getAttribute("age") %> <br>

</body>
</html>