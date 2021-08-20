package com.green.view.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.green.biz.company.CompanyService;
import com.green.biz.dto.AddressVO;
import com.green.biz.dto.UserVO;
import com.green.biz.user.UserService;

@Controller
@SessionAttributes("loginUser")
public class MemberController {
	@Autowired
	UserService userService;
	@Autowired
	CompanyService companyService;
	
	@RequestMapping(value="/login_form",method=RequestMethod.GET)
	public String login_form() {
		return "member/login";
	}
	
	@RequestMapping(value="join_form")
	public String join_form() {
		return "member/join";
	}
	@RequestMapping(value="join_detail_form")
	public String join_detail_form() {
		
		return "member/join_detail";
	}
	@RequestMapping(value="company_join_form")
	public String company_join_form() {
		
		return "member/company_detail";
	}
	
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String loginAction(UserVO vo, Model model) {
		UserVO loginUser = null;
		
		int result = userService.loginID(vo);
		
		if (result == 1) { // 사용자 인증 성공
			loginUser = userService.getMember(vo.getUser_id());
			
			model.addAttribute("loginUser", loginUser);
			
			return "redirect:/index";
		} else  {
			return "member/login_fail";
		}
	}
	
	@RequestMapping(value="/go_join_detail")
	public String joinDetail(@RequestParam(value="selectUser") int select) {
		if(select==1) {
			return "member/join_detail";
		} else if(select==2) {
			return "member/company_detail";
		} else {
			return "member/join";
		}
	}
	
	@RequestMapping(value="/join", method=RequestMethod.POST)
	public String joinAction(@RequestParam(value="addr1") String addr1,
							 @RequestParam(value="addr2") String addr2,
							 @RequestParam(value="num1") String num1,
							 @RequestParam(value="num2") String num2,
							 @RequestParam(value="num3") String num3,UserVO vo,
							 @RequestParam(value="year") String year,
							 @RequestParam(value="month") String month,
							 @RequestParam(value="day") String day) {
		
		String address = addr1 + " " + addr2;
		String phone = num1 + num2 + num3;
		
		vo.setAddress(address);
		vo.setPhone(Integer.parseInt(phone));
		
		// 생년월일 입력
		String birth_date = year + "-" + month + "-" + day;
		vo.setBirth_date(birth_date);
		
		userService.insertUser(vo);
		System.out.println("회원가입 회원정보 : " + vo);
		return "member/login";
	}
	
	@RequestMapping(value="/id_check_form", method=RequestMethod.GET)
	public String idCheckForm(@RequestParam(value="user_id", defaultValue="", required=true)
							  String user_id,  Model model) {

		model.addAttribute("user_id", user_id);
		
		return "member/idcheck";
	}
	
	@RequestMapping(value="/id_check_form", method=RequestMethod.POST)
	public String idCheck(@RequestParam(value="user_id", defaultValue="", required=true) String user_id,
						  Model model) {

		int message = userService.confirmID(user_id);
		model.addAttribute("message", message);		
		model.addAttribute("user_id", user_id);

		return "member/idcheck";
	}
	
	@RequestMapping(value="/id_check_confirmed", method=RequestMethod.GET)
	public String idCheckConfirmed(UserVO vo, Model model) {
		
		model.addAttribute("id", vo.getUser_id());
		model.addAttribute("reid", vo.getUser_id());
		
		return "member/join_detail";
	}
	
	/*
	 * 우편번호 찾기 화면 요청 처리
	 */
	@RequestMapping(value="/find_zip_num", method=RequestMethod.GET)
	public String findZipNumView() {
		
		return "member/findZipNum";
	}
	
	/*
	 * 동이름으로 우편번호 찾기 조회처리
	 */
	@RequestMapping(value="/find_zip_num", method=RequestMethod.POST)
	public String findZipNumAction(AddressVO vo, Model model) {
		
		List<AddressVO> addrList = userService.selectAddressByDong(vo.getDong());
		
		model.addAttribute("addressList", addrList);
		
		return "member/findZipNum";
	}
	
	
}
