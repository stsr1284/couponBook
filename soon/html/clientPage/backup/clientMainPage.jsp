<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>쿠폰북</title>
    <link rel="stylesheet" href="../resources/static/css/clientPage/couponStyle.css">
    <link rel="stylesheet" href="../resources/static/css/headerStyle.css">
    <link rel="stylesheet" href="../resources/static/css/clientPage/clientMainStyle.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@40,400,0,0" />
</head>
<body>
     <div class="headerWrapper"> <!-- 헤더 시작 -->
        <div class="headerContainer">
            <div class="headerFirst">
                <a href="">
                    <span class="material-symbols-outlined logoutIcon">logout</span>
                </a>
            </div>
            <div class="headerSecond">쿠폰북</div>
            <div class="headerThird">
                <a href="">
                    <span class="material-symbols-outlined couponBox">box</span>
                </a>
                <a href="clientSearchPage.do">
                    <img class="searchIcon" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png">
                </a>
            </div>
        </div>
    </div> <!-- 헤더 종료 -->
    

    <div class="couponsWrapper">
    	
        <!-- 반복문 시작 -->
        <c:forEach items="${coupon_issue_list}" var="couponBook">
	        <div class="couponsContainer"> 
	            <a class="couponContainer" href="clientCouponDetailPage.do?storeSEQ=${couponBook.storeSEQ}&clientId=${sessionScope.clientId}&ownerId=${couponBook.ownerId}"> <!-- 디테일들어가는 경로 -->
	                <div class="storeInformContinaer">
	                    <span class="storeSubject">${couponBook.storeName}</span>
	                    <span class="storePlace">${couponBook.storePlaceName}</span>
	                </div>
	                
	                <div class="stamps">
	                	<c:forEach var="i" begin="1" end="${couponBook.stampNum}" step="1">
		                    <div class="stamp stampActive"></div>
		               	</c:forEach>
		               	<c:forEach var="j" begin="1" end="${10-couponBook.stampNum}" step="1">
		               		<div class="stamp stampHidden"></div>
		               	</c:forEach>
        	        </div>
            	</a>	
        	</div> 
        </c:forEach>
        <!-- 반복문 끝 -->
      
    </div>

    <script src="../resources/static/js/searchIcon.js"></script>
    </body>
    </html>
    