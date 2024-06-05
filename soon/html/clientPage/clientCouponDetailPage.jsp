
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>

<body>
<h1>
	쿠폰 요청 페이지 	
</h1>

	 

	
	<form action="client_request_insert.do" metod="get">
		<input type="hidden" name = "storeSEQ" value="${param.storeSEQ}">
		<input type="hidden" name = "clientId" value="${param.clientId}">
		<input type="hidden" name = "ownerId" value="${param.ownerId}">
		<input type="hidden" name = "requestType" value=1>
		<input type="submit" value="쿠폰요청">
	</form>
	
	<form action="coupon_issue_delete.do" metod="get">
		<input type="hidden" name = "issueSEQ" value="${param.issueSEQ}">
		<input type="submit" value="쿠폰삭제">
	</form>
	
	
	storeSEQ : <input type="text" value="${param.storeSEQ}">
	clientId : <input type="text" value="${param.clientId}">
	ownerId : <input type="text" value="${param.ownerId}">

</body>
</html>
