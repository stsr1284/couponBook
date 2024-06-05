<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="../../resources/static/css/loginPage/loginPageStyle.css?after">
	<!-- <link rel="stylesheet" href="../../css/loginPage/loginPageStyle.css"> -->
</head>
<body>
    <div class="loginPageWrapper">
        <div class="loginPageContainer">
            <h1> 쿠폰북 </h1>
            <div class="loginFormWrapper">
                <form class="loginForm" action="loginClick.do" method="POST">
                    <div class="formInput">
                        <input type ="text" name ="userId" autocomplete="off" required placeholder="아이디">
                    </div >
                    <div class="formInput">
                        <input type="password" name="userPass" autocomplete="off" required placeholder="비밀번호">
                    </div>
                    <div class="memberinfoRadio">
                        <span class="radioSelect">
                            <input type="radio" name="authority" value=0 checked>
                            <label class="radioLabel">손님</label>
                            <input type="radio" name="authority" value=1>
                            <label class="radioLabel">점장님</label>
                        </span>
                        <button type="submit">로그인</button>
                    </div>
                </form>
                <div class="toSignUp">
                    <a href="clientSignUpPage.do">손님 회원가입</a>
                    <a href="ownerSignUpPage.do">점장 회원가입</a>
                </div>
            </div>
        </div>
    </div>
        
    </body>