<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
        <div id="content">
            <form id="comp_detail_form" method="POST">
                <input type="hidden" name="com_seq" value="${ComplaintsVO.com_seq}">
                <table>
                    <tr>
                        <th><p>문의 분류</p></th>
                        <td>${ComplaintsVO.con_num}</td>
                        <th><p>문의 지역</p></th>
                        <td>${ComplaintsVO.address}</td>
                    </tr>
                    <tr>
                        <th><p>제목</p></th> 
                        <td>${ComplaintsVO.title}</td>
                    </tr>
                    <tr>
                        <th><p>작성일</p></th>
                        <td>${ComplaintsVO.regdate}</td>
                        <th><p>조회수</p></th>
                        <td>${ComplaintsVO.view_count}</td>
                    </tr>
                    <tr><td colspan="4">${ComplaintsVO.content}</td></tr>
                </table>
                <div id="buttons">
                    <input type="button" value="삭제하기">
                    <input type="button" value="수정하기" onclick="comp_update()">
                    <input type="button" value="목록">
                </div>
            </form>
        </div>
    </div>
</body>
</html>
</body>
</html>