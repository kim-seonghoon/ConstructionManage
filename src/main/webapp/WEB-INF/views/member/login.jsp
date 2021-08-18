<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<body>
 <h3>| 로그인</h3>
    <form method="post" action="login">
        <fieldset>
        <legend></legend>
          <label>User ID</label>
          <input name="id" type="text" value="${id}"><br> 
          <label>Password</label> 
          <input name="pwd" type="password"><br> 
          <input type="submit" value="로그인" class="submit">
        </fieldset>
        <div class="clear"></div>
        <div id="buttons">
            <input type="button" value="아이디 찾기" class="cancel"
                 onclick="location='contract'">
            <input type="button" value="비밀번호 찾기" class="submit"
                 onclick="find_id_form()">     
        </div>
    </form>  

</body>
</html>