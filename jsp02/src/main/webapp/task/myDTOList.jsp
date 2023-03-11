<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="member.MemberDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../include/jquery-3.6.3.min.js"></script>
<%@ include file="../include/header.jsp" %>
</head>
<body>
<%
MemberDTO dto = new MemberDTO();
dto.setUserid("kim");
dto.setName("김철수");
dto.setPasswd("1234");
dto.setEmail("kim@gmail.com");
dto.setHp("010-1234-5678");
%>
<c:set var ="dto" value="<%= dto %>" scope="request" />
<jsp:forward page="myDTO_result.jsp"></jsp:forward>



</body>
</html>