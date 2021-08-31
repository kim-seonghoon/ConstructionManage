<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../header.jsp" %>
	<div class="container bbs_main">
		<h3>| 로그인</h3>
	    <form method="post" action="login" id="member">
	        <fieldset>
	        <legend></legend>
	          <label>User ID</label>
	          <input name="user_id" type="text"><br> 
	          <label>Password</label> 
	          <input name="pwd" type="password"><br>
	          <input type="radio" name="user_type" value="1">일반회원
	          <input type="radio" name="user_type" value="2">공사업체<br>
	          <input type="submit" value="로그인" class="submit">
	        </fieldset>
	        <div class="clear"></div>
	        <div id="buttons">
	            <input type="button" value="아이디 찾기" onclick="go_find_id_form()">
	            <input type="button" value="비밀번호 찾기" onclick="go_find_pwd_form()">     
	        </div>
	    </form>  
	</div>
</div>
</body>
</html>