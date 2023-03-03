<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>requestTest2</title>
<script src="../include/jquery-3.6.3.min.js"></script>
</head>
<body>
<h2>request 객체의 method</h2>
<%
String[] names={"프로토콜","서버이름","전송방식","컨텍스트","uri","url"};
// url : http://localhost/jsp01/ch02/requestTestForm1.jsp
// uri : jsp01/ch02/requestTestForm1.jsp
String[] values = {
		request.getProtocol(),request.getServerName(),request.getMethod(),
		request.getContextPath(),request.getRequestURI(),
		request.getRequestURL().toString() // url은 toString 까지 써야한다.
		
};
//uri는 타입이 스트링이지만, url은 타입이 스트링버퍼로 되어있어서 toString()으로 한번 더
//바꿔줘야 한다.
for(int i =0; i<names.length; i++){
	out.println(names[i]+":"+values[i]+"<br>");
}
//requset 해더 변수들을 Enumeration에 저장(집합처리 객체)
Enumeration<String> en=request.getHeaderNames();
String headerName ="";
String headerValue="";
out.println("<h2>헤더 정보</h2>");
while(en.hasMoreElements()){ // 다음 요소가 있으면
	headerName = en.nextElement(); //다음 요소 조회
	headerValue = request.getHeader(headerName);
	out.println(headerName+":"+headerValue+"<br>");
}
%>
</body>
</html>