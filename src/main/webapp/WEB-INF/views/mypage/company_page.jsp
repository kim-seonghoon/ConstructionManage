<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
	<div class="container bbs_main">
	   <h3>| 공사업체 정보수정</h3>
	   <div class="notice-wrap">
	   <form method="post" name="formm" id="myForm">
	   <div>
	        <table width="1200" cellpadding="0" cellspacing="0" class="table">
	        <tr>
	            <td width="150" class="b">아이디*</td>
	            <td colspan="3">${loginUser.cp_id}<input type="hidden" name="cp_id" value="${loginUser.cp_id}"> </td> 
	        </tr>
	        
	        <tr>
	            <td class="b">비밀번호*</td>
	            <td><input type="password" name="pwd" id="pwd"><input type="hidden" id="pwdCp" value="${loginUser.pwd}"></td>
	            <td class="b" width="150">비밀번호 확인*</td>
	            <td><input type="password" name="pwd_chk" id="pwd_chk"></td>
	        </tr>
	        
	        <tr>
	            <td class="b">공사 업체명*</td>
	            <td>${loginUser.cp_name}<input type="hidden" name="cp_name" value="${loginUser.cp_name}"></td>
	            <td class="b">사업자 번호*</td>
	            <td>${loginUser.cp_num}<input type="hidden" name="cp_num" value="${loginUser.cp_num}"></td>	
	        </tr>
	        
	        <tr>
	            <td class="b">담당자*</td>
	            <td><input type="text" name="admin_name" id="name" value="${loginUser.admin_name}">   </td>
	            <td class="b">담당자 연락처*</td>
	            <td><input type="text" name="admin_p1" id="admin_p1" value="${anum1}" size="5"> - <input type="text" name="admin_p2" id="admin_p2" value="${anum2}" size="5"> - <input type="text" name="admin_p3" id="admin_p3" value="${anum3}" size="5"></td>
	        </tr>
	        
	        
	        <tr>
	            <td width="150" class="b">이메일</td>
	            <td colspan="3"><input type="text" name="cp_email" id="cp_email" value="${loginUser.cp_email}"></td>
	        </tr>
	        
	        
	        <tr>
	            <td class="b">연락처*</td>
	            <td><input type="text" name="cp_p1" id="cp_p1" value="${cnum1}" size="5"> - <input type="text" name="cp_p2" id="cp_p2" value="${cnum2}" size="5"> - <input type="text" name="cp_p3" id="cp_p3" value="${cnum3}" size="5"></td>
	            <td class="b">팩스번호</td>
	            <td><input type="text" name="fax_num1" id="fax_num1" value="${fax1}" size="5" size="5"> - <input type="text" name="fax_num2" id="fax_num2" value="${fax2}" size="5"> - <input type="text" name="fax_num3" id="fax_num3" value="${fax3}" size="5"></td>
	        </tr>
	        
            <tr>
				<td width="150" rowspan="2" class="b">사업장 주소</td>
				<td colspan="3"><input type="text" name="zip_num" id="zip_num" value="${loginUser.zip_num}"><input type="button" value="주소검색" onclick="post_zip()">
			</tr>
	        <tr>
	        	<td>
	        		<input type="text" name="addr1" id="addr1" value="${addr1}">
	        		<input type="hidden" name="sido" id="sido">
					<input type="hidden" name="gugun" id="gugun">
					<input type="hidden" name="dong" id="dong"> 
	        	</td>
	            <td class="b">상세주소</td>
	            <td><input type="text" name="addr2" id="addr2" value="${addr2}"> </td>
	        </tr>
	        </table>
	            <input type="reset"  class="btn-gray" value="취소">
	            <input type="button" class="btn-black" value="회원탈퇴" onclick="deleteCp()">
	            <input type="submit" class="btn-black" value="정보 수정" onclick="updateCp()">
	    </div>
	    </form>
	    </div>
	</div>
    <%@ include file="../footer.jsp" %>