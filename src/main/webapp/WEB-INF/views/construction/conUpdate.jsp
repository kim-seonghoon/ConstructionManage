<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %> 

    <div class="container bbs_main">
        <form id="con_detail_form" name="formm" action="con_update" method="POST">
            <table width="1200" cellpadding="0" cellspacing="0" class="table">
                <tr>
                    <th><p>제목</p></th>
                    <td colspan="3">
                    	<input type="text" name="con_name" value="${ConstructionVO.con_name}">
                    	<input type="hidden" name="con_seq" value="${ConstructionVO.con_seq}">
                    </td> 
                </tr>
                <tr>
                    <th><p>공사 분류</p></th>
					<td>
						<c:set var="c_num" value="${ConstructionVO.con_num}"/>
                        <select name="con_num">
                            <option value="1" <c:if test="${c_num == 1}">selected="selected"</c:if>>도로 공사</option>
                            <option value="2" <c:if test="${c_num == 2}">selected="selected"</c:if>>상/하수 공사</option>
                            <option value="3" <c:if test="${c_num == 3}">selected="selected"</c:if>>공공건축물 공사</option>
                            <option value="4" <c:if test="${c_num == 4}">selected="selected"</c:if>>기타</option>
                        </select>
                    </td>
                    <th><p>공사 업체</p></th>
                    <td>
                    	<input type="text" name="cp_name" value="${ConstructionVO.cp_name}">
                    	<input type="hidden" name="cp_num" value="${ConstructionVO.cp_num}">
                    </td>
                </tr>
                <tr>
                    <th rowspan="2"><p>공사 위치</p></th>
                    <td colspan="3">
                        <input type="text" name="zip_num" value="${ConstructionVO.zip_num}">
                        <input type="button" value="주소검색" onclick="post_zip()">
                        <input type="hidden" name="sido" value="${ConstructionVO.sido}">
                        <input type="hidden" name="gugun" value="${ConstructionVO.gugun}">
                        <input type="hidden" name="dong" value="${ConstructionVO.dong}">
                    </td>
                </tr>
                <tr>
                    <td><input type="text" name="addr1" value="${ConstructionVO.sido} ${ConstructionVO.gugun} ${ConstructionVO.dong}"></td>
                    <th><p>상세주소</p></th>
                    <td><input type="text" name="addr2" value="${addr2}"></td>
                </tr>
                <tr>
                    <th><p>공사규모</p></th>
                    <td><input type="text" name="con_size" value="${ConstructionVO.con_size}"></td>
                    <th><p>현재현황</p></th>
                    <td><input type="text" name="con_state" value="${ConstructionVO.con_state}"></td>
                </tr>
                <tr>
                    <th><p>공사 기간</p></th>
                    <td colspan="3">
                        <input name="s_date" id="s_date" type="date" value="${s_date}"> ~ <input type="date" name="e_date"  value="${e_date}" id="e_date"></td>
                </tr>
                <tr>
                    <th><p>담당부서</p></th>
                    <td><input type="text" name="dept" value="${ConstructionVO.dept}"></td>
                    <th><p>전화번호</p></th>
                    <td><input type="text" name="dept_tel" value="${ConstructionVO.dept_tel}"></td>
                </tr>
                <tr>
                    <th><p>기타</p></th>
                    <td colspan="3"><textarea name="content" rows="8" cols="40">${ConstructionVO.content}</textarea></td>
                </tr>
            </table>
            <div id="buttons">
                <input type="button" value="목록" onclick="go_con_list()">
                <input type="button" value="삭제하기" onclick="delete_con()">
                <input type="submit" value="수정하기">
            </div>
        </form>
    </div>
</div>
</body>
</html>