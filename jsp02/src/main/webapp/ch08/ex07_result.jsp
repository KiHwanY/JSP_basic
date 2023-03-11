<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex07_result</title>
<script src="../include/jquery-3.6.3.min.js"></script>
<%@ include file="../include/header.jsp" %>
</head>
<body>
<%-- <%@ page import="member.MemberDTO" %>

<%
MemberDTO dto =(MemberDTO)request.getAttribute("dto");
if(dto != null){
	out.println("이름 :"+dto.getName()+"<br>");
	out.println("아이디 :"+dto.getUserid()+"<br>");
	out.println("이름 :"+dto.getPasswd()+"<br>");
}else {
	out.println("출력할 값이 없습니다.");
	
}
%> --%>

이름 : ${dto.name }<br> <!-- 내부적으로 dto.getName() 호출 -->
아이디 : ${dto.userid } <br>
비밀번호 : ${dto.passwd } <br>



</body>
</html>