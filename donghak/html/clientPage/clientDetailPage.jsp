<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>쿠폰북</title>
    <link rel="stylesheet" href="../resources/static/css/headerStyle.css">
    <link rel="stylesheet" href="../resources/static/css/clientPage/clientDetailPageStyle.css">
    <!-- <link rel="stylesheet" href="../../css/headerStyle.css"> -->
    <!-- <link rel="stylesheet" href="../../css/clientPage/clientDetailPageStyle.css"> -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@40,400,0,0" />
</head>
<body>
    <div class="headerWrapper"> <!-- 헤더 시작 -->
        <div class="headerContainer">
            <div class="headerFirst"><span class="material-symbols-outlined logoutIcon">logout</span></div>
            <div class="headerSecond">쿠폰북</div>
            <div class="headerThird">
                <span class="material-symbols-outlined couponBox">box</span>
                <img class="searchIcon" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png">
            </div>
        </div>
    </div> <!-- 헤더 종료 -->

    <div class="couponDetailWrapper">
        <div class="couponDetailBox">
            <div class="couponDetailBody">
                <div class="couponDetailHeade">
                    <span class="couponDetailTitle">청년다방</span>
                    <span class="couponDetailSubTitle">백석대점</span>
                </div>
                    <!-- <c:forEach items="${coupon_issue_list}" var="couponBook"> -->
        	
                    <div class="couponWrapper">
                        <div class="couponContainer">
                            <div class="stamps">
                                <!-- <c:forEach var="i" begin="1" end="${couponBook.stampNum}" step="1">
                                    <div class="stamp stampActive"></div>
                                </c:forEach>
                                <c:forEach var="j" begin="1" end="${10-couponBook.stampNum}" step="1">
                                    <div class="stamp stampHidden"></div>
                                </c:forEach> -->
                                <div class="stamp stampActive"></div>
                                <div class="stamp stampActive"></div>
                                <div class="stamp stampActive"></div>
                                <div class="stamp stampActive"></div>
                                <div class="stamp stampActive"></div>
                                <div class="stamp stampActive"></div>
                                <div class="stamp stampActive"></div>
                                <div class="stamp stampActive"></div>
                                <div class="stamp stampActive"></div>
                                <div class="stamp stampActive"></div>
                            </div>
                        </div>
                    </div>
                    <div class="couponBtns">
                        <form class="insertBtnForm" action="client_request_insert.do" metod="get">
                            <input type="hidden" name = "storeSEQ" value="${param.storeSEQ}">
                            <input type="hidden" name = "clientId" value="${param.clientId}">
                            <input type="hidden" name = "ownerId" value="${param.ownerId}">
                            <input type="hidden" name = "requestType" value=1>
                            <button type="submit">쿠폰요청</button>
                        </form>
                        <form class="deleteBtnForm" action="coupon_issue_delete.do" metod="get">
                            <input type="hidden" name = "issueSEQ" value="${param.issueSEQ}">
                            <button type="submit">쿠폰삭제</button>
                        </form>
                    </div>
                <!-- </c:forEach> -->
                <div class="menuList">
                    <div class="menuOne"> <!-- 반복 시작-->
                        <span>
                            치즈버거
                            5000
                        </span>
                    </div> <!-- 반복 끝-->
                </div>
            </div>
        </div>
    </div>
      
</body>
</html>
    