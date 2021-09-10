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
			            <div>
			                <span><h3>답변</h3></span>
			            </div>
			            <div id="reply">
			                <table id="rep_input" style="width: 650px">                    
			                    <tr>
			                    	<c:choose>
			                    		<c:when test="${ComplaintsVO.answer != '답변 없음'}">
			                    			<td style="width:80%;">
			                    				<textarea  rows="3" cols="77" id="answer" name="answer">${ComplaintsVO.answer}</textarea>
			                    			</td>
			                    			<td style="width:10%;">
			                            		<input type="submit" class="btn-black" value="답변 수정">
			                        		</td>
			                    		</c:when>
			                    		<c:otherwise>
			                    			<td style="width:80%;">
			                            		<textarea  rows="3" cols="77" id="answer" name="answer" placeholder="답변을 입력하세요"></textarea>
			                        		</td>
			                        		<td style="width:10%;">
			                            		<input type="submit" class="btn-black" value="답변 등록">
			                        		</td>
			                    		</c:otherwise>
			                    	</c:choose>

			                    </tr>
			                </table>
			            </div>			        
	                </div>
	            </form>
                </div>
            </div>
        </div>
<%@ include file="../footer.jsp" %>