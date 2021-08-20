package com.green.view.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.green.biz.dto.UserVO;
import com.green.biz.user.UserService;

@Controller
@SessionAttributes("loginUser")
public class MemberController {
	@Autowired
	UserService userService;
	
	@RequestMapping(value="login_form",method=RequestMethod.GET)
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
	
	@RequestMapping(value="/join", method=RequestMethod.POST)
	public String joinAction(@RequestParam(value="addr1") String addr1,
							 @RequestParam(value="addr2") String addr2,
							 @RequestParam(value="num1") String num1,
							 @RequestParam(value="num2") String num2,
							 @RequestParam(value="num3") String num3,UserVO vo) {
		
		
		
	}
	
}
