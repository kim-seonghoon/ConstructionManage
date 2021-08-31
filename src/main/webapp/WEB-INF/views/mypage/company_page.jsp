<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../header.jsp" %>
	<div class="container bbs_main">
	   <h3>| 마이페이지</h3>
	    <form action="updateCompany">
	    <div>
	        <table>
	        <tr>
	            <td>아이디*</td>
	            <td>${company.cp_id} </td> 
	        </tr>
	        
	        <tr>
	            <td>비밀번호*</td>
	            <td><input type="text" name="" id="pwd"></td>
	            <td>비밀번호 확인*</td>
	            <td><input type="text" name="" id="pwd_chk"></td>
	        </tr>
	        
	        <tr>
	            <td>공사 업체명*</td>
	            <td>${company.cp_name} </td>
	            <td>사업자 번호*</td>
	            <td>${company.cp_num} </td>	
	        </tr>
	        
	        <tr>
	            <td>담당자*</td>
	            <td><input type="text" name="admin_name" id="name" value="${company.admin_name}">   </td>
	            <td>담당자 연락처*</td>
	            <td><input type="text" name="anum1" value="0${anum1}"> - <input type="text" name="anum1" value="${anum1}"> - <input type="text" name="anum1" value="${anum1}"></td>
	        </tr>
	        
	        
	        <tr>
	            <td>이메일</td>
	            <td><input type="text" name="cp_email" id="cp_email" value="${company.cp_email}"></td>
	        </tr>
	        
	        
	        <tr>
	            <td>연락처*</td>
	            <td><input type="text" name="cnum1" value="0${cnum1}"> - <input type="text" name="cnum2" value="${cum2}"> - <input type="text" name="cnum3" value="${cum3}"></td>
	            <td>팩스번호</td>
	            <td><input type="text"> - <input type="text"> - <input type="text"></td>
	        </tr>
	        
	        <tr>
	            <td>사업장 주소</td>
	            <td><input type="text" name="" id="address"> </td>
	            
	        </tr>
	        <tr>
	            <td>상세주소</td>
	            <td><input type="text" name="" id="address_detail"> </td>
	        </tr>
	        </table>
	        <input type="reset" value="취소">
	        <input type="submit" value="확인">
	    </div>
	    </form>
	</div>
</div>
</body>
</html>