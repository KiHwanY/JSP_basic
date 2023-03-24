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
<h2>1) form-control</h2>
<div class="mb-3">
<label for="formEmail" class="form-Label">Email address</label>
	<input type="email" class="form-control" id="formEmail" placeholder="name@lexample.com">

</div>
<div class="mb-3">
	<label for="formTextarea" class="form-Label">Example textarea</label>
	<textarea class="form-control" for="formTextarea"  rows="3"></textarea>
</div>
<hr>
<h2>2) Sizing</h2>
<h4>a) form-control Sizing</h4>
<input class="form-control form-control-lg" type="text" placeholder=".form-control-lg" aria-label=".form-control-lg example">
<input class="form-control form-control-sm" type="text" placeholder=".form-control-sm" aria-label=".form-control-sm example">
<h4>b) form-label Sizing</h4>
<div class="row mb-3">
	<label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm">Email</label>
	<div class="col-sm-10">
		<input type="email" class="form-control form-control-sm" id="colFormLabel" placeholder="col-form-label-sm">
	</div>
</div>
<div class="row mb-3">
	<label for="colFormLabel" class="col-sm-2 col-form-label">Email</label>
	<div class="col-sm-10">
		<input type="email" class="form-control form-control" id="colFormLabel" placeholder="col-form-label">
	</div>
	<div class="row">
	<label for="colFormLabellg" class="col-sm-2 col-form-label col-form-label-lg">Email</label>
	<div class="col-sm-10">
		<input type="email" class="form-control form-control-lg" id="colFormLabellg" placeholder="col-form-label-lg">
	</div>
</div>
</div>
<hr>

<h2>3) Disabled</h2>
<input class="form-control" type="text" placeholder="Disabled input" aria-label="Disabled input example" disabled>
<input class="form-control" type="text" placeholder="Disabled reddonly input" aria-label="Disabled input example" disabled readonly>
</body>
</html>