<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.Map" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request_result</title>
<script src="../include/jquery-3.6.3.min.js"></script>
</head>
<body>
<%
Map<String, Object> map = (Map<String, Object>)request.getAttribute("map");


%>
이름 : <%= map.get("name") %> <br>
나이 : <%= map.get("age") %> <br>
성별 : <%= map.get("gender") %> <br>
취미 : <%= map.get("hobby") %> <br>
<hr>
<!-- EL(Expression Language , 표현언어), 자바코드를 약간 줄일 수 있다. -->
이름 : ${map.name} <br>
나이 : ${map.age}<br>
성별 : ${map.gender} <br>
취미 : ${map.hobby} <br>

</body>
</html>