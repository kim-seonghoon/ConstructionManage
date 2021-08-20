<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <%@ include file="../header.jsp" %>
<!DOCTYPE html>
<div>
<h3>| 회원 가입</h3>
<form action="join">
<div>
	<table>
	<tr>
		<td>아이디*</td>
		<td><input type="text" name="user_id" id="user_id"> <input type="button"    value="중복 체크"  class="dup" onclick="idcheck()"><br> </td>
	</tr>
	
	<tr>
		<td>비밀번호*</td>
		<td><input type="text" name="pwd" id="pwd"></td>
		<td>비밀번호 확인*</td>
		<td><input type="text" name="pwd_chk" id="pwd_chk"></td>
	</tr>
	
	<tr>
		<td>이름</td>
		<td><input type="text" name="name" id="name"></td>
	</tr>
	
	<tr>
		<td>생년월일*</td>
		<td><input type="text" name="year" id="year">년
			<input type="text" name="month" id="month">월
			<input type="text" name="day" id="day">일
        </td>
	</tr>
	
	<tr>
		<td>이메일</td>
		<td><input type="text" name="email" id="email"></td>
	</tr>
	
	<tr>
		<td>연락처</td>
		<td><input type="text" name="num1"> - <input type="text" name="num2"> - <input type="text" name="num3"> </td> <!-- 번호 id 추가해야함 -->
	</tr>
	
	<tr>
		<td>주소</td>
		<td><input type="text" name="addr1" id="address"> </td>
		
	</tr>
	<tr>
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