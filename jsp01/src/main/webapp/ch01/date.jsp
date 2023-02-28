<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.Date" %>
    <%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>date</title>
</head>
<body>
<%
Date nowDate = new Date(); // 날짜 객체
out.println(nowDate+"<br>"); //화면 출력
System.out.println(nowDate);//톰캣의 console에 출력

//HH 24시간, hh 12시간, a 오전/오후
SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy년 MM월 dd일 a HH:mm:ss");
String formatDate = dateFormat.format(nowDate);
%>
<!-- 표현식 -->
현재 날짜는 <%= formatDate %> 입니다. <br>

<!-- 스크립틀릿 -->
현재 날짜는 <% out.println(formatDate); %>입니다.

</body>
</html>