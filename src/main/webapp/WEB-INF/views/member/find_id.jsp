<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<body>
 <h3>| 아이디 찾기</h3>
    <form method="post" action="find_id">
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
            <input type="button" value="로그인" class="cancel"
                 onclick="location='contract'">
            <input type="button" value="비밀번호 찾기" class="submit"
                 onclick="find_id_form()">     
        </div>
    </form>  
</body>
</html>