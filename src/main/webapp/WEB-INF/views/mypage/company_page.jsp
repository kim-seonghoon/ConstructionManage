<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<body>
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
            <td><input type="text" name="" id="name">   </td>
            <td>담당자 연락처*</td>
            <td><input type="text"> - <input type="text"> - <input type="text"></td>
        </tr>
        
        
        <tr>
            <td>이메일</td>
            <td><input type="text" name="" id="email"></td>
        </tr>
        
        
        <tr>
            <td>연락처*</td>
            <td><input type="text"> - <input type="text"> - <input type="text"></td>
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

</body>
</html>