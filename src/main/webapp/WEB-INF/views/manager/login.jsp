<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../header.jsp" %>
    <div class="jumbotron">
		<div class="container">
			<h1>관리자 로그인</h1>
		</div>
	</div>
	<div class="container bbs_main" style="padding-top: 20px; padding-bottom: 10px">
		<h3 style="margin-left: 170px; margin-top: 0">| 관리자 로그인</h3>
		<div class="login_box">
	    <form method="post" action="manager_login" id="manager">
	    <input type="hidden" value="3" id="user_type" name="user_type">
	        <fieldset>
	        <div class="login_content">
	          <label class="lb">아  이  디</label>
	          <input name="manager_id" class="big_input" id="manager_id" type="text"><br> 
	          <label class="lb">패스워드</label> 
	          <input name="pwd" id="pwd" class="big_input" type="password"><br>
	        </div>
	        <div class="login_btn">
	          <input type="submit" value="로그인" class="btn_login">
	        </div>
	        </fieldset>
	        <div id="buttons">
	            <input type="button" class="btn-black-lg" value="아이디 찾기" onclick="go_find_id_form_mg()">&nbsp;
	            <input type="button" class="btn-black-lg" value="비밀번호 찾기" onclick="go_find_pwd_form_mg()">     
	        </div>
	    </form>  
	    </div>
	</div>
<%@ include file="../footer.jsp" %>