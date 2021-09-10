<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
	<div class="jumbotron_small">
		<div class="container">
			<h1>회원 가입</h1>
		</div>
	</div>
	
	<div class="container bbs_main">
	<h3>| 공사업체 정보 입력</h3> 
	<form name="formm" id="formm" method="POST">
		<div class="notice-wrap">
			<table width="1200" cellpadding="0" cellspacing="0" class="table">
			<tr>
				<td width="150" class="b">아이디*</td>
				<td colspan="3">
					<input type="text" name="cp_id" id="cp_id" value="${cp_id}"> 
					<input type="hidden" id="reid" name="reid" value="${reid}">
					<input type="button" value="중복체크" onclick="idcheckcp()"> 
				</td> 
			</tr>
			
			<tr>
				<td class="b">비밀번호*</td>
				<td><input type="password" name="pwd" id="pwd"></td>
				<td class="b" width="150">비밀번호 확인*</td>
				<td><input type="password" name="pwd_chk" id="pwd_chk"></td>
			</tr>
			
			<tr>
				<td class="b">공사 업체명*</td>
				<td><input type="text" name="cp_name" id="cp_name"></td>
				<td class="b">사업자 번호*</td>
				<td><input type="text" name="cp_num1" id="cp_num1" size="5"> - <input type="text" name="cp_num2" id="cp_num2" size="5"> </td>	<!-- 사업자번호 id, name 확인 -->
			</tr>
			
			<tr>
				<td class="b">담당자*</td>
				<td><input type="text" name="admin_name" id="admin_name">   </td>
				<td class="b">담당자 연락처*</td>
				<td><input type="text" name="admin_p1" id="admin_p1" size="5"> - <input type="text" name="admin_p2" id="admin_p2" size="5"> - <input type="text" name="admin_p3" id="admin_p3" size="5"></td>
			</tr>
			
			<tr>
				<td width="150" class="b">이메일</td>
				<td colspan="3"><input type="text" name="cp_email" id="cp_email"></td>
			</tr>
			
			
			<tr>
				<td class="b">연락처*</td>
				<td><input type="text" name="cp_p1" id="cp_p1" size="5"> - <input type="text" id="cp_p2" name="cp_p2" size="5"> - <input type="text" id="cp_p3" name="cp_p3" size="5"></td>
				<td class="b">팩스번호</td>
				<td><input type="text" name="fax_num1" size="5"> - <input type="text" name="fax_num2" size="5"> - <input type="text" name="fax_num3" size="5"></td>
			</tr>
			
			<tr>
				<td class="b" width="150" rowspan="2" style="line-height: 82px">사업장 주소</td>
				<td colspan="3"><input type="text" name="zip_num" id="zip_num"> <input type="button" onclick="post_zip()" value="주소검색"></td>
			</tr>
			<tr> 
				<td>
					<input type="text" name="addr1" id="address">
					<input type="hidden" name="sido" id="sido">
					<input type="hidden" name="gugun" id="gugun">
					<input type="hidden" name="dong" id="dong">
				</td>
				<td class="b">상세주소</td>
				<td><input type="text" name="addr2" id="address_detail"> </td>
			</tr>
			</table> 
			<input type="reset" class="btn-gray" value="취소">
			<input type="button" class="btn-black" value="확인" onclick="go_save_cp()">
		</div>
	</form>
	</div>
<%@ include file="../footer.jsp" %>