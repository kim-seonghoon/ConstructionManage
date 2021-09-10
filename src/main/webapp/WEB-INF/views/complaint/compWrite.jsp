<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<div id="container" class="container bbs_main">
	<form id="com_form" action="comp_write" method="get">
	  <input type="hidden" name="user_id" value="${ComplaintsVO.user_id }">
	  <div class="notice-wrap">
	  	<div class="inner-container">
		<table width="1200" cellpadding="0" cellspacing="0" class="table">
			<tr> 
				<td width="100" class="b"><p>문의 분류</p></td>
				<td width="500"><select name="con_num" id="con_num">
						<option value="공사선택">공사 선택</option>
						<option value="1">도로 공사</option>
						<option value="2">상/하수 공사</option>
						<option value="3">공공건축물 공사</option>
						<option value="4">기타</option>
				</select></td>
				<td width="100" class="b"><p>문의 지역</p></td>
				<td><select onchange="categoryChange(this)" id="addr1" name="addr1">
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
					 <select id="addr2" name="addr2">
						<option value="구군">구.군</option>
					</select> 
			</tr>
			<tr>
				<td width="100" class="b"><p>제목</p></td>
				<td colspan="3"><input type="text" size="50" id="title" name="title"></td>
			</tr>
			<tr>
				<td class="b">내용</td>
				<td colspan="3">
				<textarea name="content" id="content" cols="60%" rows="5"></textarea></td>
		</table>
		<div id="buttons">
			 <input type="reset" class="btn-gray" value="취소">
			 <input type="button" class="btn-black" value="작성완료" onclick="go_save_comp()">
			 <input type="button" class="btn-black" value="목록" onclick="go_comp_list()">
		</div>
		</div>
	</div>
	</form>
</div>
<%@ include file="../footer.jsp" %>