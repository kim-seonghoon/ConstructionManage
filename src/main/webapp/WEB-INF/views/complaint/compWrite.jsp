<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<div id="content">
	<form id="com_form" action="comp_update" method="POST">
		<input type="hidden" name="con_seq" value="ComplaintsVO.con_seq">
		<input type="hidden" name="com_seq" value="ComplaintsVO.com_seq">
		<table>
			<tr>
				<th><p>문의 분류</p></th>
				<td><select name="con_num">
						<option value="0">공사 선택</option>
						<option value="1">도로 공사</option>
						<option value="2">상/하수 공사</option>
						<option value="3">공공건축물 공사</option>
						<option value="4">기타</option>
				</select></td>
				<th><p>문의 지역</p></th>
				<td><select onchange="categoryChange(this)" name="addr1">
						<option value="시도">시.도</option>
						<option value="서울">서울</option>
						<option value="경기">경기</option>
						<option value="대전">대전</option>
						<option value="대구">대구</option>
						<option value="부산">부산</option>
						<option value="광주">광주</option>
						<option value="인천">인천</option>
						<option value="울산">울산</option>
						<option value="충북">충북</option>
						<option value="강원">강원</option>
						<option value="경남">경남</option>
					</select>
					 <select id="good" name="addr2">
						<option value="구군">구.군</option>
					</select> 
			</tr>
			<tr>
				<th><p>제목</p></th>
				<td colspan="3"><input type="text" name="title"></td>
			</tr>
			<tr>
				<td colspan="3">
				<textarea name="content" id="content" cols="60" rows="10"></textarea></td>
		</table>
		<div id="buttons">
			 <input type="button" value="취소">
			 <input type="submit" value="작성완료" onclick="go_save">
			 <input type="button" value="목록">
		</div>
	</form>
</div>
</div>
</body>
</html>