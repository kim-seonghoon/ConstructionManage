<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>  
    <div id="contents"  style="text-align: center;">
      <div class="page-header">
        <h1><a href=""><small>"우리동네 궁금한 공사 어떤 공사일까?"</small></a></h1>
      </div>
      <form action="search">
	       <table> 
	           <tr>
	               <td>
	                   <select id="search_condition">
	                       <option value="1">통합검색</option>
	                       <option value="2">지역</option>
	                       <option value="3">제목</option>
	                    </select>
	                </td>
	                <td><input type="text" name="key"></td>
	                <td><input type="submit" value="검색"></td>
	            </tr>
	        </table>
        </form>
        <div class="jumbotron col-md-6">
          <ul>
	        <c:forEach items="${newConstructionList}"  var="constructionVO">
	        	<li><a href="con_detail?con_seq=${constructionVO.con_seq}">${constructionVO.con_name}</a></li>
	        	<li>${constructionVO.regdate}</li>
      	    </c:forEach>
          </ul>
        </div>
        <div class="jumbotron col-md-6">
          <ul>
	        <c:forEach items="${newComplaintList}"  var="complaintVO">
	        	<li><a href="comp_detail?com_seq=${complaintVO.com_seq}">${complaintVO.title}</a></li>
	        	<li>${complaintVO.regdate}</li>
      	    </c:forEach>
          </ul>
        </div>
    </div>
  </div>
</body>
</html>