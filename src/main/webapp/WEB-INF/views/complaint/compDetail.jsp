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
	                        <td width="100" class="b">문의 분류</td>
	                        <td width="500"><c:choose>
	                        	<c:when test="${ComplaintsVO.con_num==1}">도로공사</c:when>
	                        	<c:when test="${ComplaintsVO.con_num==2}">상/하수 공사</c:when>
	                        	<c:when test="${ComplaintsVO.con_num==3}">공공건축물 공사</c:when>
	                        	<c:when test="${ComplaintsVO.con_num==4}">기타</c:when>
	                        </c:choose> </td>
	                        <td width="100" class="b">문의 지역</td>
	                        <td>${ComplaintsVO.address}</td>
	                    </tr>
	                    <tr>
	                        <td width="100" class="b">제목</td> 
	                        <td>${ComplaintsVO.title}</td>
	                    </tr>
	                    <tr>
	                        <td class="b">작성일</td>
	                        <td>${ComplaintsVO.regdate}</td>
	                        <td class="b">조회수</td>
	                        <td>${ComplaintsVO.view_count}</td>
	                    </tr>
	                    <tr><td height="0" colspan="4">${ComplaintsVO.content}</td></tr>
	                    <c:choose>
	                    	<c:when test="${loginUser.name == ComplaintsVO.name}">
		                    	<c:if test="${ComplaintsVO.answer != '답변 없음'}">
		                    		<tr>
				                		<td colspan="4" class="b answer">답  변</td>
				                	</tr>
			                    	<tr>
				                		<td colspan="4" width="1200px">${ComplaintsVO.answer}</td>
				                	</tr>
				                </c:if>
	                    	</c:when>
	                    </c:choose>
	                </table>
	                <div id="buttons">
	                	<button class="btn-gray" onclick="go_comp_list()">목록</button>
	                    <button class="btn-black" onclick="comp_delete()">삭제</button>
	                    <button class="btn-black" onclick="comp_update()">수정</button>
	                </div>
                </div>
            </div>
            </form>
        </div>

<%@ include file="../footer.jsp" %>