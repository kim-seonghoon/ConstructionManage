<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
    <div id="contents"  style="text-align: center;">
        <form action="search">
            <ul class="nav nav-tabs">
                <li role="presentation" class="active"><a href="#">전체현황</a></li>
                <li role="presentation"><a href="#">도로</a></li>
                <li role="presentation"><a href="#">상/하수</a></li>
                <li role="presentation"><a href="#">공공건축물</a></li>
                <li role="presentation"><a href="#">기타</a></li>
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
                <tr>
                    <th>${ComplaintsVO.com_seq}</th>
                    <th>${ComplaintsVO.title}</th>
                    <th>${ComplaintsVO.writer}</th>
                    <th>${ComplaintsVO.view_count}</th>
                    <th>${ComplaintsVO.regdate}</th>
                    <th>${ComplaintsVO.answer}</th>
                </tr>
            </table>
            <input type="button" onclick="go_write_comp()" value="글쓰기">
        </div>
    </div>
  </div>
</body>
</html>