<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sessionTestForm</title>
<script src="../include/jquery-3.6.3.min.js"></script>
</head>
<body>

 <%
 String context= request.getContextPath();
 
 %>
 <form method="post" action="<%= context %>/ch02_servlet/Login.do">
 아이디 : <input name="userid"> <br>
 비밀번호 : <input type="password" name ="passwd"> <br>
 <input type="submit" value="로그인">
 </form>
 <!-- 로그인 실패, 메시지를 출력 -->
 <%
 String message = request.getParameter("message");
 if(message != null){
	 %>	 
	 <span style="color : red;"><%= message %></span>
 <%
 }
 %>
 
</body>
</html>
<!-- 프로그램 흐름 (총 6개 파일 사용)
sessionTestForm.jsp (로그인 폼)
session_success.jsp (로그아웃 버튼)
session_check.jsp (세션 체크)

모든 요청은 항상 Controller에서 보낸다.
LoginController.java (Controller)
= > MemberDAO.java (Model)
	MemberDTO.java
	
= > session_success.jsp (View) 성공시
만약 실패시 sessionTestForm.jsp로 다시 돌아감	
 -->