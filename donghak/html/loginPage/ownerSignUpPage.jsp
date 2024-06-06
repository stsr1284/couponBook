<!-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- <link rel="stylesheet" href="../../resources/static/css/loginPage/ownerSignUpPageStyle.css"> -->
	<link rel="stylesheet" href="../../css/loginPage/ownerSignUpPageStyle.css">
</head>
<body>
    <div class="signUpPageWrapper">
        <div class="signUpPageContainer">
            <h1> 손님 회원가입 </h1>
            <div class="signUpFormWrapper">
                <form class="signUpForm" action="ownerInsert.do" method = "POST">
                    <div class="storeTitle">점장님 정보</div>
                    <div class="storeBar"></div>
                    <div class="formInput">
                        <input id="userId" type ="text" name ="ownerId" autocomplete="off" required placeholder="아이디">
                    </div >
                    <div class="formInput">
                        <input id="userPass" type="password" name="ownerPass" autocomplete="off" required placeholder="비밀번호">
                    </div>
                    <div class="formInput">
                        <input type="password" name="ownerPassCheck" autocomplete="off" required placeholder="비밀번호 확인">
                    </div>
                    <div class="formInput">
                        <input type="text" name="ownerName" autocomplete="off" required placeholder="이름">
                    </div>
                    <div class="formInput">
                        <input id="userTel" type="text" name="ownerPhone" autocomplete="off" required placeholder="전화번호">
                    </div>
                    <div class="storeTitle">가게 정보</div>
                    <div class="storeBar"></div>
                    <div class="formInput">
                        <input type ="text" name ="storeName" autocomplete="off" required placeholder="업체명">
                    </div >
                    <div class="formInput">
                        <input type="text" name="storePlaceName" autocomplete="off" required placeholder="지점명">
                    </div>
                    <div class="formInput">
                        <input type="text" name="storeId" autocomplete="off" required placeholder="사업자 번호">
                    </div>
                    <div class="formInput">
                        <input id="storeTel" type="text" name="storeNumber" autocomplete="off" required placeholder="가게 번호">
                    </div>
                    <div class="formInput">
                        <input type="text" name="storeAddress" autocomplete="off" required placeholder="가게 주소">
                    </div>
                    <div class="formBtn">
                        <button class="signUpBtn" type="submit">회원가입</button>
                        <a class="backBtn" href="../loginPage/logOut.do">돌아가기</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script src="../../js/ownerSignUpCheck.js"></script>
</body>
</html>