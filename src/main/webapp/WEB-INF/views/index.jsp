<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>  
		<div class="jumbotron">
			<div class="container">
                <h1><a href="search_by_address">“우리동네 궁금한 공사 어떤 공사일까?”</a></h1>
			</div>
		</div>
		<!-- /jumbotron -->

		<div class="container bbs_main">
			<div class="search"> 
				<select class="form-control input" name="search-condition" id="search01">
					<option value="1">통합검색</option>
                    <option value="2">지역</option>
                    <option value="3">제목</option>
				</select>
				<input type="text" name="key" class="form-control textarea" id="search02" placeholder="원하시는 지역을 입력하세요">
				<span><button class="form-control btn" type="button">검색</button></span>
			</div>
			<!-- /Search-->

			<div class="inner-container">
				<h2>｜ 공사현황</h2>
				<table class="list-group">
                    <c:forEach items="${newConstructionList}"  var="constructionVO">
					<tr>
                        <td><a href="con_detail?con_seq=${constructionVO.con_seq}">- ${constructionVO.con_name}</a></td>
						<td><fmt:formatDate value="${constructionVO.start_date}" pattern="yyyy-MM-dd"/></td>
					</tr>
                    </c:forEach>
				</table>			
			<!-- /list-group -->
			</div>

			<div class="inner-container">
				<h2>｜ 민원 보기</h2>
				<table class="list-group">
                    <c:forEach items="${newComplaintList}"  var="complaintVO">
					<tr>
						<td><a href="com_detail?com_seq=${complaintVO.com_seq}">- ${complaintVO.title}</a></td>
						<td><fmt:formatDate value="${complaintVO.regdate}" pattern="yyyy-MM-dd"/></td>
					</tr>
					</c:forEach>
				</table>
				<!-- /list-group -->
			</div>
			<!-- /inner-container -->
		</div>
		<!-- /container -->
<%@ include file="footer.jsp" %>

