/**
 * 
 */

function login_form() {
	$("#theform").attr("action", "login_form").submit();
}

function join_form() {
	$("#theform").attr("action", "join_form").submit();
}

function idchek(){
	if(('#id').val() == ""){
		alert("아이디를 입력해 주세요!");
		$('#id').focus();
		return;
	}
	
}