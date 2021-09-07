<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
	
        <div id="container" class="container bbs_main">
            <form id="comp_detail_form" method="POST">
            <input type="hidden" name="com_seq" value="${ComplaintsVO.com_seq}">
            <input type="hidden" name="user_id" value="${ComplaintsVO.user_id }">
            <div class="notice-wrap">
            	<div class="inner-container">
	                <table width="1200" cellpadding="0" cellspacing="0" class="table">
	                    <tr> 
	                        <td width="100" class="b"><p>문의 분류</p></td>
	                        <td width="500"><c:choose>
	                        	<c:when test="${ComplaintsVO.con_num==1}">도로공사</c:when>
	                        	<c:when test="${ComplaintsVO.con_num==2}">상/하수 공사</c:when>
	                        	<c:when test="${ComplaintsVO.con_num==3}">공공건축물 공사</c:when>
	                        	<c:when test="${ComplaintsVO.con_num==4}">기타</c:when>
	                        </c:choose> </td>
	                        <td width="100" class="b"><p>문의 지역</p></td>
	                        <td>${ComplaintsVO.address}</td>
	                    </tr>
	                    <tr>
	                        <td width="100" class="b"><p>제목</p></td> 
	                        <td>${ComplaintsVO.title}</td>
	                    </tr>
	                    <tr>
	                        <td class="b"><p>작성일</p></td>
	                        <td>${ComplaintsVO.regdate}</td>
	                        <td class="b"><p>조회수</p></td>
	                        <td>${ComplaintsVO.view_count}</td>
	                    </tr>
	                    <tr><td height="0" colspan="4">${ComplaintsVO.content}</td></tr>
	                </table>
	                <div id="buttons">
	                	<button class="btn-gray" onclick="go_comp_list_mg()">목록</button>
	                    <button class="btn-black" onclick="">답변</button>
	                    <button class="btn-black" onclick="comp_delete()">삭제</button>
	                </div>
                </div>
            </div>
            </form>
        </div>

<%@ include file="../footer.jsp" %>