<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="../../css/border/group.css">
	<link rel="stylesheet" href="../../css/headerStyle.css">
	<script src="https://kit.fontawesome.com/05d1420fac.js" crossorigin="anonymous"></script>
	<title>쿠폰북</title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
	<div class="headerWrapper"> <!-- header start -->
		<nav class="header">
			<div class="headerContainer">
				<h1 class="headerStart">
					<a class="headerTitle" href="">쿠폰북</a>
				</h1>
				<div class="headerEnd">
					<!-- 밑 로그인, 로그아웃은 로그인 세션 조건부로 둘 중 하나만 나오게 하기 -->
					<a href="" class="fas fa-search"></a>
					<c:choose>
						<c:when test="${sessionScope.userNick == null}">
							<a href="../loginPage/loginpage.do">
								<!-- <button class="headerHamburger">로그인</button> -->
							</a>
						</c:when>
					<c:otherwise>
							<a href="../loginPage/logOut.do">	
								<button class="headerHamburger">로그아웃</button>
							</a>	
						</c:otherwise>
					</c:choose> 
				</div>
			</div>
		</nav>
	</div> <!-- header end -->	
	<div class="contentWrapper">
		<ul class="content">
			<li>
				<a href="" class="storeHref">
					<div class="couponWrapper">
						<div class="storeWrapper">
							<span class="storeSubject">청년다방</span>
							<span class="storePlace">백석대점</span>
						</div>
						<div class="stampWrapper">
							<div class="circle"></div>
						</div>
					</div>
				</a>

			</li>
		</ul>
	</div>
</body>
</html>