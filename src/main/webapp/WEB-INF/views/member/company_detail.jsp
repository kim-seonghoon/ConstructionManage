<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<h3>| 회원 가입</h3>
<form method="POST">
	<div>
		<table>
		<tr>
			<th>아이디*</th>
			<td colspan="3">
				<input type="text" name="user_id" id="user_id" value="${user_id}"> 
				<input type="hidden" id="reid" name="reid" value="${reid}">
				<input type="hidden" name="kind" id="kind" value="2">
				<input type="button" value="중복체크" onclick="idcheck()"> 
			</td>
		</tr>
		
		<tr>
			<th>비밀번호*</th>
			<td><input type="text" name="" id="pwd"></td>
			<th>비밀번호 확인*</th>
			<td><input type="text" name="" id="pwd_chk"></td>
		</tr>
		
		<tr>
			<th>공사 업체명*</th>
			<td><input type="text" name="" id="name"></td>
			<th>사업자 번호*</th>
			<td><input type="text"> - <input type="text"> </td>	<!-- 사업자번호 id, name 확인 -->
		</tr>
		
		<tr>
			<th>담당자*</th>
			<td><input type="text" name="" id="name">   </td>
			<th>담당자 연락처*</th>
			<td><input type="text"> - <input type="text"> - <input type="text"></td>
		</tr>
		
		
		<tr>
			<th>이메일</th>
			<td colspan="3"><input type="text" name="" id="email"></td>
		</tr>
		
		
		<tr>
			<th>연락처*</th>
			<td><input type="text"> - <input type="text"> - <input type="text"></td>
			<th>팩스번호</th>
			<td><input type="text"> - <input type="text"> - <input type="text"></td>
		</tr>
		
		<tr>
			<th rowspan="2">사업장 주소</th>
			<td><input type="text" name="zip_num" id="zip_num"> <input type="button" onclick="" value="주소검색"></td>
		</tr>
		<tr>
			<td><input type="text" name="addr1" id="address"> </td>
			<td>상세주소</td>
			<td><input type="text" name="addr2" id="address_detail"> </td>
		</tr>
		</table>
		<input type="reset" value="취소">
		<input type="submit" value="확인">
	</div>
	</form>
</div>
</body>
</html>