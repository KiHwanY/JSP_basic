<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>popup</title>
<script src="../include/jquery-3.6.3.min.js"></script>
<script type="text/javascript">
function setCookie(cname, cvalue, days) {
	var d= new Date();
	//만료 시간 설정
	d.setTime(d.getTime()+(days * 24 * 60 * 60 * 1000)); //초로 설정
	var expires = "expires="+ d.toGMTString; //쿠키 유효시간 값
	document.cookie = cname + "=" + cvalue+ ";" +expires;
	window.close(); //현재 창 닫기
}
$(function() {
	$("#nopopup").click(function() {
		var now = new Date();
		var val = "";
		if(this.cheked == true){ //체크 상태면
			val = "N"; //7일간 팝업 안함		
		}else{
			val ="Y"
		}	
		setCookie("showCookies", val, 7);
	});
})
</script>
</head>
<body>
 <input type="checkbox" id="nopopup"> 7일간 보이지 않기
 
</body>
</html>