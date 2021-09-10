<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <%@ include file="header.jsp" %>
    <div class="jumbotron_small">
		<div class="container">
			<h1 style="padding-top: 90px">회원 가입</h1>
		</div>
	</div>
	<div class="container bbs_main">
		<h3>| 회원 정보입력</h3>
		<form id="join" name="formm" method="post">
		<div class="notice-wrap">
			<table width="1200" cellpadding="0" cellspacing="0" class="table">
			<tr>
				<td width="120" class="b">아이디*</td>
				<td colspan="3">
					<input type="text" name="user_id" id="user_id" value="${user_id}"> 
					<input type="hidden" id="reid" name="reid" value="${reid}">
					<input type="button" value="중복체크" onclick="idcheck()"> 
				</td>
			</tr>
			
			<tr>
				<td class="b">비밀번호*</td>
				<td><input type="password" name="pwd" id="pwd"></td>
				<td class="b" width="120">비밀번호 확인*</td>
				<td><input type="password" name="pwd_chk" id="pwd_chk"></td>
			</tr>
			
			<tr>
				<td width="120" class="b">이름</td>
				<td colspan="3"><input type="text" name="name" id="name"></td>
			</tr>
			
			<tr>
				<td width="120" class="b">생년월일*</td>
				<td colspan="3"><input type="text" name="year" id="year" size="5" placeholder="YYYY">년&nbsp;
					<input type="text" name="month" id="month" size="5" placeholder="MM">월&nbsp;
					<input type="text" name="day" id="day" size="5" placeholder="DD">일
		        </td>
			</tr>
			
			<tr>
				<td width="120" class="b">이메일</td>
				<td colspan="3"><input type="text" name="email" id="email"></td>
			</tr>
			
			<tr>
				<td width="120" class="b">연락처</td> 
				<td colspan="3"><input type="text" name="num1" size="5"> - <input type="text" name="num2" size="5"> - <input type="text" name="num3" size="5"> </td> <!-- 번호 id 추가해야함 -->
			</tr>
			
			<tr>
				<td width="120" class="b" rowspan="2" style="line-height: 82px">주소</td>
				<td colspan="3"><input type="text" name="zip_num" id="zip_num"> <input type="button" value="주소검색" onclick="post_zip()">
			</tr>
			<tr>
				<td>
					<input type="text" name="addr1" id="address">
					<input type="hidden" name="sido" id="sido">
					<input type="hidden" name="gugun" id="gugun">
					<input type="hidden" name="dong" id="dong">
				</td>
				<td width="120" class="b">상세주소</td>
				<td><input type="text" name="addr2" id="address_detail"> </td>
			</tr>
			</table>
			<div class="button">
				<input type="reset" class="btn-gray" value="취소">
				<input type="submit" class="btn-black" value="확인" onclick="go_save()">
			</div>
		</div>
		</form>
	</div>
<%@ include file="../footer.jsp" %>