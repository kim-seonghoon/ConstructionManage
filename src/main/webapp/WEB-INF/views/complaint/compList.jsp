<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
    <div id="contents" class="container bbs_main" style="text-align: center;">
        <form action="search_comp">
        <input type="hidden" name="con_num" value="${con_num}">
            <ul class="nav nav-tabs">
                <li role="presentation" class="active" ><a href="comp_list_form">전체현황</a></li>
                <li role="presentation"><a href="comp_list_form?con_num=1">도로</a></li>
                <li role="presentation"><a href="comp_list_form?con_num=2">상/하수</a></li>
                <li role="presentation"><a href="comp_list_form?con_num=3">공공건축물</a></li>
                <li role="presentation"><a href="comp_list_form?con_num=4">기타</a></li>
                <li class="navbar-right"><input type="text" name="key"><input type="submit" value="검색" style="margin-right: 20px"></li>
            </ul> 
        </form>
        <div>
            <table>
                <tr>
                    <th><p>번호</p></th>
                    <th><p>제목</p></th>
                    <th><p>글쓴이</p></th>
                    <th><p>조회</p></th>
                    <th><p>날짜</p></th>
                    <th><p>답변</p></th> 
                </tr>
                <c:forEach items="${compList}" var="ComplaintsVO">
	                <tr>
	                    <th>${ComplaintsVO.com_seq}</th>
	                    <th><a href="com_detail${pageMaker.makeQuery(pageMaker.cri.pageNum)}&com_seq=${ComplaintsVO.com_seq}">${ComplaintsVO.title}</a></th>
	                    <th>${ComplaintsVO.name}</th>
	                    <th>${ComplaintsVO.view_count}</th>
	                    <th><fmt:formatDate value="${ComplaintsVO.regdate}" pattern="yyyy-MM-dd"/></th>
	                    <th>${ComplaintsVO.answer}</th>
	                </tr>
                </c:forEach>
            </table>
            <div>
				<ul class="pagination">
				
					<c:if test="${pageMaker.prev}">
						<li class="paginate_button previous">
							<a href="comp_list_form${pageMaker.makeQuery(pageMaker.startPage-1)}">[이전]</a>
						</li>
					</c:if>
							
					<!-- [1][2][3]... 표시 부분 -->
					<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="index">
						<a href="comp_list_form${pageMaker.makeQuery(index)}">[${index}]</a>
					</c:forEach>
					
					<c:if test="${pageMaker.next}">
						<li class="paginate_button next">
							<a href="comp_list_form${pageMaker.makeQuery(pageMaker.endPage+1)}">[다음]</a>
						</li>
					</c:if>	
						
				</ul>
			</div>
            <form name="comp_write_form" id="comp_write_form">
            	<c:choose>
       				<c:when test="${sessionScope.user_type == 1}">
						<input type="button" onclick="go_write_comp()" value="글쓰기">
       				</c:when>
       				<c:otherwise>

       				</c:otherwise>       
       			</c:choose>
            </form>
        </div>
    </div>
</body>
</html>