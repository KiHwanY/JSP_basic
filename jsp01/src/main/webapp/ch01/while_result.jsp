<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>while_result</title>
</head>
<body>
<%
// request.setAttribute 로 전달된 값은 request.getAttribute 로 받는다.
//중요 : ** 들어오는 데이터 타입은 Object 타입이기 때문에 받는 타입으로 반드시 형변환처리 해줘야한다.
int result = (int)request.getAttribute("result");
out.print("결과 : "+ result);
%>



</body>
</html>