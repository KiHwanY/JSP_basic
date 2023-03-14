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
<%-- <c:redirect url="ex04.jsp?start=5&end=9"></c:redirect> --%>

<c:redirect url="ex04.jsp">
 <c:param name="start" value="2" />
 <c:param name="end" value="5" />
</c:redirect>

<%-- <%
response.sendRedirect("ex04.jsp?start=5&end=9");
%> --%>

</body>
</html>