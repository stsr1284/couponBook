<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="../../css/loginPage/clientSignUpPageStyle.css">
</head>
<body>
	<h1> 쿠폰북 </h1>
    <div class="signUpForm">
        <form action="clientInsert.do" method = "POST">
            <div class="inputArea">
				<input type ="text" name ="clientId" autocomplete="off" required>
                <label for ="clientId"> 아이디</label>
            </div >
            <div class="inputArea">
				<input type="password" name="clientPass" autocomplete="off" required >
                <label for="clientPass">비밀번호</label>
            </div>
            <div class="inputArea">
				<input type="password" name="clientPassCheck" autocomplete="off" required >
                <label for="clientPassCheck">비밀번호 확인</label>
            </div>
			<div class="inputArea">
				<input type="text" name="clientNick" autocomplete="off" required >
				<label for="clientNick">닉네임</label>
			</div>
            <div class="inputArea">
				<input type="text" name="clientPhone" autocomplete="off" required >
                <label for="clientPhone">전화번호</label>
            </div>
            <div class="btnArea">
				<button type="submit">회원가입</button>
				<a href="">돌아가기</a>
            </div>
        </form>
    </div>

    
</body>