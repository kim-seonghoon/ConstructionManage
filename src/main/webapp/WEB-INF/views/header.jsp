<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="css/공사관리style.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<script type="text/javascript" src="js/jquery-3.6.0.min.js"></script>
	<script type="text/javascript" src="member/member.js"></script>
	<script type="text/javascript" src="complaint/complaint.js"></script>
	<script type="text/javascript" src="construction/construction.js"></script>
	<script type="text/javascript" src="mypage/mypage.js"></script>  
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head> 
<body>
	<div id="wrap" class="container-fluid">
	<header>
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
          <!-- Brand and toggle get grouped for better mobile display -->
          <div class="navbar-header">
          <form name="theform" id="theform">
            <a class="navbar-brand" style="color: #fff;" href="#">공사관리</a>
          </div>     	  
          <!-- Collect the nav links, forms, and other content for toggling -->
          <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">        	
            <ul class="nav navbar-nav navbar-right">
              <li class="active"><a href="con_list_form">공사현황 <span class="sr-only">(current)</span></a></li>
              <li><a href="comp_list_form">민원보기</a></li>
              <input type="button" class="btn btn-default navbar-btn" style="margin-left: 50px;" onclick="login_form()" value="로그인">
              <input type="button" class="btn btn-default navbar-btn" onclick="join_form()" value="회원가입">
            </ul>
          </div><!-- /.navbar-collapse -->
          </form>
        </div><!-- /.container-fluid -->
        <div class="row">
          <div ><img src="images/main.jpg" class="container-fluid" alt=""  style="width: 100%; height: 100px; object-fit: cover;"></div>
        </div>
      </nav>
      </header>
