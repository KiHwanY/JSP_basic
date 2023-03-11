<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../include/jquery-3.6.3.min.js"></script>
<%@ include file="../include/header.jsp" %>
</head>
<body>
<%@ page import="java.util.HashMap" %>

<h2>java 코드로 출력</h2>
<%
HashMap<String,String> map=(HashMap<String,String>)request.getAttribute("map");
for(String f : map.keySet()){ //keyset()은 key들을 배열로 만들어 가져옴
	out.println(f+":"+ map.get(f) + "<br>"); //map.get("변수명"), map.set("변수명",값)
}

%>

<hr>

<h2>EL/JSTL 출력</h2>
${map["포도"]} <br>
${map["오렌지"]} <br>
${map["바나나"]} <br>
${map["사과"]} <br>
</body>
</html>