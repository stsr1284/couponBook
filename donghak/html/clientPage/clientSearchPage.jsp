<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="../../resources/static/css/headerStyle.css">
	<link rel="stylesheet" href="../../resources/static/css/clientPage/clientSearchStyle.css">
	<!-- <link rel="stylesheet" href="../../css/headerStyle.css"> -->
	<!-- <link rel="stylesheet" href="../../css/clientPage/clientSearchStyle.css"> -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@40,400,0,0" />
	<title>Document</title>
</head>
<body>
	<%
		String clientid = (String)session.getAttribute("clientId");
		if(clientid == null){
	%>
	<script>
		alert("로그인 후 이용해주세요");
		location.href='../loginPage/loginPage.do';
	</script>
	<%
	}
	%>

	<div class="headerWrapper"> <!-- 헤더 시작 -->
        <div class="headerContainer">
            <div class="headerFirst">
				<a href="../loginPage/logOut.do">
					<span class="material-symbols-outlined logoutIcon">logout</span>
				</a>
			</div>
            <div class="headerSecond">쿠폰 검색</div>
            <div class="headerThird">
				<a href="clientMainPage.do">
					<svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px" fill="#000000"><path d="M240-200h120v-240h240v240h120v-360L480-740 240-560v360Zm-80 80v-480l320-240 320 240v480H520v-240h-80v240H160Zm320-350Z"/></svg>
					<!-- <span class="material-symbols-outlined couponBox">box</span> -->
				</a>
				<a href="">
					<!-- <img class="searchIcon" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png"> -->
				</a>
            </div>
        </div>
    </div> <!-- 헤더 종료 -->
	
	<div class="searchWrapper">
		<div class="searchContainer">
			<form class="searchInputForm" action="" method="POST">
				<button class="searchBtn" type="submit"><img class="searchBtnIcon" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png"></button>
				<input class="searchInput" type="text" name="searchStoreName" autocomplete="off" required placeholder="음식점 검색">
			</form>
		</div>
		<div class="storePlaceWrapper">
			<div class="storePlaceContainer">
				<div class="storePlaceTitle">
					<div>
						지점 목록
					</div>
				</div>
				<!-- 반복 시작 -->
				<c:forEach items="${store_search_list}" var="couponBook">
					<form class="storePlaceForm" action="coupon_registration_insert.do" method="POST">
						<button class="storePlaceBtn" type="submit">
							<div class="btnLeft">
								<div class="btnTop">
									<span class="storeTitle">
										${couponBook.storeName}
										<span class="storeSubTitle">
											${couponBook.storePlaceName}
										</span>
									</span>
								</div>
								<div class="btmBottom">
									<span>
										${couponBook.storeNumber}
									</span>
								</div>
							</div>
							<div class="btnRight">
								<c:choose>
									<c:when test="${couponBook.couponService == null}">
										<p>쿠폰</p>
										<p>준비중</p>
									</c:when>
									<c:otherwise>
										<p>쿠폰</p>
										<p>발급</p>
									</c:otherwise>
								</c:choose> 
							</div>
						</button>
						<input id="couponServiceCheck" type="hidden" name="couponService" value="${couponBook.couponService}">
						<input type="hidden" name="storeSEQ" value="${couponBook.storeSEQ}">
						<input type="hidden" name="clientId" value="${sessionScope.clientId}">
					</form>
				</c:forEach>
				<!-- 반복 끝 -->
			</div>
		</div>
	</div>

	<script src="../../resources/static/js/couponSearchCheck.js"></script>
	<!-- <script src="../../js/couponSearchCheck.js"></script> -->
</body>
</html>