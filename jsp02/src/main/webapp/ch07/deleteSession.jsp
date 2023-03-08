<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>deleteSession</title>
<script src="../include/jquery-3.6.3.min.js"></script>
</head>
<body>
<%

//session.removeAttribute("id"); // 개별적 삭제

//모든 세션 변수가 삭제되고 다시 세션에 값이 입력되면 JSSSIONID가 변경됨
session.invalidate(); //세션을 초기화 // 전체삭제
%>
세션이 삭제되었습니다. <br>
<a href="viewSession.jsp">세션 확인</a>
</body>
</html>