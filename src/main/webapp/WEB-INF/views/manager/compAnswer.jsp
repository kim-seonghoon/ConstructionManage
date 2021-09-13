<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
	<div class="jumbotron_small">
		<div class="container">
			<h1>민원 관리</h1>
		</div>
	</div>
	
        <div id="container" class="container bbs_main">
            <div class="notice-wrap">
            	<div class="inner-container">
            	<form id="answerForm" method="POST" action="write_answer">
            	    <input type="hidden" name="com_seq" value="${ComplaintsVO.com_seq}">
            		<input type="hidden" name="user_id" value="${ComplaintsVO.user_id }">
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
	                        <td colspan="3">${ComplaintsVO.title}</td>
	                    </tr>
	                    <tr>
	                        <td class="b">작성일</td>
	                        <td><fmt:formatDate value="${ComplaintsVO.regdate}" pattern="yyyy-MM-dd"/></td>
	                        <td class="b">조회수</td>
	                        <td>${ComplaintsVO.view_count}</td>
	                    </tr>
	                    <tr><td height="0" colspan="4">${ComplaintsVO.content}</td></tr>
	                    <tr>
	                    	<td colspan="4" class="b answer">답변하기</td>
	                    </tr>
	                    <tr>
	                    <c:choose>
			            <c:when test="${ComplaintsVO.answer != '답변 없음'}">
			            	<td colspan="4" width="1200px">
			                	<textarea  rows="3" cols="155px" id="answer" name="answer">${ComplaintsVO.answer}</textarea>
			                </td>
			             </c:when>
			             <c:otherwise>
			             	<td colspan="4" width="1200px">
			             		<textarea  rows="3" cols="155px" id="answer" name="answer" placeholder="답변을 입력하세요"></textarea>
			             	</td>
			             </c:otherwise>
			             </c:choose>
			             </tr>
			        </table>
	                <div id="buttons">
			            <c:choose>
			            	<c:when test="${ComplaintsVO.answer != '답변 없음'}">
			                    <input type="submit" class="btn-black" value="답변 수정">
			                </c:when>
			                <c:otherwise>
			                    <input type="submit" class="btn-black" value="답변 등록">
			                </c:otherwise>
			            </c:choose>
			        </div>			        
	            </form>
                </div>
            </div>
        </div>
<%@ include file="../footer.jsp" %>