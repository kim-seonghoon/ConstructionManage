<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>  
    <div id="contents"  style="text-align: center;">
      <div class="page-header">
        <h1><a href=""><small>"우리동네 궁금한 공사 어떤 공사일까?"</small></a></h1>
      </div>
        <table> 
            <tr>
                <td>
                    <select id="search_condition">
                        <option value="1">통합검색</option>
                        <option value="2">제목</option>
                        <option value="3">작성자</option>
                    </select>
                </td>
                <td><input type="text" name="key"></td>
                <td><input type="button">검색</td>
            </tr>
        </table>
        <div class="jumbotron col-md-6">
          <h2>공사현황</h2>
          <p>...</p>
        </div>
        <div class="jumbotron col-md-6">
          <h2>공사현황</h2>
          <p>...</p>
        </div>
    </div>
  </div>
</body>
</html>