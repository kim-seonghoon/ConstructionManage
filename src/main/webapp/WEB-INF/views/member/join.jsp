<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<body>
	<h3>| 회원 선택</h3>
	<form id="go_join_form" action="go_join_detail">
	<div id="join_select">
	<label><input type="radio" name="selectUser" id="selectUser" value="1">일반회원</label>
    <label><input type="radio" name="selectUser" id="selectUser" value="2">공사업체</label>
	<br><br>
	<input type="reset" value="취소" onclick="main">
	<input type="submit" value="확인">
	</div>
	</form>
</body>
</html>