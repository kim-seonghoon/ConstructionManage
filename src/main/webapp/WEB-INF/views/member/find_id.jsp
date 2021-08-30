<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<body>
 <h3>| 아이디 찾기</h3>
    <form method="post" id="member" action="find_id">
        <fieldset>
        <legend></legend>
          <label>이름</label>
          <input name="name" type="text" ><br> 
          <label>연락처</label> 
          <input name="phone" type="text"><br> 
          <input type="submit" value="아이디 찾기" class="submit">
        </fieldset>
        <div class="clear"></div>
        <div id="buttons">
            <input type="button" value="로그인" onclick="login_form()">
            <input type="button" value="비밀번호 찾기" onclick="go_find_pwd_form()">     
        </div>
    </form>  
</body>
</html>