package com.green.biz.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.green.biz.dto.UserVO;
import com.green.biz.user.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="userLogin")
	public String userLogin(UserVO vo) {
		userService.insertUser(vo);
		
		return "main";   
	}
}
