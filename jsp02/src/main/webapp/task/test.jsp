<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>
</head>
<body>
<fieldset>
		<ul>
			<li>
				<label for="id">ID</label><br>
				<input type="text" name="id" id="id">&nbsp;&nbsp;&nbsp;&nbsp;
				<span id="idCheck"><img src="../joinimg/idcheck.png" alt="idCheckImg" id="idCheckImg"  width="100" height="30"></span>
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
			<li>
			</li>
			</ul>
			</fieldset>
</body>
</html>