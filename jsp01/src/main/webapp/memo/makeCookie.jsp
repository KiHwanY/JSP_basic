<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>makeCookie</title>
<script src="../include/jquery-3.6.3.min.js"></script>
</head>
<body>
<%@ page import="java.net.URLEncoder" %>
<%
//new Cookie("쿠키변수","값"); String 타입만 가능
Cookie cookie = new Cookie("id","kim");
Cookie cookie2 = new Cookie("pwd","1234");
Cookie cookie3 = new Cookie("name","김철수");
Cookie cookie4 = new Cookie("age","20");


response.addCookie(cookie); //응답해더에 쿠키 추가
response.addCookie(cookie2);
response.addCookie(cookie3);
response.addCookie(cookie4);
%>
쿠키가 생성되었습니다. <br>
<a href="useCookie.jsp">쿠키 확인</a>

<!-- 만약 쿠키를 사용하지 않는다면 아래 쿼리스트링으로 값을 보내야 한다. -->
<!-- <a href="useCookie.jsp?id=kim&pwd=1234&name=김철수&age=20">쿠키 확인</a> -->
</body>
</html>