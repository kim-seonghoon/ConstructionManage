<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
        <div id="container" class="container bbs_main">
        	<div class="notice-wrap">
            <form id="com_detail_form" action="comp_update" method="POST"> 
            <input type="hidden" name="com_seq" value="${ComplaintsVO.com_seq }">
                <table width="1200" cellpadding="0" cellspacing="0" class="table">
                    <tr> 
                        <td width="100" class="b"><p>문의 분류</p></th>
                        <td width="500">
                        	<c:set var="c_num" value="${ComplaintsVO.con_num}"/>
                        <select name="con_num" id="con_num">
                            <option value="1" <c:if test="${c_num == 1}">selected="selected"</c:if>>도로 공사</option>
                            <option value="2" <c:if test="${c_num == 2}">selected="selected"</c:if>>상/하수 공사</option>
                            <option value="3" <c:if test="${c_num == 3}">selected="selected"</c:if>>공공건축물 공사</option>
                            <option value="4" <c:if test="${c_num == 4}">selected="selected"</c:if>>기타</option>
                        </select>
                        </td>
                        <td width="100" class="b"><p>문의 지역</p></th>
                      	<td colspan="2"><select onchange="categoryChange(this)" id="addr1" name="addr1">
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
					</select></td>
                    </tr>
                    <tr>
                        <td width="100" class="b"><p>제목</p></td>
                        <td colspan="3"><input type="text" name="title" id="title" value="${ComplaintsVO.title}"></td>
                    </tr>
                    <tr>
                    	<td class="b">내용</td>
                        <td colspan="4"><textarea name="content" id="content" cols="100%" rows="4">${ComplaintsVO.content}</textarea></td>
                </table>
                <div id="buttons">
                    <input type="button" class="btn-gray" value="취소">
                    <input type="button" class="btn-black" value="삭제하기" onclick="comp_delete()">
                    <input type="submit" class="btn-black" value="수정하기">
                </div>
            </form>
            </div>
        </div>
<%@ include file="../footer.jsp" %>