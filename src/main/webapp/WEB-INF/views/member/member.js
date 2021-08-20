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

function idchek(){
	if(('#id').val() == ""){
		alert("아이디를 입력해 주세요!");
		$('#id').focus();
		return;
	}
	
	function go_save() {
		if ($("#user_id").val() == "") {
			alert("아이디를 입력해 주세요!");
			$("#user_id").focus();
		} else if ($("#user_id").val() != $("#reid").val()) {
			alert("아이디 중복체크를 해주세요!");
			$("#id").focus();
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
	}
	
}