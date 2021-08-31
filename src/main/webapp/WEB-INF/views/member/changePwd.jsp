<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
	<div class="container bbs_main">
	<h3> 비밀번호 번경</h3>
		<form method="post" action="pwd_change" id="member">
		<input type="hidden" name="name" value="${name}">
		<input type="hidden" name="email" value="${email}">
		<input type="hidden" name="user_id" value="${user_id}">
			<fieldset>
				<legend></legend>
				<label>새 비밀번호 입력</label>
				<input type="password" id="pwd" name="pwd"> <br>
				<label>새 비밀번호 확인</label>
				<input type="password" id="pwd_chk" name="pwd_chk"><br>
				<input type="submit" value="비밀번호 변경" onclick="go_save_pwd()">
			</fieldset>
		</form>
	</div>
</div>
</body>
</html>