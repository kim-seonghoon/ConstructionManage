<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html lang="ko"> 

<head>
	<link rel="stylesheet" href="css/공사관리style.css">
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
				<h1><a class="navbar-brand" href="index">공사관리</a></h1>
			</div>
			<nav class="gnb">
				<ul class="nav navbar-nav">
					<!-- <li class="active"><a href="#">1depth-01</a></li> -->
					<li><a href="con_list_form">공사 현황</a></li>
					<li><a href="comp_list_form">민원 보기</a></li>
					<c:choose>
						<c:when test="${empty sessionScope.loginUser}">
							<li class="btn"><a href="login_form">로그인</a></li>
							<li class="btn"><a href="join_form">회원가입</a></li>
						</c:when>
						<c:otherwise>
							<li class="btn"><a href="logout">로그아웃</a></li>
							<li class="btn"><a href="mypage_form">내정보</a></li>
						</c:otherwise>
					</c:choose>
				</ul>
			</nav>
		</header>
		<!-- /navbar -->
