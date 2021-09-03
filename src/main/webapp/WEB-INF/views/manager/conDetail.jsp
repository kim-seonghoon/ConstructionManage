<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>  
	<div class="container bbs_main">
        <div id="content">
            <form id="con_detail_form" action="answer" method="POST">
                <input type="hidden" name="cp_num" id="cp_num" value="${ConstructionVO.cp_num}">
                <input type="hidden" name="con_seq" id="con_seq" value="${ConstructionVO.con_seq}">
                <table>
                    <tr> 
                        <th colspan="4">${ConstructionVO.con_name}</th>
                    </tr>
                    <tr>
                        <th><p>공사 분류</p></th>
                        <td>
                        	<c:choose>
                        		<c:when test="${ConstructionVO.con_num == 1}">도로 공사</c:when>
                        		<c:when test="${ConstructionVO.con_num == 2}">상/하수 공사</c:when>
                        		<c:when test="${ConstructionVO.con_num == 3}">공공건축물 공사</c:when>
                        		<c:when test="${ConstructionVO.con_num == 4}">기타</c:when>
                        	</c:choose>
                        </td>
                        <th><p>공사 업체</p></th>
                        <td>${ConstructionVO.cp_name}</td>
                    </tr>
                    <tr>
                        <th rowspan="2"><p>공사 위치</p></th>
                        <td colspan="3">
                            ${ConstructionVO.zip_num}
                            <input type="hidden" name="sido" value="${ConstructionVO.sido}">
                            <input type="hidden" name="gugun" value="${ConstructionVO.gugun}">
                            <input type="hidden" name="dong" value="${ConstructionVO.dong}">
                        </td>
                    </tr>
                    <tr>
                        <td>${ConstructionVO.address}</td>
                    </tr>
                    <tr>
                        <th><p>공사규모</p></th>
                        <td>${ConstructionVO.con_size}</td>
                        <th><p>현재현황</p></th>
                        <td>${ConstructionVO.con_state}</td>
                    </tr>
                    <tr>
                        <th><p>공사 기간</p></th>
                        <td colspan="3"><fmt:formatDate value="${ConstructionVO.start_date}" pattern="yyyy-MM-dd"/> ~ <fmt:formatDate value="${ConstructionVO.end_date}" pattern="yyyy-MM-dd"/></td>
                    </tr>
                    <tr>
                        <th><p>담당부서</p></th>
                        <td>${ConstructionVO.dept}</td>
                        <th><p>전화번호</p></th>
                        <td>${ConstructionVO.dept_tel}</td>
                    </tr>
                    <tr>
                        <th><p>내용</p></th>
                        <td><textarea name="content" rows="8" cols="100%" readonly>${ConstructionVO.content}</textarea></td>
                    </tr>
                </table>
                <div id="buttons">
                <c:choose>
       				<c:when test="${sessionScope.user_type == 2}">
	                    <input type="button" value="목록" onclick="go_con_list()">
	                    <input type="button" value="삭제하기" onclick="delete_con()">
	                    <input type="submit" value="답변">
	                </c:when>
	                <c:otherwise>
	                	<input type="button" value="목록" onclick="go_con_list()">
	                	<input type="button" value="민원접수" onclick="go_write_comp()">
	            	</c:otherwise>
	            </c:choose>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>