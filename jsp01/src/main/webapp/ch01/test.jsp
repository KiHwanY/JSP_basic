<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% // jsp code 영역
String str="hello jsp";
out.print(str+"<br>");
// jsp의 실제 서비스 경로
out.println(application.getRealPath("/"));
%>
<!-- 서블릿의 청보 출력
서블릿 : 서버에서 실행되는 자바 프로그램
jsp : 웹페이지는 내부적으로 servlet으로 변환되어 실행됨
 -->

<%= getServletInfo() %>



</body>
</html>