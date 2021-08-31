<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../header.jsp" %>
<div class="container bbs_main">
	<form id="member">
	<table>
		<tr>
			<td>아이디는 ${user_id } 입니다</td>
		</tr>	
		<tr><td><input type="button" value="로그인" onclick="login_form()"> </td> </tr>
	</table>
	</form>
</div>
</div>
</body>
</html>