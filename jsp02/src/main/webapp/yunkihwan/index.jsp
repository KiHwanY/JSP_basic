<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>

<style type="text/css">
.error{color : red; display: none;}
li {list-style-type: none; margin-bottom: 10px;}
</style>
</head>
<body>
<form id="join" action="join.jsp" method="post">
	
	
	
	<input type="hidden" id="idCheckResult" value="0">
	<fieldset>
	<legend>회원 가입 양식</legend>
		<ul>
			<li>
				<label for="id">ID</label><br>
				<input type="text" name="id" id="id">&nbsp;&nbsp;&nbsp;&nbsp;
				<span id="idCheck"><input type="button" value="중복 확인" id="idCheckImg"></span>
				<div id="idMsg" class="error">아이디를 입력해 주세요.</div>
				<div id="idRegMsg" class="error">아이디는 영문자로 시작되는 영어 소문자,숫자의 4~16범위의 문자로만 작성 가능합니다.</div>
				<div id="idCheckMsg" class="error">아이디 중복 검사를 반드시 실행해 주세요.</div>
			</li>
			<li>
				<label for="pw">PASSWORD</label><br>
				<input type="password" name="pw" id="pw">
				<div id="pwMsg" class="error">비밀번호를 입력해 주세요.</div>
				<div id="pwRegMsg" class="error">비밀번호는 영문자,숫자,특수문자의 조합으로 된 10~16 범위의 문자로만 작성 가능합니다.</div>
			</li>
			<li>
				<label for="pw">PASSWORD CHECK</label><br>
				<input type="password" name="repw" id="repw">
				<div id="repwMsg" class="error">비밀번호 확인을 입력해 주세요.</div>
				<div id="repwMatchMsg" class="error">비밀번호와 비밀번호 확인이 서로 맞지 않습니다.</div>
			</li>
	
		</ul>
	</fieldset>
	<div style="margin-top: 15px;">
		<button type="submit">회원 가입</button>
		<button type="reset">초기화</button>
	</div>
</form>
	<input type='radio'
		       		name='area' 
		      		value='서울' />서울
			<input type='radio' 
		       		name='area' 
		     	  	value='부산' />부산
		    <input type='radio'
		       		name='area' 
		      		 value='대구' />대구
		    <button onclick='getArea()'>확인</button>
			<div id='result'></div>
<script type="text/javascript">
$("#id").focus();

$("#join").submit(function() {
	var submitResult=true;
	
	$(".error").css("display","none");

	var idReg=/^[a-z]\w{3,15}$/g;
	if($("#id").val()=="") {
		$("#idMsg").css("display","block");
		submitResult=false;
	} else if(!idReg.test($("#id").val())) {
		$("#idRegMsg").css("display","block");
		submitResult=false;
	} else if($("#idCheckResult").val()=="0") {//아이디 중복 검사를 실행하지 않은 경우
		$("#idCheckMsg").css("display","block");
		submitResult=false;
	}
		
	var pwReg=/^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[~!@#$%^&*_-]).{9,15}$/g;
	if($("#pw").val()=="") {
		$("#pwMsg").css("display","block");
		submitResult=false;
	} else if(!pwReg.test($("#pw").val())) {
		$("#pwRegMsg").css("display","block");
		submitResult=false;
	} 
	
	if($("#repw").val()=="") {
		$("#repwMsg").css("display","block");
		submitResult=false;
	} else if($("#pw").val()!=$("#repw").val()) {
		$("#repwMatchMsg").css("display","block");
		submitResult=false;
	}
	
	return submitResult;
});
function getArea() {
	const genderNodeList
	  = document.getElementsByName('area');
	  
	  genderNodeList.forEach((node) => {
	    if(node.checked)  {
	      document.getElementById('result').innerText
	        = node.value;
	    }
	  }) 
	}

$("#idCheck").click(function() {
	//아이디 관련 에러메세지가 보여지지 않도록 설정	
	$("#idMsg").css("display","none");
	$("#idRegMsg").css("display","none");
	
	var idReg=/^[a-z]\w{3,15}$/g;
	if($("#id").val()=="") {
		$("#idMsg").css("display","block");
		return;
	} else if(!idReg.test($("#id").val())) {
		$("#idRegMsg").css("display","block");
		return;
	}
	
	
	window.open("${path}/join_servlet/dbCheckId.do?id="+$("#id").val()
			,"idcheck","width=450,height=130,left=700,top=400");
});

//입력태그(아이디)의 입력값이 변경된 경우 호출될 이벤트 처리 함수 등록
$("#id").change(function() {
	//입력태그(검사결과)의 입력값 변경 - 아이디 중복 검사 미실행으로 설정
	$("#idCheckResult").val("0");
});

		
</script>
</body>
</html>