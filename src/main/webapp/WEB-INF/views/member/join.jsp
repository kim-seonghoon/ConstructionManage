<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<body>
	<h3>| 회원 선택</h3>
	<form id="go_join_form" action="go_join_detail">
	<input type="button" value="일반 회원" onclick="join_detail_form()">
	<input type="button" value="공사 업체" onclick="company_join_form()">
	<input type="reset" value="취소" onclick="main">
	</div>
	</form>
</body>
</html>