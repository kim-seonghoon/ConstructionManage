<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
    <div id="contents"  style="text-align: center;">
        <form action="search">
            <ul class="nav nav-tabs">
                <li role="presentation" class="active" ><a href="com_category?con_num=0">전체현황</a></li>
                <li role="presentation"><a href="com_category?con_num=1">도로</a></li>
                <li role="presentation"><a href="com_category?con_num=2">상/하수</a></li>
                <li role="presentation"><a href="com_category?con_num=3">공공건축물</a></li>
                <li role="presentation"><a href="com_category?con_num=4">기타</a></li>
                <li class="navbar-right"><input type="text"><input type="submit" value="검색" style="margin-right: 20px;"></li>
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
	                    <th><a href="com_detail?com_seq=${ComplaintsVO.com_seq}">${ComplaintsVO.title}</a></th>
	                    <th>${ComplaintsVO.name}</th>
	                    <th>${ComplaintsVO.view_count}</th>
	                    <th><fmt:formatDate value="${ComplaintsVO.regdate}" pattern="yyyy-MM-dd"/></th>
	                    <th>${ComplaintsVO.answer}</th>
	                </tr>
                </c:forEach>
            </table>
            <form name="comp_write_form" id="comp_write_form">
            	<input type="button" onclick="go_write_comp()" value="글쓰기">
            </form>
        </div>
    </div>
</body>
</html>