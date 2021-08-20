<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<body>
	<h3>| 회원 선택</h3>
	<div id="join_select">
	<input type="button" value="일반 회원" onclick="join_detail_form()">
	<input type="button" value="공사 업체" onclick="company_join_form()">
	</div>
</body>
</html>