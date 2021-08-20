<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<h3>| 회원 가입</h3>
<form name="formmCp" id="formmCp" method="POST">
	<div>
		<table>
		<tr>
			<th>아이디*</th>
			<td colspan="3">
				<input type="text" name="cp_id" id="cp_id" value="${cp_id}"> 
				<input type="hidden" id="reid" name="reid" value="${reid}">
				<input type="button" value="중복체크" onclick="idcheckcp()"> 
			</td>
		</tr>
		
		<tr>
			<th>비밀번호*</th>
			<td><input type="password" name="pwd" id="pwd"></td>
			<th>비밀번호 확인*</th>
			<td><input type="password" name="pwd_chk" id="pwd_chk"></td>
		</tr>
		
		<tr>
			<th>공사 업체명*</th>
			<td><input type="text" name="cp_name" id="cp_name"></td>
			<th>사업자 번호*</th>
			<td><input type="text" name="cp_num1" id="cp_num1"> - <input type="text" name="cp_num2" id="cp_num2"> </td>	<!-- 사업자번호 id, name 확인 -->
		</tr>
		
		<tr>
			<th>담당자*</th>
			<td><input type="text" name="admin_name" id="admin_name">   </td>
			<th>담당자 연락처*</th>
			<td><input type="text" name="admin_p1" id="admin_p1"> - <input type="text" name="admin_p2" id="admin_p2"> - <input type="text" name="admin_p3" id="admin_p3"></td>
		</tr>
		
		<tr>
			<th>이메일</th>
			<td colspan="3"><input type="text" name="cp_email" id="cp_email"></td>
		</tr>
		
		
		<tr>
			<th>연락처*</th>
			<td><input type="text" name="cp_p1" id="cp_p1"> - <input type="text" id="cp_p2" name="cp_p2"> - <input type="text" id="cp_p3" name="cp_p3"></td>
			<th>팩스번호</th>
			<td><input type="text" name="fax_num1"> - <input type="text" name="fax_num2"> - <input type="text" name="fax_num3"></td>
		</tr>
		
		<tr>
			<th rowspan="2">사업장 주소</th>
			<td><input type="text" name="zip_num" id="zip_num"> <input type="button" onclick="post_zip()" value="주소검색"></td>
		</tr>
		<tr>
			<td><input type="text" name="addr1" id="address"> </td>
			<td>상세주소</td>
			<td><input type="text" name="addr2" id="address_detail"> </td>
		</tr>
		</table>
		<input type="reset" value="취소">
		<input type="button" value="확인" onclick="go_save_cp()">
	</div>
	</form>
</div>
</body>
</html>