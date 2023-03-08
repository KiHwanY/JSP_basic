<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>viewSession</title>
<script src="../include/jquery-3.6.3.min.js"></script>
</head>
<body>
<%
//Enumeration을 사용해 세션의 key set을 가져옴
Enumeration<String> attr = session.getAttributeNames();
while(attr.hasMoreElements()){ // 다음 요소가 있으면
	String key = attr.nextElement(); //다음 요소를 읽음
	Object value = session.getAttribute(key);//return  type이 Object
	out.print("변수명 : "+ key);
	out.print(", 값 : "+ value+"<br>");
}
String id=(String)session.getAttribute("id");
int age=0;
// 숫자는 NullPointerException이 잘 나오기 때문에 아래처럼 if문 처리가 좋다/
if(session.getAttribute("age") != null){
	age=(int)session.getAttribute("age");
}
double height = 0;
if(session.getAttribute("height") != null){
	height=(double)session.getAttribute("height");
}
%>
아이디 : <%= session.getAttribute("id") %> <br>
나이 :  <%= age %>
키 : <%= height %> <br>

<hr>
아이디 : ${sessionScope.id } <br>
<a href="deleteSession.jsp">세션 삭제</a>


</body>
</html>