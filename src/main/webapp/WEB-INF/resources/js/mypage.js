/**
 * 
 */
function mypage_form() {
	$("#theform").attr("action", "mypage_form").submit();
}

//일반회원 정보 수정
function updateUser() {
	var $pwdCheck = $("#pwd_chk");
	
	if ($("#addr1").val()=="" || $("#addr2").val()=="") {
		alert("주소를 입력해 주세요!");
		$("#addr1").focus();
	} else if ($("#email").val()=="") {
		alert("이메일을 입력해 주세요!");
		$("#email").focus();
	} else if ($("#num1").val()=="" || $("#num2").val()=="" || $("#num3").val()=="") {
		alert("연락처를 입력해 주세요!");
		$("#num1").focus();
	} else if ($("#pwd").val() != $pwdCheck.val()) {
		alert("비밀번호가 일치하지 않습니다!");
		$("#pwd").focus();
	} else if($("#pwd").val() != $("#pwdUser").val()) {
		alert("비밀번호가 틀렸습니다!");
		$("#pwd").focus();
	} else {
		$("#myForm").attr("action", "update_user").submit();
	}
}

// 공사업체 정보 변경
function updateCp() {
	var $cp_id = $('#cp_id');
	var $reid = $('#reid');
	var $pwd = $('#pwd');
	var $pwdCheck = $('#pwd_chk');
	var $cp_name = $('#cp_name');
	var $admin_name = $('#admin_name');
	
	if($pwd.val()=="") {
		alert("비밀번호를 입력해 주세요!");
		$pwd.focus();
	} else if($pwd.val()!=$pwdCheck.val()) {
		alert("비밀번호가 일치하지 않습니다!");
		$pwdCheck.focus();
	} else if($pwd.val()!=$("#pwdCp").val()) {
		alert("비밀번호가 틀렸습니다!");
		$pwd.focus();
	} else if($cp_name.val()=="") {
		alert("공사 업체명을 입력해 주세요!");
		$cp_name.focus();
	} else if($admin_name.val()=="") {
		alert("담당자를 입력해 주세요!");
		$admin_name.focus();
	} else if($("#admin_p1").val()=="" || $("#admin_p2").val()=="" || $("#admin_p3").val()=="") {
		alert("담당자 연락처를 입력해 주세요!");
		$("#admin_p1").focus();
	} else if($("#cp_p1").val()=="" || $("#cp_p2").val()=="" || $("#cp_p3").val()=="") {
		alert("전화번호를 입력해 주세요!");
		$("#cp_p1").focus(); 
	} else {
		$('#myForm').attr("action", "update_cp").submit(); 
	}
}

function deleteUser() {
	if ($("#pwd").val() != $("#pwd_chk").val()) {
		alert("비밀번호가 일치하지 않습니다!");
		$("#pwd").focus();
	} else if($("#pwd").val() != $("#pwdUser").val()) {
		alert("비밀번호가 틀렸습니다!");
		$("#pwd").focus();
	} else {
		$("#myForm").attr("action", "delete_user").submit();
	}	
}

function deleteCp() {
	if ($("#pwd").val() != $("#pwd_chk").val()) {
		alert("비밀번호가 일치하지 않습니다!");
		$("#pwd").focus();
	} else if($("#pwd").val() != $("#pwdUser").val()) {
		alert("비밀번호가 틀렸습니다!");
		$("#pwd").focus();
	} else {
		$("#myForm").attr("action", "delete_cp").submit();
	}
}
