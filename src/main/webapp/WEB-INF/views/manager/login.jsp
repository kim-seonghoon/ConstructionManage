<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>| 관리자 로그인</h3>
    <form method="post" action="manager_login" id="manager">
    <input type="hidden" value="3" id="user_type" name="user_type">
        <fieldset>
        <legend></legend>
          <label>아이디</label>
          <input name="manager_id" id="manager_id" type="text" ><br> 
          <label>비밀번호</label> 
          <input name="pwd" id="pwd" type="password"><br> 
        </fieldset>
        <div class="clear"></div>
        <div id="buttons">
            <input type="submit" value="로그인">
        </div>
    </form>  
</body>
</html>