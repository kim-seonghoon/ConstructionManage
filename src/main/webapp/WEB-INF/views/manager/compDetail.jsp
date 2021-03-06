<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
	<div class="jumbotron_small">
		<div class="container">
			<h1>민원 관리</h1>
		</div>
	</div>
	
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
	                        <td><fmt:formatDate value="${ComplaintsVO.regdate}" pattern="yyyy-MM-dd"/></td>
	                        <td class="b"><p>조회수</p></td>
	                        <td>${ComplaintsVO.view_count}</td>
	                    </tr>
	                    <tr><td height="0" colspan="4">${ComplaintsVO.content}</td></tr>
	                    <c:if test="${ComplaintsVO.answer != '답변 없음'}">
			                <tr>
					        	<td colspan="4" class="b answer">답  변</td>
					        </tr>
				            <tr>
					        	<td colspan="4" width="1200px">${ComplaintsVO.answer}</td>
					        </tr>
				        </c:if>
	                </table>
	                <c:choose>
	                	<c:when test="${ComplaintsVO.answer == '답변 없음'}">
		                <div id="buttons">
		                	<button class="btn-gray" onclick="go_comp_list_mg()">목록</button>
		                    <button class="btn-black" onclick="go_answer_form()">답변</button>
		                    <button class="btn-black" onclick="comp_delete()">삭제</button>
		                </div>
		                </c:when>
		                <c:otherwise>
		                	<button class="btn-gray" onclick="go_comp_list_mg()">목록</button>
		                    <button class="btn-black" onclick="go_answer_mod()">답변 수정</button>
		                    <button class="btn-black" onclick="go_answer_delete()">답변 삭제</button>
		                    <button class="btn-black" onclick="comp_delete()">삭제</button>
		                </c:otherwise>
	                </c:choose>
                </div>
            </div>
            </form>
        </div>

<%@ include file="../footer.jsp" %>