<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
    <div id="content"> 
        <form id="writeForm" name="formm" method="POST">
            <table>
                <tr>
                    <th><p>제목</p></th>
                    <td colspan="3"><input type="text" name="con_name" id="con_name"></td>
                </tr>
                <tr>
                    <th><p>공사 분류</p></th>
                    <td>
                        <select name="con_num" id="con_num">
                        	<option>=공사종류=</option>
                            <option value="1">도로 공사</option>
                            <option value="2">상/하수 공사</option>
                            <option value="3">공공건축물 공사</option>
                            <option value="4">기타</option>
                        </select>
                    </td>
                    <th><p>공사 업체</p></th>
                    <td><input type="text" name="cp_name" id="cp_name" value="${loginUser.cp_name}"></td>
                </tr>
                <tr>
                    <th rowspan="2"><p>공사 위치</p></th>
                    <td colspan="3">
                        <input type="text" name="zip_num" id="zip_num" value="우편 번호">
                        <input type="button" value="주소검색">
                        <input type="hidden" name="sido" id="sido">
                        <input type="hidden" name="gugun" id="gugun">
                        <input type="hidden" name="dong" id="dong">
                    </td>
                </tr>
                <tr>
                    <td><input type="text" name="addr1" id="addr1"></td>
                    <th><p>상세주소</p></th>
                    <td><input type="text" name="addr2" id="addr2"></td>
                </tr>
                <tr>
                    <th><p>공사규모</p></th>
                    <td><input type="text" name="con_size" id="con_size"></td>
                    <th><p>현재현황</p></th>
                    <td><input type="text" name="con_state" id="con_state"></td>
                </tr>
                <tr>
                    <th><p>공사 기간</p></th>
                    <td colspan="3">
                        <input name="start_date" id="start_date" type="date"> ~ <input type="date" name="end_date" id="end_date"></td>
                </tr>
                <tr>
                    <th><p>담당부서</p></th>
                    <td><input type="text" name="dept"></td>
                    <th><p>전화번호</p></th>
                    <td><input type="text" name="dept_tel"></td>
                </tr>
                <tr>
                    <th><p>기타</p></th>
                    <td><textarea name="content" id="content" rows="8" cols="100%"></textarea></td>
                </tr>
            </table>
            <div id="buttons">
                <input type="reset" value="취소">
                <input type="button" value="작성완료" onclick="write_con()">
            </div>
        </form>
    </div>
</div>
</body>
</html>