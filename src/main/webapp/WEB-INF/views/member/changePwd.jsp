<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<body>
<h3> 비밀번호 번경</h3>
	<form method="post" id="member">
		<fieldset>
			<legend></legend>
			<label>새 비밀번호 입력</label>
			<input type="password" id="pwd" name="pwd"> <br>
			<label>새 비밀번호 확인</label>
			<input type="password" id="pwd_chk" name="pwd_chk"><br>
			<input type="button" value="비밀번호 변경" onclick="go_save_pwd()">
		</fieldset>
	</form>
</body>
</html>