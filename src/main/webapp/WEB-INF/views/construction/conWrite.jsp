<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
    <div id="content" class="container bbs_main"> 
        <form id="writeForm" name="formm" method="POST">
       	<div class="notice-wrap">
            <table width="1200" cellpadding="0" cellspacing="0" class="table">
                <tr>
                    <td width="100" class="b"><p>제목</p></td>
                    <td colspan="3"><input style="width:600px" type="text" name="con_name" id="con_name"></td>
                </tr>
                <tr> 
                    <td width="100" class="b"><p>공사 분류</p></td>
                    <td width="500">
                        <select name="con_num" id="con_num">
                        	<option>=공사종류=</option>
                            <option value="1">도로 공사</option>
                            <option value="2">상/하수 공사</option>
                            <option value="3">공공건축물 공사</option>
                            <option value="4">기타</option>
                        </select>
                    </td>
                    <td width="100" class="b"><p>공사 업체</p></td>
                    <td>
                    	<input type="text" name="cp_name" id="cp_name" value="${loginUser.cp_name}">
                    	<input type="hidden" name="cp_num" id="cp_num" value="${loginUser.cp_num}">
                    </td>
                </tr>
                <tr>
                    <td width="100" class="b" rowspan="2"><p>공사 위치</p></td>
                    <td colspan="3">
                        <input type="text" name="zip_num" id="zip_num" value="우편 번호">
                        <input type="button" value="주소검색" onclick="post_zip()">
                        <input type="hidden" name="sido" id="sido">
                        <input type="hidden" name="gugun" id="gugun">
                        <input type="hidden" name="dong" id="dong">
                    </td>
                </tr>
                <tr>
                    <td><input type="text" name="addr1" id="addr1"></td>
                    <td class="b"><p>상세주소</p></td>
                    <td><input type="text" name="addr2" id="addr2"></td>
                </tr>
                <tr>
                    <td class="b"><p>공사규모</p></td>
                    <td><input type="text" name="con_size" id="con_size"></td>
                    <td class="b"><p>현재현황</p></td>
                    <td><input type="text" name="con_state" id="con_state"></td>
                </tr>
                <tr>
                    <td class="b"><p>공사 기간</p></td>
                    <td colspan="3">
                        <input name="s_date" id="s_date" type="date"> ~ <input type="date" name="e_date" id="e_date"></td>
                </tr>
                <tr>
                    <td class="b"><p>담당부서</p></td>
                    <td><input type="text" name="dept"></td>
                    <td class="b"><p>전화번호</p></td>
                    <td><input type="text" name="dept_tel"></td>
                </tr>
                <tr>
                    <td class="b"><p>기타</p></td>
                    <td colspan="4"><textarea name="content" id="content" rows="4" cols="100%"></textarea></td>
                </tr>
            </table>
            <div id="buttons">
                <input type="reset" class="btn-gray" value="취소">
                <button class="btn-black" onclick="write_con()">작성완료</button>
            </div>
        </div>
        </form>
    </div>

    <%@ include file="../footer.jsp" %>