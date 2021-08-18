<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
        <div id="content">
            <form id="com_form" action="comp_update" method="POST">
                <input type="hidden" name="con_seq" value="ComplaintsVO.con_seq">
                <input type="hidden" name="com_seq" value="ComplaintsVO.com_seq">
                <table>
                    <tr>
                        <th><p>문의 분류</p></th>
                        <td>
                            <select name="con_num">
                                <option value="1">도로 공사</option>
                                <option value="2">상/하수 공사</option>
                                <option value="3">공공건축물 공사</option>
                                <option value="4">기타</option>
                            </select>
                        </td>
                        <th><p>문의 지역</p></th>
                        <td>
                            <select name="address" id="sido">
                                <option value=""></option>
                            </select>
                            <select name="gugun" id="gugun">
                                <option value=""></option> 
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <th><p>제목</p></th>
                        <td colspan="3"><input type="text" name="title"></td>
                    </tr>
                    <tr>
                        <td colspan="3"><textarea name="content" id="content" cols="60" rows="10"></textarea></td>
                </table>
                <div id="buttons">
                    <input type="button" value="취소">
                    <input type="submit" value="작성완료">
                    <input type="button" value="목록">
                </div>
            </form>
        </div>
    </div>
</body>
</html>