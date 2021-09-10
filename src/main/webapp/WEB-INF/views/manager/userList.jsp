<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
		<div class="jumbotron_small">
			<div class="container">
				<h1>일반회원 관리</h1>
			</div>
		</div>		
		<div class="container bbs_main">
			<form id="userform" action="user_list_form_mg" method="POST">
			<div class="search"> 
				<select class="form-control input" name="search-user" id="search01">
					<option value="1">아이디</option>
                    <option value="2">이름</option>
				</select>
				<input type="text" name="key" class="form-control textarea" id="search02" placeholder="이름을 입력하세요">
				<span ><input class="form-control btn" type="submit" value="검색" style="margin-top:0"></span>
			</div>
			</form>
			<div>
			<form name="frm" method="POST">
            <table>
                <tr>
                	<th>체크</th>
                    <th><p>이름</p></th>
                    <th><p>아이디</p></th>
                    <th><p>주소</p></th>
                    <th><p>탈퇴 여부</p></th>
                </tr>               
                <c:forEach items="${userList}" var="UserVO">
                <tr>
	                <c:choose>
	                	<c:when test="${UserVO.dropyn=='y'}">
	                		<th><input type="checkbox" name="result" value="${UserVO.user_id}"></th>
	                	</c:when>
	               		<c:otherwise>
	               			<th><input type="checkbox" disabled="disabled"></th>
	               		</c:otherwise>
	               	</c:choose>
	                <th>${UserVO.name}</th>
	                <th>${UserVO.user_id}</th>
	                <th>${UserVO.address}</th>
	                <th>${UserVO.dropyn}</th>
	            </tr>
                </c:forEach>
            </table>
            <div>
				<ul class="pagination">
				
					<c:if test="${pageMaker.prev}">
						<li class="paginate_button previous">
							<a href="user_list_form${pageMaker.makeQuery(pageMaker.startPage-1)}">[이전]</a>
						</li>
					</c:if>
							
					<!-- [1][2][3]... 표시 부분 -->
					<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="index">
						<a href="user_list_form${pageMaker.makeQuery(index)}">[${index}]</a>
					</c:forEach>
					
					<c:if test="${pageMaker.next}">
						<li class="paginate_button next">
							<a href="user_list_form${pageMaker.makeQuery(pageMaker.endPage+1)}">[다음]</a>
						</li>
					</c:if>	
						
				</ul>
			</div>
            	<input type="button" value="삭제" onclick="go_delete_user()">
            </form>
        </div>
    </div>
			
<%@ include file="../footer.jsp" %>