<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>responseRedirected</title>
<script src="../include/jquery-3.6.3.min.js"></script>
</head>
<body>
<h2>이동된 페이지</h2>
<%
String name = request.getParameter("name");
String age= request.getParameter("age");//파라미터 변수로 넘어오는 값들은 모두 String이다.
%>
이름 : <%= name %> <br>
나이 : <%= age %> <br>
<hr>
<!-- 한줄에 처리 -->
이름 : <%= request.getParameter("name") %> <br>
나이 : <%=  request.getParameter("age") %> <br>
<hr>
<!-- EL방식 -->
이름 : ${param.name}<br>
나이 : ${param.age} <br>
</body>
</html>