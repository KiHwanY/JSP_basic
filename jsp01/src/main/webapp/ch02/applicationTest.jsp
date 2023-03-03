<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>applicationTest</title>
<script src="../include/jquery-3.6.3.min.js"></script>
</head>
<body>
<%
//웹 저장 영역 4가지
// 1) pageContext (현재 페이지)
// 2) requrest (요청 + 응답 페이지)
// 3) session (사용자 단위 : 로그인 ~ 로그아웃)
// 4) application (서버단위) - 잘 안쓰임

String info= application.getServerInfo();
application.log("WAS 정보 : "+ info); // 콘솔창에 붉은색으로 출력
System.out.println("WAS 정보 : "+info); // 콘솔창에 검은색으로 출력

//개발 디렉토리 아닌 서비스 디렉토리(베포 경로)
String path = application.getRealPath("/");
application.log("서비스 경로 :  "+ path); //서버 부하가 있어서 출력은 자제, spring에선 로깅툴이 별도로 존재(서버부하를 낮춤)
System.out.println("서비스 경로 : "+path);

//application : 서버단위(모든 사용자가 공유하는 변수)
//setAttribute(변수명, 값)
application.setAttribute("message", "hello");


%>
<a href="application_result.jsp">서버 변수 확인</a>


</body>
</html>