<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복 체크</title>
<link href="CSS/subpage.css" rel="stylesheet">
<style type="text/css">
body{   
  background-color:#B96DB5;
  font-family: Verdana;
}
#wrap{     
  margin: 0 20px;
}
h1 {
  font-family: "Times New Roman", Times, serif;
  font-size: 45px;
  color: #CCC;
  font-weight: normal;
}
input[type=button], input[type=submit] {
  float: right;
}
</style>
<script type="text/javascript">
function idokcp(){
  opener.formm.cp_id.value="${cp_id}"; 
  opener.formm.reid.value="${cp_id}";
  self.close();
}
</script>
</head>
<body>
<div id="wrap">
  <h1>ID 중복확인</h1>
  <form method=post name=formm id="formm" style="margin-right:0 "
  		action="id_check_form_cp" >
    Company ID <input type=text name="cp_id" value="${cp_id}"> 
            <input type=submit value="검색" class="submit"><br>     
    <div style="margin-top: 20px">   
      <c:if test="${message == 1}">
        <script type="text/javascript">
          opener.document.formmCp.cp_id.value="";
        </script>
        ${cp_id}는 이미 사용중인 아이디입니다.
      </c:if>
      <c:if test="${message==-1}">
        ${cp_id}는 사용 가능한 ID입니다.
        <input type="button" value="사용" class="cancel" onclick="idokcp()">
      </c:if>
    </div>
  </form> 
</div>  
</body>
</html>