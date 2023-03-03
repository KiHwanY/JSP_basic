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
System.out.println(request.getParameter("name"));

%>
<!-- 기존방식 -->
<%@ page import="ch05.TestBean" %>
<%
TestBean bean = new TestBean();
bean.setId(request.getParameter("id"));
bean.setPwd(request.getParameter("pwd"));
bean.setName(request.getParameter("name"));
%>
아이디 : <%= bean.getId() %>
비번 : <%= bean.getPwd() %>
이름 : <%= bean.getName() %>

<hr>


<!-- 액션태그 -->
<!-- id="참조변수명" class="클래스이름" id가 testBean인 클래스의 인스턴스가 생성되고
property="*" 에 값이 입력됨. setter가 호출됨.. 단, 태그의 property값과 클래스의 변수명이 일치해야함 -->
<jsp:useBean id="testBean" class="ch05.TestBean">
	<jsp:setProperty name = "testBean" property="*" />
</jsp:useBean>
아이디 : <jsp:getProperty property="id" name="testBean"/> <br>
비번 : <jsp:getProperty property="pwd" name="testBean"/> <br>
이름 : <jsp:getProperty property="name" name="testBean"/> <br>
<!-- getter가 호출됨 -->
<!-- property="클래스의 변수명" -->
</body>
</html>