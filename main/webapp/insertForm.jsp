<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>사용자 입력</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	
</head>
<body>
	<div class="container">
		<br>
		<h2 class="text-center font-weight-bold">사용자 입력</h2>
		<hr/>
		<form action="insertPro.jsp" method="post">
			<div class="form-group">
				<label for="id">아이디:</label>
				<input type="text" class="form-control" id="id" name="id">
			</div>
			<div class="form-group">
				<label for="email">이메일:</label>
				<input type="text" class="form-control" id="email" name="email">
			</div>
			<div class="form-group">
				<label for="password">비밀번호:</label>
				<input type="password" class="form-control" id="password" name="password">
			</div>
			<div class="form-group">
				<label for="passwordCheck">비밀번호 확인:</label>
				<input type="password" class="form-control" id="passwordCheck" name="passwordCheck">
			</div>
			<div class="form-group">
				<label for="name">이름:</label>
				<input type="text" class="form-control" id="name" name="name">
			</div>
			<div class="form-group">
				<label for="date">생년월일:</label>
				<input type="text" class="form-control" id="dateOfBirth" name="dateOfBirth" placeholder="yyyy-mm-dd">
			</div>
			<div class="form-group">
				<label for="address">주소:</label>
				<input type="text" class="form-control" id="address" name="address">
			</div>
			<div class="form-group">
				<label for="detailedAddress">상세주소:</label>
				<input type="text" class="form-control" id="detailedAddress" name="detailedAddress">
			</div>
			<div class="form-group">
				<label for="phoneNumber">전화번호:</label>
				<input type="text" class="form-control" id="phoneNumber" name="phoneNumber" placeholder="010-xxxx-xxxx">
			</div>
			<br>
			<div class="text-center">
				<button  type="submit" class="btn btn-secondary">등록</button>
			</div>
		</form>
	</div>
</body>
</html>


