<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="header.jsp" %>
    
    <link rel="stylesheet" type="text/css" href="css/bootstrap-3.3.2-dist/css/bootstrap.min.css">
    <style>
    	#join_select{
    		margin-top: 0px;
    	}
        input[type="checkbox"] {
        -webkit-appearance: none;
        position: relative;
        width: 16px;
        height: 16px;
        cursor: pointer;
        outline: none !important;
        border: 1px solid #333;
        border-radius: 2px;
        background: #fbfbfb;
	    }
	 
	    input[type="checkbox"]::before {
	        content: "\2713";
	        position: absolute;
	        top: 50%;
	        left: 50%;
	        overflow: hidden;
	        transform: scale(0) translate(-50%, -50%);
	        line-height: 1;
	    }
	 
	    input[type="checkbox"]:hover {
	        border-color: rgba(170, 170, 170, 0.5);
	    }
	 
	    input[type="checkbox"]:checked {
	        background-color: #113a6b;
	        border-color: rgba(255, 255, 255, 0.3);
	        color: white;
	    }
	 
	    input[type="checkbox"]:checked::before {
	        border-radius: 2px;
	        transform: scale(1) translate(-50%, -50%)
	    }
    </style>
    <div class="jumbotron_small">
		<div class="container">
			<h1>회원 가입</h1>
		</div>
	</div>
   <div class="container bbs_main">
   <h3 style="text-align: left; font-weight: bold;">| 약관 정보</h3>
   <form id="member" >
   	   <div>
   	   <table style="margin-top: 30px; padding-left: 20px">
			<tr><td><h4 style="text-align: left">개인정보 수집·이용 및 제3자 제공·조회 동의서</h4></td></tr>
			<tr><td><h5 style="text-align: left; line-height: 17px">&nbsp;&nbsp;&nbsp;&nbsp;본 우리동네 공사에서는 개인 정보를 수집·이용·제공함에 있어 [개인정보 보호법] 제15조부터 제22조에 따라 수집목적에 필요한 최소한의 정보만 수집하며,<br>&nbsp;&nbsp;&nbsp;&nbsp;본래의 목적 이외에 이용하거나 제공하지 않습니다.</h5></td></tr>
			<tr><td><h4  style="text-align: left">수집·이용에 관한 사항</h4></td></tr>
		<tr>
			<td>
			<textarea style="resize: none;" rows="10" cols="150" readonly="readonly">
	
	**수집·이용에 관한 사항**		
	개인정보의 수집·이용 목적 : 민원에대한 알림

	수집하는 개인정보의 항목 :
	생년월일, 주소, 회원의 휴대전화 및 fax 번호 등
	본인의 작성에 따라 취득한 개인정보로 민원의 적합성 확인

	개인정보의 보유기간 : 위 개인정보는 수집·이용·제공에 관한 동의일로부터 관계 법령의 규정에 따라
	신청인의 개인정보를 보존할 의무가 있는 경우가 아닌 한,
	이용목적을 달성할 때까지 보유 및 이용합니다.</textarea>
			</td>
		</tr> 
		<tr><td><h4 style="text-align: left">목적 외 이용 및 제3자 제공에 관한 사항</h4></td></tr>
		<tr>
			<td>
			<textarea style="resize: none;" rows="10" cols="150" readonly="readonly">
		
	**목적 외 이용 및 제3자 제공에 관한 사항**	 
	개인정보를 제공받는 자 : 국가, 지방자치단체, 지원 대상 조사기관

	제공되는 개인정보의 항목 : 고유식별정보, 인적사항, 수혜내역

	제공받은 자의 개인정보 보유·이용 기간 : 위 개인정보는 수집·이용·제공에 관한 동의일로부터 관계 법령의 규정에 따라 신청인의
	개인정보를 보존할 의무가 있는 경우가 아닌 한, 이용목적을 달성할 때까지 보유 및 이용합니다.</textarea>
			</td>
		</tr>    
   	   </table>
   	   <br>
	   	   <span style="font-size: 16px">위의 내용을 읽었으며 이에 대하여 동의 합니다.</span> <input type="checkbox" id="agree" name="agree" value="agree">
   	   </div>
   <h3 style="text-align: left; font-weight: bold;">| 회원 선택</h3>
	   <div id="join_select">
	   <input type="button" class="btn-user" value="일반 회원" onclick="join_agree()">
	   <input type="button" class="btn-company" value="공사 업체" onclick="comp_join_agree()">
	   </div>
   </form>
   </div>
<%@ include file="../footer.jsp" %>