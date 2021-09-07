<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>  

		<!-- /jumbotron -->

		<div class="container bbs_main">
			<form id="con_detail_form" method="POST">
			<input type="hidden" name="cp_num" value="${ConstructionVO.cp_num}">
			<input type="hidden" name="con_seq" value="${ConstructionVO.con_seq}">
			<div class="notice-wrap">
				<div class="inner-container">
				  <table width="1200" cellpadding="0" cellspacing="0" class="table">
				    <tr>
				      <td colspan="4" class="b title">${ConstructionVO.con_name}</td>
				      <td width="500" class="tar">조회수 ${ConstructionVO.view_count}  /  21-07-21</td>
			        </tr>
				    <tr>
				      <td width="100" class="b">공사  분류</td>
				      <td width="500" >
				      	<c:choose>
                        	<c:when test="${ConstructionVO.con_num == 1}">도로 공사</c:when>
                        	<c:when test="${ConstructionVO.con_num == 2}">상/하수 공사</c:when>
                        	<c:when test="${ConstructionVO.con_num == 3}">공공건축물 공사</c:when>
                        	<c:when test="${ConstructionVO.con_num == 4}">기타</c:when>
                        </c:choose>
				      </td>
				      <td width="100" class="b">공사 지역</td>
				      <td colspan="2">${ConstructionVO.sido} ${ConstructionVO.gugun}</td>
			        </tr>
				    <tr>
				      <td width="100" rowspan="2" class="b">공사 위치</td>
				      <td colspan="3">${ConstructionVO.zip_num}</td>
			        </tr>
				    <tr>
				      <td >${addr1}</td>
				      <td class="b">상세주소</td>
				      <td colspan="2">${addr2}</td>
			        </tr>
				    <tr>
				      <td class="b">공사규모</td>
				      <td >${ConstructionVO.con_size}</td>
				      <td class="b">현재현황</td>
				      <td colspan="2">${ConstructionVO.con_state}</td>
			        </tr>
				    <tr>
				      <td height="20" class="b">공사 기간</td>
				      <td height="0"><fmt:formatDate value="${ConstructionVO.start_date}" pattern="yyyy-MM-dd"/> ~ <fmt:formatDate value="${ConstructionVO.end_date}" pattern="yyyy-MM-dd"/></td>
				      <td colspan="3">&nbsp;</td>
			        </tr>
				    <tr>
				      <td class="b">담당부서</td>
				      <td height="0">${ConstructionVO.dept}</td>
				      <td colspan="2" class="b">전화번호</td>
				      <td>${ConstructionVO.dept_tel}</td>
			        </tr>
				    <tr>
				      <td class="b">내용</td>
				      <td height="0" colspan="4">${ConstructionVO.content}</td>
			        </tr>
			      </table>
				  <!-- /Table -->
				  <div class="">
	                <c:choose>
	       				<c:when test="${sessionScope.user_type == 2}">
		                    <button class="btn-gray" onclick="go_con_list()">목록</button>
							<button class="btn-black" onclick="delete_con()">삭제</button>
							<button class="btn-black" onclick="update_con()">수정</button>
		                </c:when>
		                <c:otherwise>
		                	<button class="btn-gray" onclick="go_con_list()">목록</button>
							<button class="btn-black" onclick="go_write_comp()">민원 접수</button>
		            	</c:otherwise>
		            </c:choose>
				  </div>
				</div>
			</div>
			</form>
		</div>
		<!-- /inner-container -->
		</div>
		<!-- /container -->

<%@ include file="../footer.jsp" %>