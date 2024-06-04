<!-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- <link rel="stylesheet" href="../resources/static/css/loginPage/clientSignUpPageStyle.css"> -->
	<link rel="stylesheet" href="../../css/loginPage/clientSignUpPageStyle.css">
</head>
<body>
    <div class="signUpPageWrapper">
        <div class="signUpPageContainer">
            <h1> 손님 회원가입 </h1>
            <div class="signUpFormWrapper">
                <form class="signUpForm" action="clientInsert.do" method = "POST">
                    <div class="formInput">
                        <input type ="text" name ="clientId" autocomplete="off" required placeholder="아이디">
                    </div >
                    <div class="formInput">
                        <input type="password" name="clientPass" autocomplete="off" required placeholder="비밀번호">
                    </div>
                    <div class="formInput">
                        <input type="password" name="clientPassCheck" autocomplete="off" required placeholder="비밀번호 확인">
                    </div>
                    <div class="formInput">
                        <input type="text" name="clientNick" autocomplete="off" required placeholder="닉네임">
                    </div>
                    <div class="formInput">
                        <input type="text" name="clientPhone" autocomplete="off" required placeholder="전화번호">
                    </div>
                    <div class="formBtn">
                        <button class="signUpBtn" type="submit">회원가입</button>
                        <a class="backBtn" href="">돌아가기</a>
                    </div>
                </form>
            </div>
        </div>
    </div>

    
</body>