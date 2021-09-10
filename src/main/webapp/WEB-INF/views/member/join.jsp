<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="header.jsp" %>
    <div class="jumbotron_small">
		<div class="container">
			<h1>회원 가입</h1>
		</div>
	</div>
	
   <div class="container bbs_main">
   <h3>| 회원 선택</h3>
   <form id="member" >
	   <div id="join_select">
	   <input type="button" value="일반 회원" onclick="join_detail_form()">
	   <input type="button" value="공사 업체" onclick="company_join_form()">
	   </div>
   </form>
   </div>
<%@ include file="../footer.jsp" %>