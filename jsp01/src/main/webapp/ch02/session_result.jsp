<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session_result</title>
<script src="../include/jquery-3.6.3.min.js"></script>
</head>
<body>
<%
String name = (String)session.getAttribute("name");
int age = (int)session.getAttribute("age");
%>
[세션에 저장한 형태로 넘어온 데이터]  <br>
이름 : <%= name %> , 나이 : <%= age %> <br>
<!-- 세션아이디가 자동 발급되는데 이는 웹브라우저마다 틀리게 발급된다. -->
<hr>
<%
String name2 = (String)request.getAttribute("name");
int age2 = (int)request.getAttribute("age");
%>
[request에 저장한 형태로 넘어온 데이터]  <br>
이름 : <%= name2 %> , 나이 : <%= age2 %> <br>

<a href="session_result2.jsp">페이지가 바뀔 때 세션과 request값 확인</a>


</body>
</html>