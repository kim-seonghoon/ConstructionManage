<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>      
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="css/bootstrap-3.3.2-dist/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>우편 번호 검색</title>
<link href="CSS/subpage.css" rel="stylesheet">
<style type="text/css">
body{   
   background-color:#333;
}
#popup{   
   padding: 0 10px;
}
#popup h1 {
   font-size: 45px;
   text-align: center;
   margin-top: 10px;
   color: #CCC;
   font-weight: normal;
}
#popup .search {
	width: 100%;
	display: flex;	
	flex-direction: row;
	justify-content: center;
	align-items: center;
	flex-wrap: nowrap;
	margin-top: 30px;
	margin-bottom: 30px;
}
#popup .form-control.textarea {
	font-size: 20px;
	width: 50%;
}
#popup input::placeholder{
	font-size: 14px;
}
#popup .form-control.btn {
	width: 10%;
	text-align: center;
	line-height: 100%;
	text-align: center;
}
.btn, .btn:focus, .btn:hover, .btn-gray, .btn-black {
    color: #fff;
    background-color: #888;
    padding: 10px;
    font-size: 14px;
    text-align: center;
    vertical-align: center;
    height: 40px;
    width: 80px;
    border: 0;
    margin-top: 0;
    margin-left: 3px;
}

.btn-gray:focus, .btn-gray:hover {
    background-color: #999;
}
table#zipcode {
    border-collapse:collapse;    /* border 사이의 간격 없앰 */   
    border-top: 3px solid  #fff;  
    border-bottom: 3px solid  #fff;
    width: 100%;  
    margin-top: 13px; 
}
table#zipcode th, table#zipcode td{   
   text-align: center;
   line-height: 100%;
   border-bottom: 1px solid  #fff;  
   color:#FFF;   
}
table th, td{
  padding: 10px;
}
table#zipcode  a{
   display:block; 
    height:20px;
    text-decoration:none;
    color:#fff;
    padding: 10px;
}
table#zipcode a:hover{
    color: yellow;
    font-weight: bold;
}
</style>
<script type="text/javascript">
function result(zip_num,sido,gugun,dong) {
   opener.document.formm.zip_num.value=zip_num;
   opener.document.formm.addr1.value=sido+" "+gugun+" "+dong;
   opener.document.formm.sido.value=sido;
   opener.document.formm.gugun.value=gugun;
   opener.document.formm.dong.value=dong;
   self.close();
};
</script>
</head>
<body>
<div id="popup">
  <h1>우편번호검색</h1>
	<form method=post name=formm action="find_zip_num">
		<div class="search">
		<input type="text" name="dong" class="form-control textarea" id="search02" placeholder="동이름을 입력해주세요  ex)방배동 -> 방배"> <input type="submit" class="btn-gray" value="찾기">
		</div>
	</form>
  <table id="zipcode">
    <tr>
      <th>우편번호</th>
      <th>주소</th>
    </tr>
    <c:forEach items="${addressList}" var="addressVO">
    <tr>
      	<td>${addressVO.zip_num}</td>
        <td>
          <a href="#" onclick="return result('${addressVO.zip_num}'
			,'${addressVO.sido}', '${addressVO.gugun}','${addressVO.dong}')">
            ${addressVO.sido} ${addressVO.gugun} ${addressVO.dong} 
          </a>
        </td>
    </tr>
    </c:forEach>
  </table>
</div>
</body>
</html>