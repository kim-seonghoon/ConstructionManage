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
	$("#theform").attr("action","join_detail_form").submit();
}

function company_join_form(){
	$("#theform").attr("action","company_join_form").submit();
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

function idok(){
	$("#theform").attr("action", "id_check_confirmed").submit();
}

function go_save() {
	if ($("#user_id").val() == "") {
		alert("아이디를 입력해 주세요!");
		$("#user_id").focus();
	} else if ($("#user_id").val() != $("#reid").val()) {
		alert("아이디 중복체크를 해주세요!");
		$("#user_id").focus();
	} else if ($("#pwd").val() == "") {
		alert("비밀번호를 입력해 주세요!");
		$("#pwd").focus();
	} else if ($("#pwd").val() != $("#pwdCheck").val()) {
		alert("비밀번호가 일치하지 않습니다!");
		$("#pwd").focus();
	} else if ($("#name").val() == "") {
		alert("이름을 입력해 주세요!");
		$("#name").focus();
	} else {
		$("#join").attr("action", "join").submit();
	}
	
	
	function post_zip() {
		var url = "find_zip_num";
		
		window.open(url, "_blank_1", 
		"toolbar=no, menubar=no, scrollbars=no, resizable=yes, width=500, height=350");
	}
}