<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<div class="container bbs_main">
 <h3>| 아이디 찾기</h3>
    <form method="post" id="member" action="find_id">
        <fieldset>
        <legend></legend>
          <label>이름</label>
          <input name="name" id="name" type="text" ><br> 
          <label>이메일</label> 
          <input name="email" id="email" type="text"><br> 
          <input type="submit" value="아이디 찾기">
        </fieldset>
        <div class="clear"></div>
        <div id="buttons">
            <input type="button" value="로그인" onclick="login_form()">
            <input type="button" value="비밀번호 찾기" onclick="go_find_pwd_form()">     
        </div>
    </form> 
    </div>
</div> 
</body>
</html>