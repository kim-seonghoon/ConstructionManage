/**
 * 
 */

function go_write_con() {
	$("#write_con_form").attr("action", "write_con_form").submit();
}

function write_con() {
	var $con_name = $("#con_name");
	var $con_num = $("#con_num");
	var $cp_name = $("cp_name");
	var $zip_num = $("zip_num");
	var $sido = $("#sido");
	var $gugun = $("#gugun");
	var $dong = $("#dong");
	var $addr1 = $("#addr1");
	var $addr2 = $("#addr2");
	var $con_size = $("#con_size");
	var $con_state = $("#con_state");
	var $start_date = $("#s_date");
	var $end_date = $("#e_date");
	var $dept = $("#dept");
	var $dept_tel = $("#dept_tel");
	var $content = $("#content");
	
	if($con_name.val()=="") {
		
		alert("공사명을 입력해 주세요!");
		$con_name.focus();
		
	} else if($con_num.val()=="") {
		
		alert("공사 종류를 선택해 주세요!");
		$con_num().focus();
		
	} else if($cp_name.val()=="") {
		
		alert("공사 업체명을 입력해 주세요!");
		$cp_name().focus();
		
	} else if($zip_num.val()=="") {
		
		alert("공사 업체의 지번을 입력해 주세요!");
		$zip_num().focus();
		
	} else if($addr1.val()=="" || $addr2.val()=="") {
		
		alert("주소를 빠짐없이 기재해 주세요!");
		$addr1.focus();
	} else if($start_date=="") {
		
		alert("공사 시작일을 입력해 주세요!");
		$start_date.focus();
		
	} else if($end_date=="") {
		
		alert("예상 공사 종료일을 입력해 주세요!");
		$end_date.focus();
		
	} else {
		$("#writeForm").attr("action", "con_write").submit();
	}
}

function delete_con() {
	$("#con_detail_form").attr("action", "con_delete?cp_num="+$("#cp_num").val()+"&con_seq="+$("#con_seq").val()).submit();
}

function update_con() {
	$("#con_detail_form").attr("action", "con_update?cp_num="+$("#cp_num").val()+"&con_seq="+$("#con_seq").val()).submit();
}