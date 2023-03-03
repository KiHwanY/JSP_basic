<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List" %> <!--  페이지 import -->
    <%@ page import="memo.MemoDTO" %> <!--  페이지 import -->
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../include/jquery-3.6.3.min.js"></script>
</head>
<body>
<%

List<MemoDTO> items=(List<MemoDTO>)request.getAttribute("list"); // Object 

%>
<table border="1">
	<tr>
	<th>번호</th>
	<th>이름</th>
	<th>메모</th>
	<th>날짜</th>
	</tr>
	<% for(MemoDTO dto : items) { %>
	<tr>
	<td><%= dto.getIdx() %> </td>
	<td><%= dto.getWriter() %> </td>
	<td><%= dto.getMemo() %> </td>
	<td><%= dto.getMemo_date() %> </td>
	</tr>
	<% } %>

</table>
</body>
</html>