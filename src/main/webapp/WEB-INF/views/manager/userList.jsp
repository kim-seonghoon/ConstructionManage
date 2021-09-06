<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

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
<div class="jumbotron">
			<div class="container">
				<h1>유저 관리</h1>
			</div>
		</div>
		
		<div class="container bbs_main">
			<div class="search"> 
				<select class="form-control input" name="search-user" id="search01">
					<option value="1">공사업체</option>
                    <option value="2">민원인</option>
				</select>
				<input type="text" name="key" class="form-control textarea" id="search02" placeholder="이름을 입력하세요">
				<span ><button class="form-control btn" type="button">검색</button></span>
			</div>
			 <div>
            <table>
                <tr>
                	<th>체크</th>
                    <th><p>이름</p></th>
                    <th><p>아이디</p></th>
                    <th><p>주소</p></th>
                </tr>
                <c:forEach items="${userList}" var="UserVO">
	                <tr>
	                	<th><input type="checkbox" value="dropyn"></th>
	                    <th>${UserVO.name}</th>
	                    <th>${UserVO.user_id}</th>
	                    <th>${UserVO.address}</th>
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
            	<input type="button" value="삭제">
            </form>
        </div>
    </div>
			
</div>
</body>
</html>