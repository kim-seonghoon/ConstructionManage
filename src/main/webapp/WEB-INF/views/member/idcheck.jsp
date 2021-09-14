<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<head>
<meta charset="UTF-8">
<title>아이디 중복 체크</title> 
<link href="CSS/subpage.css" rel="stylesheet">
<style type="text/css">

.btn, .btn:focus, .btn:hover, .btn-gray, .btn-black {
    color: #fff;
    background-color: #999;
    padding: 10px;
    font-size: 12px;
    text-align: center;
    vertical-align: center;
    height: 40px;
    width: 80px;
    border: 0;
}

.btn-gray:focus, .btn-gray:hover {
    background-color: #999;
}

.btn-black:focus, .btn-black:hover {
    background-color: #000;
    
}

.btn-black, .btn-black:focus, .btn-black:hover {
    color: #fff;
    background-color: #000;
    padding: 10px;
    font-size: 12px;
    text-align: center;
}

#head{
   background-color: #424242;
   color:white;
   margin: 0;
   padding: 1mm;
}

.title{
   margin-left: 5%;
}

#wrap{     
  margin: 10px 20px;
}

.id_chk{
   width: 250px;
    height : 30px;
    border: 2px solid #333;
    box-sizing: content-box;
    margin-left: 5%;
}

.use_id{
   margin-left: 5%;
   font-size: 15px;
   font-weight: bold;
   line-height: 2.5;
}

input[type=button], input[type=submit] {
  float: right;
}
</style>
<script type="text/javascript">
function idok(){
  opener.formm.user_id.value="${user_id}"; 
  opener.formm.reid.value="${user_id}";
  self.close();
}
</script>
</head>
<body>
   <div id="head">
  <h3 class="title">아이디 중복확인</h3>
  </div>
<div id="wrap">
  <form method=post name=formm id="formm" style="margin-right:0 "
        action="id_check_form" >
            <input type=text name="user_id" class="id_chk" value="${user_id}"> 
            <input type=submit value="중복확인" class="form-control btn"><br>     
    <div style="margin-top: 20px">   
      <c:if test="${message == 1}">
        <script type="text/javascript">
          opener.document.formm.id.value="";
        </script>
        <p class="use_id">${user_id}는 이미 사용중인 아이디입니다.</p>
      </c:if>
      <c:if test="${message==-1}">
       <p class="use_id">${user_id}는 사용 가능한 ID입니다.
        <input type="button" value="사용하기" class="form-control btn" onclick="idok()"></p>
      </c:if>
    </div>
  </form>
</div>  
</body>
</html>