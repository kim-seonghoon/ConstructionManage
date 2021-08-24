/**
 * 
 */

function go_write_comp() {
	$("#comp_write_form").attr("action", "write_comp_form").submit();
}

function categoryChange(e) {
	var good_a = ["강남구", "관악구", "중구", "강동구","종로구"
				  ,"중랑구", "강서구", "동작구", "강북구","구로구"
				  ,"마포구", "성동구", "송파구", "양천구","영등포구"
				  ,"서초구", "성북구", "은평구", "광진구","노원구"
				  ,"금천구", "서대문구", "용산구", "동대문구","도봉구"];
	
	var good_b = ["수원시", "김포시", "파주시", "과천시","성남시"
				  ,"의정부시", "양주시", "안산시", "광주시","안성시"
				  ,"의왕시", "고양시", "구리시", "화성시","용인시"
				  ,"하남시", "부천시", "군포시", "시흥시","안양시"
				  ,"평택시", "오산시", "안양시", "남양주시","동두천시"
				  ,"광명시", "이천시", "포천시","가평군"];
	var good_c = ["동구", "중구", "서구", "대덕구", "유성구"];
	var good_d = ["남구", "동구", "달성군", "수성구", "중구","북구","서구","달서구"];
	var good_e = ["동래구", "남구", "동구", "사상구", "영도구","중구"
			   	  ,"해운대구", "부산진구", "북구", "서구", "강서구","연제구"
			   	  ,"기장군", "금정구", "사하구","수영구"];
	var good_f = ["동구", "서구", "남구", "북구", "광산구"];
	var good_g = ["남구", "동구", "연수구", "중구", "옹진군"
				  ,"계양구", "서구", "부평구", "남동구", "강화군"];
	var good_h = ["남구", "중구", "동구", "북구", "울주군"];
	var good_i = ["청원군"];
	var good_j = ["평창군", "고성군", "화천군", "양구군", "영월군"
				  ,"태백시", "양양군", "동해시", "강릉시", "원주시"
				  ,"춘천시", "인제군", "홍천군", "정선군", "철원군"
				  ,"횡성군", "삼척시", "속초시"];
	var good_k = ["밀양시"];
	var target = document.getElementById("addr2");

	if(e.value == "서울") var d = good_a;
	else if(e.value == "경기") var d = good_b;
	else if(e.value == "대전") var d = good_c;
	else if(e.value == "대구") var d = good_d;
	else if(e.value == "부산") var d = good_e;
	else if(e.value == "광주") var d = good_f;
	else if(e.value == "인천") var d = good_g;
	else if(e.value == "울산") var d = good_h;
	else if(e.value == "충북") var d = good_i;
	else if(e.value == "강원") var d = good_j;
	else if(e.value == "경남") var d = good_k;

	target.options.length = 0;

	for (x in d) {
		var opt = document.createElement("option");
		opt.value = d[x];
		opt.innerHTML = d[x];
		target.appendChild(opt);
	}	
}


function go_save_comp(){
	if ($("#title").val() == "") {
		alert("제목 입력해 주세요!");
		$("#title").focus();
	} else if($("#con_num").val() == "공사선택"){
		alert("공사를 선택해주세요!")
	} else if ($("#addr1").val() == "시도") {
		alert("지역을 선택해 주세요!");
	}else if ($("#content").val().length == 0) {
		alert("내용을 입력해 주세요!");
	}	else {
		$("#com_form").attr("action", "comp_write").submit();
	}
}