<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
	<div class="container bbs_main">
		<h3 class="sub_title">| 회원 정보수정</h3>
		<div class="notice-wrap">
		<form name="formm" id="myForm" method="post">
		<input type="hidden" name="user_id" value="${loginUser.user_id}">
	    	<table width="1200" cellpadding="0" cellspacing="0" class="table">
	            <tr>
	                <td width="120" class="b">아이디*</td>
	                <td colspan="3">${loginUser.user_id} </td>
	            </tr>
	            
	            <tr>
	                <td class="b">비밀번호*</td>
	                <td>
	                	<input type="password" name="pwd" id="pwd">
	                	<input type="hidden" name="pwdUser" id="pwdUser" value="${loginUser.pwd}">
	                </td>
	                <td class="b" width="120">비밀번호 확인*</td>
	                <td><input type="password" name="pwd_chk" id="pwd_chk"></td>
	            </tr>
	            
	            <tr>
	                <td width="120" class="b">이름</td>
	                <td colspan="3">${loginUser.name}</td>
	            </tr>
	            
	            <tr>
	                <td width="120" class="b">생년월일*</td>
	                <td colspan="3">${loginUser.birth_date}</td>
	            </tr>
	            
	            <tr>
	                <td width="120" class="b">이메일</td>
	                <td colspan="3"><input type="text" name="email" id="email" value="${loginUser.email}"></td>
	            </tr>
	            
	            <tr>
	                <td width="120" class="b">연락처</td>
	                <td colspan="3"><input type="text" name="num1" id="num1" value="${num0}" size="5"> - <input type="text" name="num2" id="num2" value="${num1}" size="5"> - <input type="text" name="num3" id="num3" value="${num2}" size="5"> </td> 
	            </tr>
	            
	            <tr>
					<td width="120" rowspan="2" class="b" style="line-height: 82px">주소</td>
					<td colspan="3"><input type="text" name="zip_num" id="zip_num" value="${loginUser.zip_num}"><input type="button" value="주소검색" onclick="post_zip()">
				</tr>
				<tr>
					<td>
						<input type="text" name="addr1" id="addr1" value="${addr1}">
						<input type="hidden" name="sido" id="sido" value="${loginUser.sido}">
						<input type="hidden" name="gugun" id="gugun" value="${loginUser.gugun}">
						<input type="hidden" name="dong" id="dong" value="${loginUser.dong}">
					</td>
					<td class="b">상세주소</td>
					<td><input type="text" name="addr2" id="addr2" value="${addr2}"> </td>
				</tr>
	        </table>
	            <div class="button">
		            <input type="reset" class="btn-gray" value="취소">
		            <input type="button" class="btn-red" value="회원탈퇴" onclick="deleteUser()">
		            <input type="submit" class="btn-black" value="정보 수정" onclick="updateUser()">
	        	</div>
		</form>
       	</div>
	</div>
    <%@ include file="../footer.jsp" %>