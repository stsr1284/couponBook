
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="../resources/static/css/headerStyle.css">
	<link rel="stylesheet" href="../resources/static/css/ownerPage/ownerMainStyle.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@40,400,0,0" />
	<title>Document</title>
</head>
<body>
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
					<select id="" name="">
						<option value="1">선택</option>
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
			<h3 id="modalTitle">지점 수정</h3>
			<form action="" method="POST">
				<div class="informUpdateForm">
					<label for="couponService">업체명</label>
					<input type="text" name="couponService" id="couponService" autocomplete="off" required value="">
					<label for="couponUseByDate">지점명</label>
					<input type="text" name="couponUseByDate" id="couponUseByDate" autocomplete="off" required value="">
					<label for="businessNumber">사업자 번호</label>
					<input type="text" name="businessNumber" id="businessNumber" autocomplete="off" required value="">
					<label for="phoneNumber">업체 전화번호</label>
					<input type="text" name="phoneNumber" id="phoneNumber" autocomplete="off" required value="">
					<label for="businessAddress">업체 주소</label>
					<input type="text" name="businessAddress" id="businessAddress" autocomplete="off" required value="">
				</div>
				<button type="submit">기간 수정</button>
			</form>
			<div>
				<div>메뉴판</div>
				<div>
					<form id="menuForm">
						<input type="text" placeholder="메뉴" required>
						<button type="submit">등록</button>
					</form>
					<ul id="menuList">

					</ul>
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
					
					<c:forEach items="${owner_request_list}" var="couponBook">
						<!-- 반복시작 -->
						<c:choose>
                        	<c:when test="${couponBook.requestType == 1}">
								<div class="requestWrapper"> <!--스탬프 요청 시작-->
									<span class="requestWrapperFirst">스탬프</span>
									<span class="userNameText">닉네임</span>
									<span class="responseWrapper">
										<form action="" method="POST">
											<select id="" name="">
												<option value="1" hidden>스탬프개수</option>
												<option value="1">1</option>
												<option value="2">2</option>
												<option value="3">3</option>
												<option value="4">4</option>
												<option value="5">5</option>
												<option value="6">6</option>
												<option value="7">7</option>
												<option value="8">8</option>
												<option value="9">9</option>
												<option value="10">10</option>
											</select>
											<button type="submit">승인</button>
											<button class="reject" type="submit">거절</button>
										</form>
									</span>
								</div> <!-- 스탬프요청 끝 -->
							</c:when>
						</c:choose>
						
						<c:choose>
                        	<c:when test="${couponBook.requestType == 0}">
								<div class="requestWrapper"> <!--쿠폰 사용 요청 시작-->
									<span class="requestWrapperFirst">
										<span><svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px" fill="#F19E39"><path d="m344-60-76-128-144-32 14-148-98-112 98-112-14-148 144-32 76-128 136 58 136-58 76 128 144 32-14 148 98 112-98 112 14 148-144 32-76 128-136-58-136 58Zm34-102 102-44 104 44 56-96 110-26-10-112 74-84-74-86 10-112-110-24-58-96-102 44-104-44-56 96-110 24 10 112-74 86 74 84-10 114 110 24 58 96Zm102-318Zm-42 142 226-226-56-58-170 170-86-84-56 56 142 142Z"/></svg></span>
										<span>쿠폰</span>
									</span>
									<span class="userNameText">닉네임</span>
									<span class="responseWrapper">
										<form action="" method="POST">
											<button type="submit">승인</button>
											<button class="reject" type="submit">거절</button>
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
		<script src="../resources/static/js/ownerMenuUpdate.js"></script>
	</body>
	</html>