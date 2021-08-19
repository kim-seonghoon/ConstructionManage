package com.green.view.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.green.biz.dto.UserVO;
import com.green.biz.user.UserService;

@Controller
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
}
