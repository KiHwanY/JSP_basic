<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cookie_login</title>
<script src="../include/jquery-3.6.3.min.js"></script>
<script type="text/javascript">
//저장된 쿠키를 검사
function getCookie(cname) {
	console.log(cname);
	var cookie = document.cookie +";";
	console.log(cookie);
	var idx= cookie.indexOf(cname,0);
	console.log(idx);
	var val="";
	if(idx != -1){
		console.log(idx + ", "+ cookie.length);
		//showCookies=값; userid=이름; 을 subString 으로 발췌함
		cookie = cookie.subString(idx, cookie.length);
		begin = cookie.indexOf("=" , 0) + 1;
		end = cookie.indexOf(";", begin);
		console.log(begin + ","+ end);	
		//subString(start, end) start ~ end-1
		val = cookie.subString(begin , end);
		
	}
	return val;
}
function setCookie(name, value, days) {
	var today = new Date();
	//쿠키 유효시간 설정
	today.setDate(today.getDate() + days);
	// 쿠키 변수명 = 쿠키값;path=저장경로;expires=쿠키유효기간
	document.cookie= name+"="+value+";path=/jsp02;expires="+ today.toGMTString() +";";
}
function saveCookie(id) {
	if(id != ""){
		setCookie("userid" , id, 7); //7일
		
	}else {
		setCookie("userid", id, -1); //삭제
	}
}

$(function() {
	var show = getCookie("showCookies");
	if(show != "N"){
		window.open("popup.jsp","","width=300, height=400");
		
	}
	//저장된 쿠키 조회
	var cookie_userid = getCookie("userid");
	//저장된 쿠키가 있으면
	if(cookie_userid != ""){
		//userid 태그에 쿠키값을 입력
		$("#userid").val(cookie_userid);
		//html방식으로 체크박스에 체크상태로 설정
		$("#chkSave").attr("checked","checked");
	}
	
	//로그인 버튼 클릭 
	$("#btnLogin").click(function() {
		if($("#chkSave").is(":checked")){ //check
			saveCookie($("#userid").val());
		}else{//uncheck
			saveCookie("");
		}
		alert("로그인 처리 되었습니다.");
	});
	
	//쿠키 삭제 버튼 클릭
	$("#btnDelete").click(function() {
		location.href="deleteCookie.jsp";
	});
	
	//아이디 저장 클릭
	$("#chkSave").click(function() {
		if($("#chkSave").is(":checked")){ //체크박스에 체크가 되어있#다면
			if(!confirm("로그인 정보를 저장하시겠습니까?")){
				$("#chkSave").prop("checked",true); // 자바스크립트방식으로 체크박스에 체크상태로 기억
			}
		}
	});
	
});
</script>
</head>
<body>
<form method="post" name="form1">
	<table border="1">
		<tr>
		<td>아이디</td>
		<td>
			<input name="userid" id="userid">
			<input type="checkbox" id="chkSave">아이디 저장
		</td>
		</tr>
		<tr>
		<td>비밀번호</td>
		<td>
		<input type="password" name="passwd">
		</td>
		</tr>
		<tr>
		<td colspan="2" align="center">
		<input type="button" value="로그인" id="btnLogin">
		<input type="button" value="쿠키삭제" id="btnDelete">
		</td>
		</tr>
	</table>
</form>


</body>
</html> 