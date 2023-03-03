<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session</title>
<script src="../include/jquery-3.6.3.min.js"></script>
</head>
<body>
<%
// pageContext(현재페이지) < request(요청+응답) < session(사용자 단위 : 로그인 ~ 로그아웃) < application(서버단위)
//session 영역에 변수 저장 
session.setAttribute("name", "김철수");
session.setAttribute("age", 20);

//requset 영역에 변수 저장
request.setAttribute("name", "홍길동");
request.setAttribute("age", 25);

//redirect방식(get방식), 페이지이동 시(주소가 바뀜, 데이터 손실)
//response.sendRedirect("session_result.jsp");
// forward방식(post방식), 페이지이동 시(주소는 바뀌지 않음, 데이터 유지)
RequestDispatcher rd = request.getRequestDispatcher("session_result.jsp");
rd.forward(request, response);
%>
<!-- jsp 액션태그를 사용한 forward기법(간편) -->
<%-- <jsp:forward page="session_result.jsp"></jsp:forward>
 --%>


</body>
</html>