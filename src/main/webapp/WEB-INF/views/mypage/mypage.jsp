<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<body>
 <form action="updateUser" method="post">
        <div>
            <table>
            <tr>
                <td>아이디*</td>
                <td>${loginUser.user_id} </td>
            </tr>
            
            <tr>
                <td>비밀번호*</td>
                <td><input type="password" name="" id="pwd"></td>
                <td>비밀번호 확인*</td>
                <td><input type="password" name="" id="pwd_chk"></td>
            </tr>
            
            <tr>
                <td>이름</td>
                <td>${loginUser.name }</td>
            </tr>
            
            <tr>
                <td>생년월일*</td>
                <td>${loginUser.birth_date}</td>
            </tr>
            
            <tr>
                <td>이메일</td>
                <td><input type="text" name="email" id="email" value="${loginUser.email }"></td>
            </tr>
            
            <tr>
                <td>연락처</td>
                <td><input type="text" name="num1"> - <input type="text" name="num2"> - <input type="text" name="num3"> </td> 
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
            <div class="button">
            <input type="reset" value="취소">
            <input type="submit" value="확인">
        </div>
        </div>
        </form>

</body>
</html>