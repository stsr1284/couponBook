<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="../resources/static/css/loginPage/ownerSignUpPageStyle.css">
</head>
<body>
	<h1> 쿠폰북 </h1>
    <div class="signUpForm">
        <form action="ownerInsert.do" method = "POST">
			<div>
				<div class="inputArea">
					<input type ="text" name ="ownerId" autocomplete="off" required>
					<label for ="ownerId"> 아이디</label>
				</div >
				<div class="inputArea">
					<input type="password" name="ownerPass" autocomplete="off" required >
					<label for="ownerPass">비밀번호</label>
				</div>
				<div class="inputArea">
					<input type="password" name="ownerPassCheck" autocomplete="off" required >
					<label for="ownerPassCheck">비밀번호 확인</label>
				</div>
				<div class="inputArea">
					<input type="text" name="ownerName" autocomplete="off" required >
					<label for="ownerName">이름</label>
				</div>
				<div class="inputArea">
					<input type="text" name="ownerPhone" autocomplete="off" required >
					<label for="ownerPhone">전화번호</label>
				</div>
			</div>  
			<div>
				<div class="inputArea">
					<input type ="text" name ="storeName" autocomplete="off" required>
					<label for ="storeName"> 업체명</label>
				</div >
				<div class="inputArea">
					<input type="text" name="storePlaceName" autocomplete="off" required >
					<label for="storePlaceName">지점명</label>
				</div>
				<div class="inputArea">
					<input type="text" name="storeId" autocomplete="off" required >
					<label for="storeId">사업자번호</label>
				</div>
				<div class="inputArea">
					<input type="text" name="storeNumber" autocomplete="off" required >
					<label for="storeNumber">업체 전화번호</label>
				</div>
				<div class="inputArea">
					<input type="text" name="storeAddress" autocomplete="off" required >
					<label for="storeAddress">가게 주소</label>
				</div>
			</div>
			<div class="btnArea">
				<button type="submit">회원가입</button>
				<a href="">돌아가기</a>
			</div>
        </form>
    </div>

    
</body>