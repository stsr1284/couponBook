<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="../../resources/static/css/headerStyle.css">
	<link rel="stylesheet" href="../../resources/static/css/ownerPage/ownerMainStyle.css">
	<!-- <link rel="stylesheet" href="../../css/headerStyle.css"> -->
	<!-- <link rel="stylesheet" href="../../css/ownerPage/ownerMainStyle.css"> -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@40,400,0,0" />
	<title>ownerMain</title>
</head>
<body>
	<%
		String ownerid = (String)session.getAttribute("ownerId");
		if(ownerid == null){
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
				<a href="../loginPage/logOut.do"><span class="material-symbols-outlined logoutIcon">logout</span></a>	
			</div>
            <div class="headerSecond">쿠폰북</div>
            <div class="headerThird">
            </div>
        </div>
    </div> <!-- 헤더 종료 -->

	<!-- 쿠폰 업데이트 모달-->
    <div id="modal" class="couponUpdateModal">
        <!-- 모달 내용 -->
        <div class="modal-content">
            <span class="close">&times;</span>
			<h3 id="modalTitle">상품 설정</h3>
			<form action="" method = "POST">
				<div class="couponUpdateForm">
					<label for="">상품명</label>
					<input type ="text" name ="couponService" autocomplete="off" required value="">
					<label for="">쿠폰 기간</label>
					<select name="couponDate">
						<option value="1" hidden>선택</option>
						<option value="1">일주일</option>
						<option value="2">1 달</option>
						<option value="3">2 달</option>
						<option value="4">3 달</option>
						<option value="5">1 년</option>
						<option value="6">제한 없음</option>
					</select>
				</div>
					<button type="submit">등록</button>
			</form>
        </div>
    </div>
    <!-- test -->

	<!-- 정보 업데이트 모달 -->
    <div id="modal" class="informUpdateModal">
        <!-- 모달 내용 -->
        <div class="modal-content">
            <span class="close">&times;</span>
			<h3 class="modalTitle">지점 수정</h3>
			<form class="informUpdateForm" action="" method="POST">
				<div class="informUpdateFormInput">
				<label for="">업체명</label>
				<input type="text" name="storeName" autocomplete="off" required value=""> <!-- value에 값 넣어줘야됨-->
				<label for="">지점명</label>
				<input type="text" name="storePlaceName" autocomplete="off" required value=""> <!-- value에 값 넣어줘야됨-->
				<label for="">사업자 번호</label>
				<input type="text" name="storeId" autocomplete="off" required value=""> <!-- value에 값 넣어줘야됨-->
				<label for="">업체 전화번호</label>
				<input type="text" name="storeNumber" autocomplete="off" required value=""><!-- value에 값 넣어줘야됨-->
				<label for="">업체 주소</label>
				<input type="text" name="storeAddress" autocomplete="off" required value=""> <!-- value에 값 넣어줘야됨-->
				</div>
				<button type="submit">기간 수정</button>
			</form>
			<div class="menuWrapper">
				<span>메뉴판</span>
				<div class="menuForm">
					<form action="" method="POST">
							<input type="text" placeholder="메뉴" required>
							<input type="text" placeholder="가격" required>
							<button type="submit">등록</button>
					</form>
				</div>
				<div class="menuList">
					<div class="menuRow"> <!-- 반복 시작-->
						<span>메뉴명</span> <!-- 메뉴 명-->
						<span>1000</span> <!-- 메뉴 명-->
						<button>취소</button> <!-- 취소버튼-->
					</div> <!-- 반복 끝 -->
				</div>
			</div>
		</div>
        </div>
    </div>
    <!-- test -->

	<div class="ownerMainWrapper">
		<div class="ownerMain">
			<div class="btnWrapper">
				<button class="informUpdate">가게 정보</button>
				<button class="couponUpdate">쿠폰 정보</button>
			</div>
			<div class="requestListWrapper">
				<div class="requestList">
					<div class="requestListText">요청목록</div>

					<!-- 반복시작 -->
					<c:forEach items="${owner_request_list}" var="couponBook">
						<c:choose>
                        	<c:when test="${couponBook.requestType == 1}">
								<div class="requestWrapper"> <!-- 반복 시작 스탬프 요청-->
									<span class="requestWrapperFirst">스탬프</span>
									<span class="userNameText">${couponBook.clientNick}</span>
									<span class="responseWrapper">
										<form action="coupon_stamp_approve.do" method="POST">
											<select name="addStamp">
												<option value=1 hidden>스탬프개수</option>
												<option value=1>1</option>
												<option value=2>2</option>
												<option value=3>3</option>
												<option value=4>4</option>
												<option value=5>5</option>
												<option value=6>6</option>
												<option value=7>7</option>
												<option value=8>8</option>
												<option value=9>9</option>
												<option value=10>10</option>
											</select>
											
											<input type="hidden" name="clientId" value="${couponBook.clientId}">
											<input type="hidden" name="storeSEQ" value="${couponBook.storeSEQ}">
											<input type="hidden" name="requestSEQ" value="${couponBook.requestSEQ}">
											
											<button class="approve" type="submit">승인</button>
											<button class="reject" type="submit" formaction="coupon_stamp_refuse.do">거절</button>
										</form>
									</span>
								</div>
							</c:when>
						</c:choose>
						
						
						<c:choose>
							<c:when test="${couponBook.requestType == 0}">
								<div class="requestWrapper"> 
									<span class="requestWrapperFirst">
										<span><svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px" fill="#F19E39"><path d="m344-60-76-128-144-32 14-148-98-112 98-112-14-148 144-32 76-128 136 58 136-58 76 128 144 32-14 148 98 112-98 112 14 148-144 32-76 128-136-58-136 58Zm34-102 102-44 104 44 56-96 110-26-10-112 74-84-74-86 10-112-110-24-58-96-102 44-104-44-56 96-110 24 10 112-74 86 74 84-10 114 110 24 58 96Zm102-318Zm-42 142 226-226-56-58-170 170-86-84-56 56 142 142Z"/></svg></span>
										<span>쿠폰</span>
									</span>
									<span class="userNameText">${couponBook.clientNick}</span>
									<span class="responseWrapper">
										<form action="coupon_stamp_approve.do" method="POST">
											
											<input type="hidden" name="addStamp" value=0>
											<input type="hidden" name="clientId" value="${couponBook.clientId}">
											<input type="hidden" name="storeSEQ" value="${couponBook.storeSEQ}">
											<input type="hidden" name="requestSEQ" value="${couponBook.requestSEQ}">
											
											<button class="approve" type="submit">승인</button>
											<button class="reject" type="submit" formaction="coupon_stamp_refuse.do">거절</button>
										</form>
									</span>
								</div> <!-- 쿠폰 사용 요청 끝 -->
							</c:when>
						</c:choose>
					</c:forEach>	
					<!-- 반복 끝 -->
				</div>
			</div>
			</div>
		</div>
		<script src="../resources/static/js/couponUpdatePage.js"></script>
		<script src="../resources/static/js/ownerRequestCheck.js"></script>
		<!-- <script src="../../js/couponUpdatePage.js"></script> -->
		<!-- <script src="../../js/ownerRequestCheck.js"></script> -->
		</html>
	</body>