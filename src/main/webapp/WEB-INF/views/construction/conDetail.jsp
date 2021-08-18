<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

        <div id="content">
            <form id="con_form" action="con_update" method="POST">
                <input type="hidden" name="cp_num" value="ConstructionVO.cp_num">
                <table>
                    <tr>
                        <th colspan="4">${ConstructionVO.title}</th>
                    </tr>
                    <tr>
                        <th><p>공사 분류</p></th>
                        <td>${ConstructionVO.content}</td>
                        <th><p>공사 업체</p></th>
                        <td>${ConstructionVO.cp_name}</td>
                    </tr>
                    <tr>
                        <th rowspan="2"><p>공사 위치</p></th>
                        <td colspan="3">
                            ${ConstructionVO.zip_num}
                            <input type="hidden" name="sido" value="${ConstructionVO.sido}">
                            <input type="hidden" name="gugun" value="${ConstructionVO.gugun}">
                            <input type="hidden" name="dong" value="${ConstructionVO.dong}">
                        </td>
                    </tr>
                    <tr>
                        <td>${ConstructionVO.address}</td>
                    </tr>
                    <tr>
                        <th><p>공사규모</p></th>
                        <td>${ConstructionVO.con_size}</td>
                        <th><p>현재현황</p></th>
                        <td>${ConstructionVO.con_state}</td>
                    </tr>
                    <tr>
                        <th><p>공사 기간</p></th>
                        <td colspan="3">${ConstructionVO.start_date} ~ ${ConstructionVO.end_date}</td>
                    </tr>
                    <tr>
                        <th><p>담당부서</p></th>
                        <td>${ConstructionVO.dept}</td>
                        <th><p>전화번호</p></th>
                        <td>${ConstructionVO.dept_tel}</td>
                    </tr>
                    <tr>
                        <th><p>기타</p></th>
                        <td><textarea name="content" rows="8" cols="100%" value="${ConstructionVO.content}"></textarea></td>
                    </tr>
                </table>
                <div id="buttons">
                    <input type="reset" value="취소">
                    <input type="button" value="삭제하기">
                    <input type="submit" value="수정하기">
                </div>
            </form>
        </div>
    </div>
</body>
</html>