package com.green.view.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.green.biz.company.CompanyService;
import com.green.biz.dto.CompanyVO;
import com.green.biz.dto.UserVO;
import com.green.biz.user.UserService;

@Controller
@SessionAttributes("loginUser") 
public class MypageController {
	@Autowired
	private UserService userService;
	@Autowired
	private CompanyService companyService;
	
	@RequestMapping(value="userLogin")
	public String userLogin(UserVO vo) {
		userService.insertUser(vo);
		
		return "main";    
	}
	
	// mypage 화면 출력
	@RequestMapping(value="mypage_form")
	public String mypageForm(HttpSession session, Model model) {
		int user_type = (int)session.getAttribute("user_type");
		
		if(user_type == 1) {
			UserVO loginUser = (UserVO) session.getAttribute("loginUser");
			String addr1 = loginUser.getSido() + " " + loginUser.getGugun() + " " + loginUser.getDong();
			String[] addr = loginUser.getAddress().split(" ");
			String addr2 = "";
			
			for(int i=3; i<addr.length; i++) {
				addr2 += addr[i] + " ";
			}
			model.addAttribute("addr1", addr1);
			model.addAttribute("addr2", addr2);
			
			String[] num = loginUser.getPhone().split("-");
			
			for(int i=0; i<num.length; i++) {
				model.addAttribute("num"+i, num[i]);
			}
			
			return "mypage/mypage";
			
		} else if(user_type == 2) {
			
			CompanyVO loginUser = (CompanyVO) session.getAttribute("loginUser");
			String[] addr = loginUser.getCp_address().split(" ");
			String addr1 = "";
			String addr2 = "";
			
			for(int i=0; i<3; i++) {
				addr1 += addr[i] + " ";
			}
			for(int i=3; i<addr.length; i++) {
				addr2 += addr[i] + " ";
			}
			
			model.addAttribute("addr1", addr1);
			model.addAttribute("addr2", addr2);
			
			String[] anum = loginUser.getAdmin_phone().split("-");
			
			for(int i=0; i<anum.length; i++) {
				model.addAttribute("anum"+(i+1), anum[i]);
			}
			
			String[] cnum = loginUser.getCp_phone().split("-");
			
			for(int i=0; i<cnum.length; i++) {
				model.addAttribute("cnum"+(i+1), cnum[i]);
			}
			
			String[] fax = loginUser.getFax_num().split("-");
			
			for(int i=0; i<fax.length; i++) {
				model.addAttribute("fax"+(i+1), fax[i]);
			}
			
			return "mypage/company_page";
		} else {
			
			return "member/login";
		}
	}
	
	// 일반 유저 정보 수정
	@RequestMapping(value="update_user")
	public String updateUser(@RequestParam(value="addr1") String addr1, @RequestParam(value="addr2") String addr2, UserVO vo, Model model,
			 @RequestParam(value="num1") String num1, @RequestParam(value="num2") String num2, @RequestParam(value="num3") String num3) {
		
		String address = addr1 + " " + addr2;
		String phone = num1 + "-" + num2 + "-" + num3;
		
		vo.setAddress(address);
		vo.setPhone(phone);
		
		userService.updateUser(vo);
		
		UserVO loginUser = userService.getUser(vo);
		System.out.println(loginUser);
		model.addAttribute("loginUser", loginUser);
		
		return "index";
	}
	
	@RequestMapping(value="delete_user")
	public String deleteUser(UserVO vo, SessionStatus status) {
		userService.deleteUser(vo);
		
		status.setComplete();
		
		return "index";
	}
	
	// 공사 업체 정보 수정
	@RequestMapping(value="/update_cp")
	public String joinCompany(CompanyVO vo, Model model,
							  @RequestParam(value="admin_p1") String admin_p1, @RequestParam(value="admin_p2") String admin_p2, @RequestParam(value="admin_p3") String admin_p3,
							  @RequestParam(value="cp_p1") String cp_p1, @RequestParam(value="cp_p2") String cp_p2, @RequestParam(value="cp_p3") String cp_p3,
							  @RequestParam(value="fax_num1") String fax_num1, @RequestParam(value="fax_num2") String fax_num2, @RequestParam(value="fax_num3") String fax_num3,
							  @RequestParam(value="addr1") String addr1, @RequestParam(value="addr2") String addr2) {

		String admin_phone = admin_p1 + "-" + admin_p2 + "-" + admin_p3;
		String cp_phone = cp_p1 + "-" + cp_p2 + "-" + cp_p3;
		String fax_num = fax_num1 + "-" + fax_num2 + "-" + fax_num3;
		String cp_address = addr1 + " " + addr2; 
		
		vo.setAdmin_phone(admin_phone);
		vo.setCp_phone(cp_phone);
		vo.setFax_num(fax_num);
		vo.setCp_address(cp_address);
		
		companyService.updateCompany(vo);
		CompanyVO loginUser = companyService.getCompany(vo.getCp_id());
		
		System.out.println(loginUser);
		model.addAttribute("loginUser", loginUser);
		
		return "index";
	}
	
	@RequestMapping(value="delete_cp")
	public String deleteCp(CompanyVO vo, SessionStatus status) {
		companyService.deleteCompany(vo.getCp_num());
		
		status.setComplete();
		
		return "index";
	}
}
