<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="../../resources/static/css/headerStyle.css">
	<link rel="stylesheet" href="../../resources/static/css/clientPage/clientSearchStyle.css">
	<!-- <link rel="stylesheet" href="../../css/headerStyle.css">
	<link rel="stylesheet" href="../../css/clientPage/clientSearchStyle.css"> -->
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
				<a href="">
					<span class="material-symbols-outlined logoutIcon">logout</span>
				</a>
			</div>
            <div class="headerSecond">쿠폰북</div>
            <div class="headerThird">
				<a href="">
					<span class="material-symbols-outlined couponBox">box</span>
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
				<form class="storePlaceForm" action="" method="POST">
					<button class="storePlaceBtn" type="submit">
						<div class="btnTop">
							<span class="storeTitle">
								청년다방
								<span class="storePlaceTitle">
									백석점
								</span>
							</span>
						</div>
						<div class="btmBottom">
							<span>
							010-xxxx-xxxx
							</span>
							<span>
								쿠폰 발행가능
							</span>
						</div>
					</button>
				</form>
				<!-- 반복 끝 -->
				<!-- 반복 시작 -->
				<form class="storePlaceForm" action="" method="POST">
					<button class="storePlaceBtn" type="submit">
						<div class="btnTop">
							<span class="storeTitle">
								고기굽는집
								<span class="storePlaceTitle">
									백석점
								</span>
							</span>
						</div>
						<div class="btmBottom">
							<span>
							010-xxxx-xxxx
							</span>
							<span>
								쿠폰 준비중
							</span>
						</div>
					</button>
				</form>
				<!-- 반복 끝 -->
			</div>
		</div>
	</div>
	
</body>
</html>