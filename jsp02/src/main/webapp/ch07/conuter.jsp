<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.Date" %>
    <%@ page import="common.Util" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>counter</title>
<script src="../include/jquery-3.6.3.min.js"></script>
</head>
<body>
<%
String count = Util.getCookie(request.getCookies(), "count");
int intCount=0;

//방문시간 저장
Date date= new Date(); //날짜 객체 생성
long now_time= date.getTime();//현재 시각(1970년 1월 1일부터 ~ 현재까지의 초)

String visitTime = Util.getCookie(request.getCookies(), "visit_time");
out.println(visitTime+"<br>"); //리턴받은 방문시각값을 출력
out.println(visitTime.getClass().getSimpleName()+"<br>"); //visitTime의 데이터 타입을 확인

long visit_time=0; //return 받은 방문시각을 계산할 수 있는 변수로 준비

		//방문시각(visitTime)이 null 아니고 빈문자열이 아니면, 즉, 값이 있으면
		if(visitTime != null && !visitTime.equals("")){
		visit_time = Long.parseLong(visitTime); //계산을 위해 String을 Long으로 변환처리
		
			
		}
out.print("현재시각 : "+ now_time +"<br>");
out.print("방문시각 ㅣ "+ visit_time+"<br>");



if(count == null || count.equals("")){ //첫방문일 경우
	//쿠키 변수 생성
	response.addCookie(new Cookie("count","1"));
	// 첫 방문시간 저장
	response.addCookie(new Cookie("visit_time", Long.toString(now_time)));
}else { //재방문일 경우
	
	//방문시간 변경
	long period = now_time - visit_time; //방문시간 = 현재시각 - 방문시각
	intCount = Integer.parseInt(count)+1;
	
	if(period > 3*1000){ //일정시간(3초)이 경과하면 카운터 수정
	
		//카운터 값 변경("스트링","스트링")
		response.addCookie(new Cookie("count" , Integer.toString(intCount)));
		//방문시간 업데이트
		response.addCookie(new Cookie("visit_time", Long.toString(now_time)));
	}
}
String counter=Integer.toString(intCount);

//문자열.charAt(인덱스) 문자열 n번째 문자 리턴
//ex) 12라는 두자리 카운터숫자를 이미지로 표현하고자 한다면..
out.println("첫번째(인덱스 0) 숫자 : "+count.charAt(0));
String img="<img src='../images/"+count.charAt(0)+".gif'>";
out.println(img);
out.println("<br>");
for(int i=0;i<counter.length(); i++){
	String img3="<img src='../images/"+count.charAt(i)+".gif'>";
	out.println(img3);
}

%>

<%-- 방문 횟수 : <%= intCount %> --%>
</body>
</html>