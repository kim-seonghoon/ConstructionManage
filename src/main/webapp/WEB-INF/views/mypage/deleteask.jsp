<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function delete_exit() {
   self.close();
};
</script>
</head>
<body>
<form action="log_out">
탈퇴 신청이 완료되었습니다.<br>
<input type="button" value="닫기" onclick="delete_exit()">
</form>
</body>
</html>
