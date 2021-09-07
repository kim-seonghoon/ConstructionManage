<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html lang="ko"> 

<head>
	<link rel="stylesheet" href="css/mainstyle.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<script type="text/javascript" src="js/jquery-3.6.0.min.js"></script>
	<script type="text/javascript" src="js/member.js"></script>
	<script type="text/javascript" src="js/complaint.js"></script>
	<script type="text/javascript" src="js/construction.js"></script>
	<script type="text/javascript" src="js/mypage.js"></script>  
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
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
					<li><a href="con_list_form_mg">공사 관리</a></li>
					<li><a href="comp_list_form_mg">민원 관리</a></li>
					<li><a href="user_list_form_mg">유저 관리</a></li>
					<li><a href="user_list_form_mg">공사업체 관리</a></li>
					<li class="btn"><a href="logout">로그아웃</a></li>
				</ul>
			</nav>
		</header>
		<!-- /navbar -->
		
		<div class="jumbotron">
			<div class="container">
				<h1>관리자 모드</h1>
			</div>
		</div>

		<div class="container bbs_main">
			<div class="search"> 
				<select class="form-control input" name="search-condition" id="search01">
					<option value="1">통합검색</option>
                    <option value="2">지역</option>
                    <option value="3">제목</option>
				</select>
				<input type="text" name="key" class="form-control textarea" id="search02" placeholder="원하시는 지역을 입력하세요">
				<span ><button class="form-control btn" type="button">검색</button></span>
			</div>
		<!-- /Search-->

			<div class="inner-container">
				<h2>｜ 공사현황</h2>

				<table class="list-group">
                    <c:forEach items="${newConstructionList}"  var="constructionVO">
					<tr>
                        <td><a href="con_detail_mg?con_seq=${constructionVO.con_seq}">- ${constructionVO.con_name}</a></td>
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
						<td><a href="comp_detail_mg?com_seq=${complaintVO.com_seq}">- ${complaintVO.title}</a></td>
						<td><fmt:formatDate value="${complaintVO.regdate}" pattern="yyyy-MM-dd"/></td>
					</tr>
					</c:forEach>
				</table>
	
				<!-- /list-group -->
			</div>
		</div>
		<!-- /inner-container -->
		</div>
		<!-- /container -->
<%@ include file="../footer.jsp" %>

