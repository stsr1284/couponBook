<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="../resources/static/css/loginPage/loginPageStyle.css">
</head>
<body>
	<h1> 쿠폰북 </h1>
    <div class="signinForm">
        <form action="" method = "POST">
            <div class="int-area">
                <input type ="text" name ="userId" autocomplete="off" required>
                <label for ="userId"> 아이디</label>
            </div >
            <div class="int-area">
                <input type="password" name="userPass" autocomplete="off" required >
                <label for="userPass">비밀번호</label>
            </div>
            <div class="memberinfo_radio">
              
                <span>
                    <input type="radio" id="owner" name="authority"value=1>
                    <label for="owner" style="font-size: 18px; color: #1a1919;">점장님</label>
                </span>
                
                <span>
                    <input type="radio" id="client" name="authority"value=0>
                    <label for="client" style="font-size: 18px; color: #1a1919;">손님</label>
                </span>
            </div>
            <div class="btn-area">
				<button type="submit">로그인</button>
				<a href="ownerSignUpPage.do"> 점장 회원가입</a>
				<a href=""> 손님 회원가입</a>
            </div>
        </form>
    </div>

    
</body>