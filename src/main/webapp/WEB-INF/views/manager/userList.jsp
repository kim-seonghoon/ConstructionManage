<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html lang="ko"> 

<head>
	<link rel="stylesheet" href="css/liststyle.css?ver=3">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<script type="text/javascript" src="js/jquery-3.6.0.min.js"></script>
	<script type="text/javascript" src="js/member.js"></script>
	<script type="text/javascript" src="js/complaint.js?ver=1"></script>
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
					<li><a href="con_list_form_mg">공사 현황</a></li>
					<li><a href="comp_list_form_mg">민원 관리</a></li>
					<li><a href="user_list_form_mg">유저 관리</a></li>
					<li><a href="company_list_form_mg">공사업체 관리</a></li>

					<li class="btn_nav"><a href="logout">로그아웃</a></li>
				</ul>
			</nav>
		</header>

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
				<span><input class="form-control btn" type="submit" value="검색" style="margin-top:0"></span>
			</div>
			</form>
			<div>
			<form name="frm" method="POST">
            <table width="1200" cellpadding="0" cellspacing="0" class="table_list">
                <tr>
                	<td width="50" class="b">체크</td>
                    <td width="100" class="b">이름</td>
                    <td width="100" class="b">아이디</td>
                    <td width="700" class="b">주소</td>
                    <td width="100" class="b">탈퇴 여부</td>
                </tr>               
                <c:forEach items="${userList}" var="UserVO">
                <tr>
	                <c:choose>
	                	<c:when test="${UserVO.dropyn=='y'}">
	                		<td><input type="checkbox" name="result" value="${UserVO.user_id}"></td>
	                	</c:when>
	               		<c:otherwise>
	               			<td></td>
	               		</c:otherwise>
	               	</c:choose>
	                <td>${UserVO.name}</td>
	                <td>${UserVO.user_id}</td>
	                <td>${UserVO.address}</td>
	                <td>${UserVO.dropyn}</td>
	            </tr>
                </c:forEach>
            </table>
            <div class="bbs_list_bottom">
            	<div class="bbs_list_num">
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
            		<input type="button" value="삭제" class="btn-red" onclick="go_delete_user()">
            </div>
            </form>
        </div>
    </div>
<%@ include file="../footer.jsp" %>