<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <%@ include file="../header.jsp" %>
	<div class="container bbs_main">
		<div>
		<h3>| 회원 가입</h3>
		<form id="join" name="formm" method="post">
		<div>
			<table>
			<tr>
				<th>아이디*</th>
				<td colspan="3">
					<input type="text" name="user_id" id="user_id" value="${user_id}"> 
					<input type="hidden" id="reid" name="reid" value="${reid}">
					<input type="button" value="중복체크" onclick="idcheck()"> 
				</td>
			</tr>
			
			<tr>
				<th>비밀번호*</th>
				<td><input type="password" name="pwd" id="pwd"></td>
				<th>비밀번호 확인*</th>
				<td><input type="password" name="pwd_chk" id="pwd_chk"></td>
			</tr>
			
			<tr>
				<th>이름</th>
				<td colspan="3"><input type="text" name="name" id="name"></td>
			</tr>
			
			<tr>
				<th>생년월일*</th>
				<td colspan="3"><input type="text" name="year" id="year">년
					<input type="text" name="month" id="month">월
					<input type="text" name="day" id="day">일
		        </td>
			</tr>
			
			<tr>
				<th>이메일</th>
				<td colspan="3"><input type="text" name="email" id="email"></td>
			</tr>
			
			<tr>
				<th>연락처</th> 
				<td colspan="3"><input type="text" name="num1"> - <input type="text" name="num2"> - <input type="text" name="num3"> </td> <!-- 번호 id 추가해야함 -->
			</tr>
			
			<tr>
				<th rowspan="2">주소</th>
				<td colspan="3"><input type="text" name="zip_num" id="zip_num"><input type="button" value="주소검색" onclick="post_zip()">
			</tr>
			<tr>
				<td>
					<input type="text" name="addr1" id="address">
					<input type="hidden" name="sido" id="sido">
					<input type="hidden" name="gugun" id="gugun">
					<input type="hidden" name="dong" id="dong">
				</td>
				<th>상세주소</th>
				<td><input type="text" name="addr2" id="address_detail"> </td>
			</tr>
			</table>
			<input type="reset" value="취소">
			<input type="submit" value="확인" onclick="go_save()">
		</div>
		</form>
	</div>
</div>
</body>
</html>