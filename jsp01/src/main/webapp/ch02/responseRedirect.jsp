<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.net.URLEncoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>responseRedirect</title>
<script src="../include/jquery-3.6.3.min.js"></script>
</head>
<body>
<%
request.setAttribute("name", "김철수");
//한글,특수문자를 넘기고 싶을 땐 아래 encode함수를 사용할 수 있다.
String name = URLEncoder.encode("김철수", "utf-8");

//forward방식과는 달리 response.sendRedirect(url)은 get방식으로 페이지 이동한다.
//get방식, queryString방식 : url?변수=값&변수=값....
response.sendRedirect("responseRedirected.jsp?name="+name+"&age=20");
%>
</body>
</html>