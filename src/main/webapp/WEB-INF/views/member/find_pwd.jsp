<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<body>
 <h3>| 비밀번호 찾기</h3>
    <form method="post" action="find_pwd" id="member">
        <fieldset>
        <legend></legend>
          <label>아이디</label>
          <input name="user_id" id="name" type="text" ><br> 
          <label>이름</label>
          <input name="name" type="text">
          <label>이메일</label> 
          <input name="email" type="text"><br> 
          <input type="submit" value="비밀번호 찾기">
        </fieldset>
        <div class="clear"></div>
        <div id="buttons">
            <input type="button" value="로그인" onclick="login_form()">
            <input type="button" value="아이디 찾기" onclick="go_find_id_form()">     
        </div>
    </form>  
</body>
</html>