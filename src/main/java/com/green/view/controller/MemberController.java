package com.green.view.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.green.biz.user.UserService;

@Controller
public class MemberController {
	@Autowired
	UserService userService;
	
	@RequestMapping(value="login_form")
	public String login_form() {
		return "member/login";
	}
	
	@RequestMapping(value="join_form")
	public String join_form() {
		return "member/join";
	}
}
