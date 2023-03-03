<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../include/jquery-3.6.3.min.js"></script>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
String name = "홍길동";
String pageName = "includeParamTest.jsp";
%>
<%= name %> <br>
<%= pageName %>
<hr>
포함하는 페이지의 파라미터값이 다시 아래에 출력됩니다.
<!-- includedParamTest.jsp 페이지 출력 -->
<jsp:include page="<%=pageName %>">
<jsp:param value="<%=name %>" name="nVar"/>
<jsp:param value="<%=pageName %>" name="pVar"/>
</jsp:include>
</body>
</html>