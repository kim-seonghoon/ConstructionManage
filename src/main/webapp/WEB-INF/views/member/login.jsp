<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../header.jsp" %>
    <div class="jumbotron">
		<div class="container">
			<h1>회원 로그인</h1>
		</div>
	</div>
	<div class="container bbs_main" style="padding-top: 20px; padding-bottom: 10px">
		<h3 style="margin-left: 170px; margin-top: 0">| 로그인</h3>
		<div class="login_box">
	    <form method="post" action="login" id="member">
	        <fieldset>
	        <div class="login_content">
	          <label class="lb">아  이  디</label>
	          <input name="user_id" class="big_input" type="text"><br> 
	          <label class="lb">패스워드</label> 
	          <input name="pwd" class="big_input" type="password"><br>
	        </div>
	        <div class="login_btn">
	          <input type="submit" value="로그인" class="btn_login">
	        </div>
	        </fieldset>
	        <div class="radio-group">
		        <label class="radio">
		       	  <input type="radio" name="user_type" value="1" checked="checked"><span>일반회원</span>&nbsp;&nbsp;
		       	</label>
		       	<label class="radio">
		          <input type="radio" name="user_type" value="2"><span>공사업체</span><br>
		        </label>
	        </div>
	        <div id="buttons">
	            <input type="button" class="btn-black-lg" value="아이디 찾기" onclick="go_find_id_form()">&nbsp;
	            <input type="button" class="btn-black-lg" value="비밀번호 찾기" onclick="go_find_pwd_form()">     
	        </div>
	    </form>  
	    </div>
	</div>
<%@ include file="../footer.jsp" %>