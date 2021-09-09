<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html lang="ko"> 

<head>
	<link rel="stylesheet" type="text/css" href="css/mainstyle.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap-3.3.2-dist/css/bootstrap.min.css">
	<script type="text/javascript" src="js/jquery-3.6.0.min.js"></script>
	<script type="text/javascript" src="js/member.js"></script>
	<script type="text/javascript" src="js/complaint.js"></script>
	<script type="text/javascript" src="js/construction.js"></script>
	<script type="text/javascript" src="js/mypage.js"></script>  
	<title>공사관리 Main</title>
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

					<li class="btn"><a href="logout">로그아웃</a></li>
				</ul>
			</nav>
		</header>
		<!-- /navbar -->
		<!-- /navbar -->
		<div class="jumbotron">
			<div class="container">
				<h1>유저 관리</h1>
			</div>
		</div>
		
		<div class="container bbs_main">
			<div class="search"> 
			<form id="userform" action="user_list_form_mg" name="frm" method="POST">
				<select class="form-control input" name="search-user" id="search01">
					<option value="1">아이디</option>
                    <option value="2">이름</option>
				</select>
				<input type="text" name="key" class="form-control textarea" id="search02" placeholder="이름을 입력하세요">
				<span ><input class="form-control btn" type="submit" value="검색"></span>
			</form>
			</div>
			 <div>
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
            <form name="user_List_form" id="user_lsit_form">
            	<input type="button" value="삭제" onclick="go_delete_user()">
            </form>
        </div>
    </div>
			
<%@ include file="../footer.jsp" %>