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

<h2>Java 코드</h2>
<%-- <%@ page import="java.util.Enumeration" %>
<%
//getHeaderNames()는 일반 for문으로 못돌리기 때문에 Enumeration과 while문으로 씀
Enumeration<String> headerNames=request.getHeaderNames();
while(headerNames.hasMoreElements()){//다음 요소가 있으면
	String key=(String)headerNames.nextElement();//다음 값을 읽음
	String value=request.getHeader(key);//헤더값 조회
	out.println(key+" : "+value+"<br>");
}  --%>

<h2>JSTL 코드</h2>
<!-- ${header} => request.getHeaderName()과 같음, 헤더 정보 -->
<c:forEach var="h" items="${header}">
 ${h.key} => ${h.value}<br>
</c:forEach>
<!-- user-agent : 클라이언트의 웹브라우저 및 운영체제 정보 -->
<c:set var="browser" value="${header['user-agent']}" scope="page" />
JSTL출력 : <c:out value="${browser}" /> <!-- out.println(값) -->
EL출력 : ${browser}

<hr>
지운이후 : 
<c:remove var="browser"/> <!-- removeAttribute() 대체 -->
<c:out value="${browser}" />






</body>
</html>