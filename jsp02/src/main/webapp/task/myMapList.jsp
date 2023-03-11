<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../include/jquery-3.6.3.min.js"></script>
<%@ include file="../include/header.jsp" %>
</head>
<body>
<%
HashMap<String,String> map = new HashMap<>();
map.put("id", "kim");
map.put("name", "김철수");
map.put("pw", "1234");
map.put("email", "kim@gmail.com");
map.put("hp", "010-1234-5678");

request.setAttribute("map", map);

%>
<jsp:forward page="myMap_result.jsp"></jsp:forward>

</body>
</html>