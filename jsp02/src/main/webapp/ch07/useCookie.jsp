<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>useCookie</title>
<script src="../include/jquery-3.6.3.min.js"></script>
</head>
<body>
<%
//클라이언트에 저장된 쿠키값은 배열로 받음
Cookie[] cookies= request.getCookies();
if(cookies != null){
	for(int i=0; i<cookies.length; i++){
		out.println("쿠키 이름 : "+cookies[i].getName());
		out.println(", 쿠키값 : "+cookies[i].getValue()+"<br>");
	}
	
}
%>
<hr>
<!-- EL 기법 -->
아이디 : ${cookie.id.value}<br>
비번 :  ${cookie.pwd.value}<br>
이름 :  ${cookie.name.value }<br>
나이 :  ${cookie.age.value }<br>

<a href="deleteCookie.jsp">쿠키 삭제</a>
<a href="editCookie.jsp">쿠키 변경</a>

</body>
</html>