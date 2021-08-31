<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
    <div id="contents"  style="text-align: center;">
        <form action="search"> 
            <ul class="nav nav-tabs">
                <li role="presentation" class="active"><a href="con_list_form">전체현황</a></li>
                <li role="presentation"><a href="con_list_form?con_num=1">도로</a></li>
                <li role="presentation"><a href="con_list_form?con_num=2">상/하수</a></li>
                <li role="presentation"><a href="con_list_form?con_num=3">공공건축물</a></li>
                <li role="presentation"><a href="con_list_form?con_num=4">기타</a></li>
                <li class="navbar-right"><input type="text"><input type="submit" value="검색" style="margin-right: 20px;"></li>
            </ul>
        </form>
        <div>
            <table>
                <tr>
                    <th><p>번호</p></th>
                    <th><p>제목</p></th>
                    <th><p>지역</p></th>
                    <th><p>글쓴이</p></th>
                    <th><p>조회</p></th>
                    <th><p>종료일자</p></th>
                </tr>
                <c:forEach items="${conList}" var="ConstructionVO">
	                <tr>
	                    <th>${ConstructionVO.con_seq}</th>
	                    <th><a href="con_detail${pageMaker.makeQuery(pageMaker.cri.pageNum)}&con_seq=${ConstructionVO.con_seq}">${ConstructionVO.con_name}</a></th>
	                    <th>${ConstructionVO.sido} ${ConstructionVO.gugun}</th>
	                    <th>${ConstructionVO.cp_name}</th>
	                    <th>${ConstructionVO.view_count}</th>
	                    <th><fmt:formatDate value="${ConstructionVO.end_date}" pattern="yyyy-MM-dd"/></th>
	                </tr>
                </c:forEach>
            </table>
            <div>
				<ul class="pagination">
				
					<c:if test="${pageMaker.prev}">
						<li class="paginate_button previous">
							<a href="con_list_form${pageMaker.makeQuery(pageMaker.startPage-1)}">[이전]</a>
						</li>
					</c:if>
							
					<!-- [1][2][3]... 표시 부분 -->
					<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="index">
						<a href="con_list_form${pageMaker.makeQuery(index)}">[${index}]</a>
					</c:forEach>
					
					<c:if test="${pageMaker.next}">
						<li class="paginate_button next">
							<a href="con_list_form${pageMaker.makeQuery(pageMaker.endPage+1)}">[다음]</a>
						</li>
					</c:if>	
						
				</ul>
			</div>
            <form id="write_con_form" name="write_con_form">        	
       			<c:choose>
       				<c:when test="${sessionScope.user_type == 2}">
						<input type="button" onclick="go_write_con()" value="글쓰기">
       				</c:when>
       				<c:otherwise>

       				</c:otherwise>       
       			</c:choose>
            </form>
        </div>
    </div>
  </div>
</body>
</html>