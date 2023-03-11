<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page import="java.util.ArrayList" %>
    
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
ArrayList<String> arr = new ArrayList<>();
arr.add("아이디 : "+"kim");
arr.add("이름 : "+"김철수");
arr.add("비번 : "+"1234");
arr.add("이메일 : "+"kim@gmail.com");
arr.add("전화 : "+"010-1234-5678");

request.setAttribute("arr", arr);

%>
<jsp:forward page="myList_result.jsp"></jsp:forward>


</body>
</html>