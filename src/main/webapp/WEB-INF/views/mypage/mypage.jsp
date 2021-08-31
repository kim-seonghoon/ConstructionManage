<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../header.jsp" %>
	<div class="container bbs_main">
	<form action="updateUser" method="post">
        <div>
            <table>
            <tr>
                <td>아이디*</td>
                <td colspan="3">${loginUser.user_id} </td>
            </tr>
            
            <tr>
                <td>비밀번호*</td>
                <td><input type="password" name="" id="pwd"></td>
                <td>비밀번호 확인*</td>
                <td><input type="password" name="" id="pwd_chk"></td>
            </tr>
            
            <tr>
                <td>이름</td>
                <td colspan="3">${loginUser.name }</td>
            </tr>
            
            <tr>
                <td>생년월일*</td>
                <td colspan="3">${loginUser.birth_date}</td>
            </tr>
            
            <tr>
                <td>이메일</td>
                <td colspan="3"><input type="text" name="email" id="email" value="${loginUser.email}"></td>
            </tr>
            
            <tr>
                <td>연락처</td>
                <td colspan="3"><input type="text" name="num1" value="0${num1}"> - <input type="text" name="num2" value="${num2}"> - <input type="text" name="num3" value="${num3}"> </td> 
            </tr>
            
            <tr>
				<th rowspan="2" rowspan="2">주소</th>
				<td colspan="3"><input type="text" name="zip_num" id="zip_num" value="${loginUser.zip_num}"><input type="button" value="주소검색" onclick="post_zip()">
			</tr>
			<tr>
				<td>
					<input type="text" name="addr1" id="address" value="${addr1}">
					<input type="hidden" name="sido" id="sido" value="${loginUser.sido}">
					<input type="hidden" name="gugun" id="gugun" value="${loginUser.gugun}">
					<input type="hidden" name="dong" id="dong" value="${loginUser.dong}">
				</td>
				<th>상세주소</th>
				<td><input type="text" name="addr2" id="address_detail" value="${addr2}"> </td>
			</tr>
            </table>
            <div class="button">
	            <input type="reset" value="취소">
	            <input type="button" value="회원탈퇴">
	            <input type="submit" value="정보 수정">
        	</div>
        </div>
        </form>
	</div>
</div>
</body>
</html>