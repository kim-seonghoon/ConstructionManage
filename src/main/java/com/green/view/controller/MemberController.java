package com.green.view.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.green.biz.address.AddressService;
import com.green.biz.company.CompanyService;
import com.green.biz.dto.AddressVO;
import com.green.biz.dto.CompanyVO;
import com.green.biz.dto.UserVO;
import com.green.biz.user.UserService;

@Controller
@SessionAttributes("loginUser") 
public class MemberController {
	@Autowired
	UserService userService;
	@Autowired
	CompanyService companyService;
	@Autowired
	AddressService addressService;
	
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
	public String loginAction(UserVO vo, Model model, HttpSession session,
							  @RequestParam(value="user_type", defaultValue="1") int user_type) {
		int result = 1;
		// 일반회원인 경우
		if(user_type==1) {
			
			result = userService.loginID(vo);
			
			if (result == 1) { // 사용자 인증 성공
				UserVO loginUser = userService.getMember(vo.getUser_id());
				
				model.addAttribute("loginUser", loginUser);
				session.setAttribute("user_type", user_type);
				
				return "redirect:/index";
			} else  {
				return "member/login_fail";
			}
		// 공사업체인 경우
		} else if(user_type==2) {
			result = companyService.loginID(vo);
			
			if (result == 1) { // 사용자 인증 성공
				CompanyVO loginUser = companyService.getCompany(vo.getUser_id());
				
				model.addAttribute("loginUser", loginUser);
				session.setAttribute("user_type", user_type);
				
				System.out.println("loginUser = " + loginUser);
				System.out.println("user_type = " + user_type);
				
				return "redirect:/index";
			} else  {
				return "member/login_fail";
			}
		} else {
			return "redirect:/index";
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
	// 일반회원 아이디 중복 체크
	@RequestMapping(value="/id_check_form", method=RequestMethod.GET)
	public String idCheckForm(@RequestParam(value="user_id", defaultValue="", required=true) String user_id,
			 				  Model model) {

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
	
	// 업체회원 아이디 중복 체크
	@RequestMapping(value="/id_check_form_cp", method=RequestMethod.GET)
	public String idCheckFormCp(@RequestParam(value="cp_id", defaultValue="", required=true) String cp_id,
			 				  Model model) {

		model.addAttribute("cp_id", cp_id);
		
		return "member/idcheckcp";
	}
	
	@RequestMapping(value="/id_check_form_cp", method=RequestMethod.POST)
	public String idCheckCp(@RequestParam(value="cp_id", defaultValue="", required=true) String cp_id,
						  Model model) {

		int message = companyService.confirmCpId(cp_id);
		model.addAttribute("message", message);		
		model.addAttribute("cp_id", cp_id);

		return "member/idcheckcp";
	}
	
	/*
	 * 우편번호 찾기 화면 요청처리
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
		
		List<AddressVO> addrList = addressService.selectAddressByDong(vo.getDong());
		model.addAttribute("addressList", addrList);
		
		return "member/findZipNum";
	}
	
	@RequestMapping(value="/logout")
	public String logout(SessionStatus status) {
		status.setComplete();
		
		return "redirect:/index";
	}
	
	@RequestMapping(value="/mypage_form")
	public String mypageForm(HttpSession session) {
		int user_type = (int) session.getAttribute("user_type");
		
		if(user_type == 1) {
			return "mypage/mypage";
		} else {
			return "mypage/company_page";
		}
	}
}
