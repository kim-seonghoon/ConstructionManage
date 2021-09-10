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
function idokcp(){
  opener.formm.cp_id.value="${cp_id}"; 
  opener.formm.reid.value="${cp_id}";
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
  		action="id_check_form_cp" >
    Company ID <input type=text name="cp_id" value="${cp_id}"> 
            <input type=submit value="검색" class="form-control btn"><br>     
    <div style="margin-top: 20px">   
      <c:if test="${message == 1}">
        <script type="text/javascript">
          opener.document.formmCp.cp_id.value="";
        </script>
        ${cp_id}는 이미 사용중인 아이디입니다.
      </c:if>
      <c:if test="${message==-1}">
        ${cp_id}는 사용 가능한 ID입니다.
        <input type="button" value="사용" class="form-control btn" onclick="idokcp()">
      </c:if>
    </div>
  </form> 
</div>  
</body>
</html>