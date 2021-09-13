<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>공사관리</title>
	<!-- PYH CSS -->
	<link rel="stylesheet" type="text/css" href="css/liststyle.css?ver=3">
	<link rel="stylesheet" type="text/css" href="css/bootstrap-3.3.2-dist/css/bootstrap.min.css">
	<script type="text/javascript" src="js/jquery-3.6.0.min.js"></script>
	<script type="text/javascript" src="js/member.js"></script>
	<script type="text/javascript" src="js/complaint.js"></script>
	<script type="text/javascript" src="js/construction.js"></script>
	<script type="text/javascript" src="js/mypage.js"></script>
</head>

<body class="body">
	<div class="wrap">
		<header class="navbar navbar-inverse">
			<div class="navbar-header">
				<h1><a class="navbar-brand" href="go_home_mg">공사관리</a></h1>
			</div>
			<nav class="gnb">
				<ul class="nav navbar-nav">
					<!-- <li class="active"><a href="#">1depth-01</a></li> -->
					<li><a href="con_list_form_mg">공사 현황</a></li>
					<li><a href="comp_list_form_mg">민원 관리</a></li>
					<li><a href="user_list_form_mg">유저 관리</a></li>
					<li><a href="company_list_form_mg">공사업체 관리</a></li>

					<li class="btn_nav"><a href="logout">로그아웃</a></li>
				</ul>
			</nav>
		</header>
		<!-- /navbar -->

		<div class="jumbotron_small">
			<div class="container">
				<h1>공사 현황</h1>
			</div>
		</div>
		<!-- /jumbotron -->

		<div class="container bbs_main">

			<div class="notice-wrap">
				<div class="tabs">
				<c:choose>
					<c:when test="${con_num=='1'}">
						<input id="all" type="radio" name="tab_item">
						<label class="tab_item" for="all">전체현황</label>
						<input id="tab1" type="radio" name="tab_item" checked>
						<label class="tab_item" for="tab1">도로</label>					
						<input id="tab2" type="radio" name="tab_item">
						<label class="tab_item" for="tab2">상/하수</label>
						<input id="tab3" type="radio" name="tab_item">
						<label class="tab_item" for="tab3">공공건축물</label>
						<input id="tab4" type="radio" name="tab_item">
						<label class="tab_item" for="tab4">기타</label>
					</c:when>
					
					<c:when test="${con_num=='2'}">
						<input id="all" type="radio" name="tab_item">
						<label class="tab_item" for="all">전체현황</label>
						<input id="tab1" type="radio" name="tab_item">
						<label class="tab_item" for="tab1">도로</label>					
						<input id="tab2" type="radio" name="tab_item" checked>
						<label class="tab_item" for="tab2">상/하수</label>
						<input id="tab3" type="radio" name="tab_item">
						<label class="tab_item" for="tab3">공공건축물</label>
						<input id="tab4" type="radio" name="tab_item">
						<label class="tab_item" for="tab4">기타</label>
					</c:when>
					
					<c:when test="${con_num=='3'}">
						<input id="all" type="radio" name="tab_item">
						<label class="tab_item" for="all">전체현황</label>
						<input id="tab1" type="radio" name="tab_item">
						<label class="tab_item" for="tab1">도로</label>					
						<input id="tab2" type="radio" name="tab_item">
						<label class="tab_item" for="tab2">상/하수</label>
						<input id="tab3" type="radio" name="tab_item" checked>
						<label class="tab_item" for="tab3">공공건축물</label>
						<input id="tab4" type="radio" name="tab_item">
						<label class="tab_item" for="tab4">기타</label>
					</c:when>
					
					<c:when test="${con_num=='4'}">
						<input id="all" type="radio" name="tab_item">
						<label class="tab_item" for="all">전체현황</label>
						<input id="tab1" type="radio" name="tab_item">
						<label class="tab_item" for="tab1">도로</label>					
						<input id="tab2" type="radio" name="tab_item">
						<label class="tab_item" for="tab2">상/하수</label>
						<input id="tab3" type="radio" name="tab_item">
						<label class="tab_item" for="tab3">공공건축물</label>
						<input id="tab4" type="radio" name="tab_item" checked>
						<label class="tab_item" for="tab4">기타</label>
					</c:when>
					
					<c:otherwise>
						<input id="all" type="radio" name="tab_item" checked>
						<label class="tab_item" for="all">전체현황</label>
						<input id="tab1" type="radio" name="tab_item">
						<label class="tab_item" for="tab1">도로</label>					
						<input id="tab2" type="radio" name="tab_item">
						<label class="tab_item" for="tab2">상/하수</label>
						<input id="tab3" type="radio" name="tab_item">
						<label class="tab_item" for="tab3">공공건축물</label>
						<input id="tab4" type="radio" name="tab_item">
						<label class="tab_item" for="tab4">기타</label>
					</c:otherwise>
				</c:choose>
					
					<div class="tabs_search"> 
					<form action="con_list_form_mg">
						<input type="text" name="key" class="textarea" value="${key}">
						<input type="submit" class="btn-search" value="검색">
					</form>
					</div>
				<div class="tab_content" id="all_content">
		            <table width="1200" cellpadding="0" cellspacing="0" class="table_list">
		                <tr>
		                    <td width="100" class="b">번호</td>
		                    <td width="700" class="b">제목</td>
		                    <td width="100" class="b">지역</td>
		                    <td width="100" class="b">글쓴이</td>
		                    <td width="100" class="b">조회</td>
		                    <td width="100" class="b">종료일자</td>
		                </tr>
		                <c:forEach items="${conList}" var="ConstructionVO">
			                <tr>
			                    <td class="b">${ConstructionVO.con_seq}</td>
			                    <td><a href="con_detail${pageMaker.makeQuery(pageMaker.cri.pageNum)}&con_seq=${ConstructionVO.con_seq}">${ConstructionVO.con_name}</a></td>
			                    <td>${ConstructionVO.sido} ${ConstructionVO.gugun}</td>
			                    <td>${ConstructionVO.cp_name}</td>
			                    <td>${ConstructionVO.view_count}</td>
			                    <td><fmt:formatDate value="${ConstructionVO.end_date}" pattern="yyyy-MM-dd"/></td>
			                </tr>
		                </c:forEach>
		            </table>
		        <div class="bbs_list_bottom">
		        	<div class="bbs_list_num">
					<ul class="pagination">		
						<c:if test="${pageMaker.prev}">
							<li class="paginate_button previous">
								<a href="con_list_form_mg${pageMaker.makeQuery(pageMaker.startPage-1)}">[이전]</a>
							</li>
						</c:if>
									
						<!-- [1][2][3]... 표시 부분 -->
						<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="index">
							<a href="con_list_form_mg${pageMaker.makeQuery(index)}">[${index}]</a>
						</c:forEach>
							
						<c:if test="${pageMaker.next}">
							<li class="paginate_button next">
								<a href="con_list_form_mg${pageMaker.makeQuery(pageMaker.endPage+1)}">[다음]</a>
							</li>
						</c:if>		
					</ul>
					</div>
				
					<div class="bbs_list_btn">
		            <form id="write_con_form" name="write_con_form">        	
		       			<c:choose>
		       				<c:when test="${sessionScope.user_type == 2}">
								<input type="button" class="btn-black" onclick="go_write_con()" value="글쓰기">
		       				</c:when>
		       				<c:otherwise>
		
		       				</c:otherwise>       
		       			</c:choose>
		            </form>
		           	</div>
		        </div>
		    	</div>
		    	
		    	<div class="tab_content" id="tab1_content">
		            <table width="1200" cellpadding="0" cellspacing="0" class="table_list">
		                <tr>
		                    <td width="100" class="b"><p>번호</p></td>
		                    <td width="700" class="b"><p>제목</p></td>
		                    <td width="100" class="b"><p>지역</p></td>
		                    <td width="100" class="b"><p>글쓴이</p></td>
		                    <td width="100" class="b"><p>조회</p></td>
		                    <td width="100" class="b"><p>종료일자</p></td>
		                </tr>
		                <c:forEach items="${conList1}" var="ConstructionVO">
			                <tr>
			                    <td class="b">${ConstructionVO.con_seq}</td>
			                    <td><a href="con_detail_mg${pageMaker.makeQuery(pageMaker.cri.pageNum)}&con_seq=${ConstructionVO.con_seq}">${ConstructionVO.con_name}</a></td>
			                    <td>${ConstructionVO.sido} ${ConstructionVO.gugun}</td>
			                    <td>${ConstructionVO.cp_name}</td>
			                    <td>${ConstructionVO.view_count}</td>
			                    <td><fmt:formatDate value="${ConstructionVO.end_date}" pattern="yyyy-MM-dd"/></td>
			                </tr>
		                </c:forEach>
		            </table>
		        <div class="bbs_list_bottom">
		        	<div class="bbs_list_num">
					<ul class="pagination">		
						<c:if test="${pageMaker1.prev}">
							<li class="paginate_button previous">
								<a href="con_list_form_mg${pageMaker1.makeQuery(pageMaker1.startPage-1)}">[이전]</a>
							</li>
						</c:if>
									
						<!-- [1][2][3]... 표시 부분 -->
						<c:forEach begin="${pageMaker1.startPage}" end="${pageMaker1.endPage}" var="index">
							<a href="con_list_form_mg${pageMaker1.makeQuery(index)}">[${index}]</a>
						</c:forEach>
							
						<c:if test="${pageMaker1.next}">
							<li class="paginate_button next">
								<a href="con_list_form_mg${pageMaker1.makeQuery(pageMaker1.endPage+1)}">[다음]</a>
							</li>
						</c:if>		
					</ul>
					</div>
				
					<div class="bbs_list_btn">
		            <form id="write_con_form" name="write_con_form">        	
		       			<c:choose>
		       				<c:when test="${sessionScope.user_type == 2}">
								<input type="button" class="btn-black" onclick="go_write_con()" value="글쓰기">
		       				</c:when>
		       				<c:otherwise>
		
		       				</c:otherwise>       
		       			</c:choose>
		            </form>
		           	</div>
		        </div>
		    	</div>
		    	
		    	<div class="tab_content" id="tab2_content">
		            <table width="1200" cellpadding="0" cellspacing="0" class="table_list">
		                <tr>
		                    <td width="100" class="b"><p>번호</p></td>
		                    <td width="700" class="b"><p>제목</p></td>
		                    <td width="100" class="b"><p>지역</p></td>
		                    <td width="100" class="b"><p>글쓴이</p></td>
		                    <td width="100" class="b"><p>조회</p></td>
		                    <td width="100" class="b"><p>종료일자</p></td>
		                </tr>
		                <c:forEach items="${conList2}" var="ConstructionVO">
			                <tr>
			                    <td class="b">${ConstructionVO.con_seq}</td>
			                    <td><a href="con_detail_mg${pageMaker2.makeQuery(pageMaker2.cri.pageNum)}&con_seq=${ConstructionVO.con_seq}">${ConstructionVO.con_name}</a></td>
			                    <td>${ConstructionVO.sido} ${ConstructionVO.gugun}</td>
			                    <td>${ConstructionVO.cp_name}</td>
			                    <td>${ConstructionVO.view_count}</td>
			                    <td><fmt:formatDate value="${ConstructionVO.end_date}" pattern="yyyy-MM-dd"/></td>
			                </tr>
		                </c:forEach>
		            </table>
		        <div class="bbs_list_bottom">
		        	<div class="bbs_list_num">
					<ul class="pagination">		
						<c:if test="${pageMaker2.prev}">
							<li class="paginate_button previous">
								<a href="con_list_form_mg${pageMaker2.makeQuery(pageMaker2.startPage-1)}">[이전]</a>
							</li>
						</c:if>
									
						<!-- [1][2][3]... 표시 부분 -->
						<c:forEach begin="${pageMaker2.startPage}" end="${pageMaker2.endPage}" var="index">
							<a href="con_list_form_mg${pageMaker2.makeQuery(index)}">[${index}]</a>
						</c:forEach>
							
						<c:if test="${pageMaker2.next}">
							<li class="paginate_button next">
								<a href="con_list_form_mg${pageMaker2.makeQuery(pageMaker2.endPage+1)}">[다음]</a>
							</li>
						</c:if>		
					</ul>
					</div>
				
					<div class="bbs_list_btn">
		            <form id="write_con_form" name="write_con_form">        	
		       			<c:choose>
		       				<c:when test="${sessionScope.user_type == 2}">
								<input type="button" class="btn-black" onclick="go_write_con()" value="글쓰기">
		       				</c:when>
		       				<c:otherwise>
		
		       				</c:otherwise>       
		       			</c:choose>
		            </form>
		           	</div>
		        </div>
		    	</div>
		    	
		    	<div class="tab_content" id="tab3_content">
		            <table width="1200" cellpadding="0" cellspacing="0" class="table_list">
		                <tr>
		                    <td width="100" class="b"><p>번호</p></td>
		                    <td width="700" class="b"><p>제목</p></td>
		                    <td width="100" class="b"><p>지역</p></td>
		                    <td width="100" class="b"><p>글쓴이</p></td>
		                    <td width="100" class="b"><p>조회</p></td>
		                    <td width="100" class="b"><p>종료일자</p></td>
		                </tr>
		                <c:forEach items="${conList3}" var="ConstructionVO">
			                <tr>
			                    <td class="b">${ConstructionVO.con_seq}</td>
			                    <td><a href="con_detail_mg${pageMaker3.makeQuery(pageMaker3.cri.pageNum)}&con_seq=${ConstructionVO.con_seq}">${ConstructionVO.con_name}</a></td>
			                    <td>${ConstructionVO.sido} ${ConstructionVO.gugun}</td>
			                    <td>${ConstructionVO.cp_name}</td>
			                    <td>${ConstructionVO.view_count}</td>
			                    <td><fmt:formatDate value="${ConstructionVO.end_date}" pattern="yyyy-MM-dd"/></td>
			                </tr>
		                </c:forEach>
		            </table>
		        <div class="bbs_list_bottom">
		        	<div class="bbs_list_num">
					<ul class="pagination">		
						<c:if test="${pageMaker3.prev}">
							<li class="paginate_button previous">
								<a href="con_list_form_mg${pageMaker3.makeQuery(pageMaker3.startPage-1)}">[이전]</a>
							</li>
						</c:if>
									
						<!-- [1][2][3]... 표시 부분 -->
						<c:forEach begin="${pageMaker3.startPage}" end="${pageMaker3.endPage}" var="index">
							<a href="con_list_form_mg${pageMaker3.makeQuery(index)}">[${index}]</a>
						</c:forEach>
							
						<c:if test="${pageMaker3.next}">
							<li class="paginate_button next">
								<a href="con_list_form_mg${pageMaker3.makeQuery(pageMaker3.endPage+1)}">[다음]</a>
							</li>
						</c:if>		
					</ul>
					</div>
				
					<div class="bbs_list_btn">
		            <form id="write_con_form" name="write_con_form">        	
		       			<c:choose>
		       				<c:when test="${sessionScope.user_type == 2}">
								<input type="button" class="btn-black" onclick="go_write_con()" value="글쓰기">
		       				</c:when>
		       				<c:otherwise>
		
		       				</c:otherwise>       
		       			</c:choose>
		            </form>
		           	</div>
		        </div>
		    	</div>
		    	
		    	<div class="tab_content" id="tab4_content">
		            <table width="1200" cellpadding="0" cellspacing="0" class="table_list">
		                <tr>
		                    <td width="100" class="b"><p>번호</p></td>
		                    <td width="700" class="b"><p>제목</p></td>
		                    <td width="100" class="b"><p>지역</p></td>
		                    <td width="100" class="b"><p>글쓴이</p></td>
		                    <td width="100" class="b"><p>조회</p></td>
		                    <td width="100" class="b"><p>종료일자</p></td>
		                </tr>
		                <c:forEach items="${conList4}" var="ConstructionVO">
			                <tr>
			                    <td class="b">${ConstructionVO.con_seq}</td>
			                    <td><a href="con_detail_mg${pageMaker4.makeQuery(pageMaker4.cri.pageNum)}&con_seq=${ConstructionVO.con_seq}">${ConstructionVO.con_name}</a></td>
			                    <td>${ConstructionVO.sido} ${ConstructionVO.gugun}</td>
			                    <td>${ConstructionVO.cp_name}</td>
			                    <td>${ConstructionVO.view_count}</td>
			                    <td><fmt:formatDate value="${ConstructionVO.end_date}" pattern="yyyy-MM-dd"/></td>
			                </tr>
		                </c:forEach>
		            </table>
		        <div class="bbs_list_bottom">
		        	<div class="bbs_list_num">
					<ul class="pagination">		
						<c:if test="${pageMaker4.prev}">
							<li class="paginate_button previous">
								<a href="con_list_form_mg${pageMaker4.makeQuery(pageMaker4.startPage-1)}">[이전]</a>
							</li>
						</c:if>
									
						<!-- [1][2][3]... 표시 부분 -->
						<c:forEach begin="${pageMaker4.startPage}" end="${pageMaker4.endPage}" var="index">
							<a href="con_list_form_mg${pageMaker4.makeQuery(index)}">[${index}]</a>
						</c:forEach>
							
						<c:if test="${pageMaker4.next}">
							<li class="paginate_button next">
								<a href="con_list_form_mg${pageMaker4.makeQuery(pageMaker4.endPage+1)}">[다음]</a>
							</li>
						</c:if>		
					</ul>
					</div>
				
					<div class="bbs_list_btn">
		            <form id="write_con_form" name="write_con_form">        	
		       			<c:choose>
		       				<c:when test="${sessionScope.user_type == 2}">
								<input type="button" class="btn-black" onclick="go_write_con()" value="글쓰기">
		       				</c:when>
		       				<c:otherwise>
		
		       				</c:otherwise>       
		       			</c:choose>
		            </form>
		           	</div>
		        </div>
		    	</div>
			</div>

			</div>
			<!-- /inner-container -->
		</div>
		<!-- /container -->


		<footer>
			Copyright 2021 project construction management
		</footer>
		<!-- /Footer -->
	</div>
	<!-- /wrap -->
</body>

</html>