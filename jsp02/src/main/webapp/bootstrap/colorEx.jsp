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
<h4>[텍스트 컬러 text-색깔]</h4>
<p>클래스 속성을 정하지 않은 일반 문자</p>
<p class="text-primary">클래스 속성을 text-primary로 적용한 문자 색상</p>
<p class="text-success">클래스 속성을 text-success로 적용한 문자 색상</p>
<p class="text-warning">클래스 속성을 text-warning로 적용한 문자 색상</p>
<p class="text-danger">클래스 속성을 text-danger로 적용한 문자 색상</p>
<hr>

<h4>[텍스트 선명도 text-opacity-값]</h4>
<div class="text-primary">This is default primary text</div>
<div class="text-primary text-opacity-75">This is 75% opacity primary text</div>
<div class="text-primary text-opacity-50">This is 50% opacity primary text</div>
<div class="text-primary text-opacity-25">This is 25% opacity primary text</div>
<hr>

<h4>[백그라운드 컬러 bg-색깔]</h4>
<p class="bg-primary">백그라운드 컬러 :bg-primary </p>
<p class="bg-success">백그라운드 컬러 :bg-success </p>
<p class="bg-warning">백그라운드 컬러 :bg-warning </p>
<p class="bg-danger">백그라운드 컬러 :bg-danger </p>
<p class="bg-dark text-white">백그라운드 컬러 :bg-dark </p>


</body>
</html>