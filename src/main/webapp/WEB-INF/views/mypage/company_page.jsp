<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
	<div class="container bbs_main">
	   <h3>| 마이페이지</h3>
	    <form method="post" name="formm" id="myForm">
	    <div>
	        <table>
	        <tr>
	            <td>아이디*</td>
	            <td>${loginUser.cp_id}<input type="hidden" name="cp_id" value="${loginUser.cp_id}"> </td> 
	        </tr>
	        
	        <tr>
	            <td>비밀번호*</td>
	            <td><input type="password" name="pwd" id="pwd"><input type="hidden" id="pwdCp" value="${loginUser.pwd}"></td>
	            <td>비밀번호 확인*</td>
	            <td><input type="password" name="pwd_chk" id="pwd_chk"></td>
	        </tr>
	        
	        <tr>
	            <td>공사 업체명*</td>
	            <td>${loginUser.cp_name}<input type="hidden" name="cp_name" value="${loginUser.cp_name}"></td>
	            <td>사업자 번호*</td>
	            <td>${loginUser.cp_num}<input type="hidden" name="cp_num" value="${loginUser.cp_num}"></td>	
	        </tr>
	        
	        <tr>
	            <td>담당자*</td>
	            <td><input type="text" name="admin_name" id="name" value="${loginUser.admin_name}">   </td>
	            <td>담당자 연락처*</td>
	            <td><input type="text" name="admin_p1" id="admin_p1" value="${anum1}"> - <input type="text" name="admin_p2" id="admin_p2" value="${anum2}"> - <input type="text" name="admin_p3" id="admin_p3" value="${anum3}"></td>
	        </tr>
	        
	        
	        <tr>
	            <td>이메일</td>
	            <td><input type="text" name="cp_email" id="cp_email" value="${loginUser.cp_email}"></td>
	        </tr>
	        
	        
	        <tr>
	            <td>연락처*</td>
	            <td><input type="text" name="cp_p1" id="cp_p1" value="${cnum1}"> - <input type="text" name="cp_p2" id="cp_p2" value="${cnum2}"> - <input type="text" name="cp_p3" id="cp_p3" value="${cnum3}"></td>
	            <td>팩스번호</td>
	            <td><input type="text" name="fax_num1" id="fax_num1" value="${fax1}"> - <input type="text" name="fax_num2" id="fax_num2" value="${fax2}"> - <input type="text" name="fax_num3" id="fax_num3" value="${fax3}"></td>
	        </tr>
	        
            <tr>
				<th rowspan="2" rowspan="2">사업장 주소</th>
				<td colspan="3"><input type="text" name="zip_num" id="zip_num" value="${loginUser.zip_num}"><input type="button" value="주소검색" onclick="post_zip()">
			</tr>
	        <tr>
	        	<td>
	        		<input type="text" name="addr1" id="addr1" value="${addr1}">
	        		<input type="hidden" name="sido" id="sido">
					<input type="hidden" name="gugun" id="gugun">
					<input type="hidden" name="dong" id="dong"> 
	        	</td>
	            <td>상세주소</td>
	            <td><input type="text" name="addr2" id="addr2" value="${addr2}"> </td>
	        </tr>
	        </table>
	            <input type="reset" value="취소">
	            <input type="button" value="회원탈퇴" onclick="deleteCp()">
	            <input type="submit" value="정보 수정" onclick="updateCp()">
	    </div>
	    </form>
	</div>
</div>
</body>
</html>