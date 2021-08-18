<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<body>
 <form action="updateUser">
        <div>
            <table>
            <tr>
                <td>아이디*</td>
                <td>${users.user_id} </td>
            </tr>
            
            <tr>
                <td>비밀번호*</td>
                <td><input type="text" name="" id="pwd"></td>
                <td>비밀번호 확인*</td>
                <td><input type="text" name="" id="pwd_chk"></td>
            </tr>
            
            <tr>
                <td>이름</td>
                <td><input type="text" name="" id="name" readonly></td>
            </tr>
            
            <tr>
                <td>생년월일*</td>
                <td>${users.birthdate}</td>
            </tr>
            
            <tr>
                <td>이메일</td>
                <td><input type="text" name="" id="email"></td>
            </tr>
            
            <tr>
                <td>연락처</td>
                <td><input type="text"> - <input type="text"> - <input type="text"> </td> <!-- 번호 id 추가해야함 -->
            </tr>
            
            <tr>
                <td>주소</td>
                <td><input type="text" name="" id="address"> </td>
                
            </tr>
            <tr>
                <td>상세주소</td>
                <td><input type="text" name="" id="address_detail"> </td>
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