<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
    <div id="contents"  style="text-align: center;">
        <form action="search"> 
            <ul class="nav nav-tabs">
                <li role="presentation" class="active"><a href="con_num=0">전체현황</a></li>
                <li role="presentation"><a href="category?con_num=1">도로</a></li>
                <li role="presentation"><a href="category?con_num=2">상/하수</a></li>
                <li role="presentation"><a href="category?con_num=3">공공건축물</a></li>
                <li role="presentation"><a href="category?con_num=4">기타</a></li>
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
                    <th><p>종료날짜</p></th>
                </tr>
                <c:forEach items="${conList}" var="ConstructionVO">
	                <tr>
	                    <th>${ConstructionVO.con_seq}</th>
	                    <th><a href="conDetail?con_seq='{con_seq}'">${ConstructionVO.con_name}</a></th>
	                    <th>${ConstructionVO.sido} ${ConstructionVO.gugun}</th>
	                    <th>${ConstructionVO.cp_name}</th>
	                    <th>${ConstructionVO.view_count}</th>
	                    <th><fmt:formatDate value="${ConstructionVO.end_date}" pattern="yyyy-MM-dd"/></th>
	                </tr>
                </c:forEach>
            </table>
            <form id="write_con_form" name="write_con_form">
            	<input type="button" onclick="go_write_con()" value="글쓰기">
            </form>
        </div>
    </div>
  </div>
</body>
</html>