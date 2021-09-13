<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../header.jsp" %>
    <div class="jumbotron">
		<div class="container">
			<h1>비밀번호 찾기</h1>
		</div>
	</div>
	<div class="container bbs_main" style="padding-top: 20px; padding-bottom: 10px">
		<h3 style="margin-left: 170px; margin-top: 0">| 비밀번호 찾기</h3>
		<div class="login_box" style="padding-top: 10px">
	    <form method="post" action="find_pwd" id="member">
	        <fieldset>
	        <div class="login_content">
	          <label class="lb">아이디</label>
	          <input name="id" class="big_input" id="id" type="text" ><br> 	        
	          <label class="lb">이   름</label>
	          <input name="name" class="big_input" type="text"><br> 
	          <label class="lb">이 메 일</label> 
	          <input name="email" id="email" class="big_input" type="text"><br>
	        </div>
	        <div class="login_btn">
	          <input type="button" value="로그인" class="btn_login" onclick="login_form()">
	        </div>
	        </fieldset>
			<c:if test="${message!=null}">
				<div class="find_msg">
					<span>${message}</span>
				</div>
			</c:if>
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
	            <input type="submit" class="btn-black-lg" value="비밀번호 찾기">     
	        </div>
	    </form>  
	    </div>
	</div>
<%@ include file="../footer.jsp" %>