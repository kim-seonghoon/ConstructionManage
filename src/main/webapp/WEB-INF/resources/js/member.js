/**
 * 
 */

function login_form() {
	$("#theform").attr("action", "login_form").submit();
}

function join_form() {
	   $("#theform").attr("action", "join_form").submit();
}

function join_detail_form(){
	   $("#member").attr("action","join_detail_form").submit();
}

function company_join_form(){
	   $("#member").attr("action","company_join_form").submit();
}

function go_find_id_form(){
	$("#member").attr("action","find_id_form").submit();
}

function go_find_pwd_form(){
	$("#member").attr("action","find_pwd_form").submit();
}

function idcheck() {
	if($("#user_id").val() == ""){
		alert("아이디를 입력해 주세요!");
		$("#user_id").focus();
		return;
	}
	
	// 아이디 중복 체크를 위한 윈도우 오픈 요청
	var url="id_check_form?user_id=" + $('#user_id').val();

	window.open(url, "_blank_1", 
	"toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=450, height=250");	
}

function idcheckcp() {
	if($("#cp_id").val() == ""){
		alert("아이디를 입력해 주세요!");
		$("#cp_id").focus();
		return;
	}
	
	// 아이디 중복 체크를 위한 윈도우 오픈 요청
	var url="id_check_form_cp?cp_id=" + $('#cp_id').val();

	window.open(url, "_blank_1", 
	"toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=450, height=250");	
}

function go_save() {
	var $pwdCheck = $('#pwd_chk');
	
	if ($("#user_id").val() == "") {
		alert("아이디를 입력해 주세요!");
		$("#user_id").focus();
	} else if ($("#user_id").val() != $("#reid").val()) {
		alert("아이디 중복체크를 해주세요!");
		$("#user_id").focus();
	} else if ($("#pwd").val() == "") {
		alert("비밀번호를 입력해 주세요!");
		$("#pwd").focus();
	} else if ($("#pwd").val() != $pwdCheck.val()) {
		alert("비밀번호가 일치하지 않습니다!" + $("#pwd").val() + $("#pwd_chk").val());
		$("#pwd").focus();
	} else if ($("#name").val() == "") {
		alert("이름을 입력해 주세요!");
		$("#name").focus();
	} else {
		$("#join").attr("action", "join").submit();
	}
}

// 비밀번호 변경 시 비밀번호 확인
function go_save_pwd(){
	var $pwdCheck = $("#pwd_chk");
	
	if ($("#pwd").val() == "") {
		alert("비밀번호를 입력해 주세요!");
		$("#pwd").focus();
	} else if ($("#pwd").val() != $pwdCheck.val()) {
		alert("비밀번호가 일치하지 않습니다!");
		$pwdCheck.focus();
	}else {
		$("#member").attr("action", "pwd_change").submit();
	}
}

function go_save_cp() {
	var $cp_id = $('#cp_id');
	var $reid = $('#reid');
	var $pwd = $('#pwd');
	var $pwdCheck = $('#pwd_chk');
	var $cp_name = $('#cp_name');
	var $admin_name = $('#admin_name');
	
	if($cp_id.val()=="") {
		alert("아이디를 입력해 주세요!");
		$cp_id.focus();
	} else if($cp_id.val()!=$reid.val()) {
		alert("아이디 중복확인을 해주세요!");
		$reid.focus();
	} else if($pwd.val()=="") {
		alert("비밀번호를 입력해 주세요!");
		$pwd.focus();
	} else if($pwd.val()!=$pwdCheck.val()) {
		alert("비밀번호가 일치하지 않습니다!");
		$pwdCheck.focus();
	} else if($cp_name.val()=="") {
		alert("공사 업체명을 입력해 주세요!");
		$cp_name.focus();
	} else if($("#cp_num1").val()=="" || $("#cp_num2").val()=="") {
		alert("사업자 번호를 입력해 주세요!");
		$("#cp_num1").focus();
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
		$('#formm').attr("action", "join_cp").submit(); 
	}
}

/*
 * 우편번호 찾기 창을 오픈
 */
function post_zip() {
	var url = "find_zip_num";
	
	window.open(url, "_blank_1", 
	"toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=600, height=450");
}
 
function logout() {
	$("#theform").attr("action", "logout").submit();
}

