package com.green.view.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.green.biz.company.CompanyService;
import com.green.biz.dto.CompanyVO;

@Controller
public class CompanyController { 
	@Autowired 
	CompanyService companyService;
	 
	@RequestMapping(value="/join_cp")
	public String joinCompany(CompanyVO vo,
							  @RequestParam(value="cp_num1") String num1, @RequestParam(value="cp_num2") String num2,
							  @RequestParam(value="admin_p1") String admin_p1, @RequestParam(value="admin_p2") String admin_p2, @RequestParam(value="admin_p3") String admin_p3,
							  @RequestParam(value="cp_p1") String cp_p1, @RequestParam(value="cp_p2") String cp_p2, @RequestParam(value="cp_p3") String cp_p3,
							  @RequestParam(value="fax_num1") String fax_num1, @RequestParam(value="fax_num2") String fax_num2, @RequestParam(value="fax_num3") String fax_num3,
							  @RequestParam(value="addr1") String addr1, @RequestParam(value="addr2") String addr2) {
		String cp_num = num1 + "-" + num2;
		String admin_phone = admin_p1 + "-" + admin_p2 + "-" + admin_p3;
		String cp_phone = cp_p1 + "-" + cp_p2 + "-" + cp_p3;
		String fax_num = fax_num1 + "-" + fax_num2 + "-" + fax_num3;
		String cp_address = addr1 + " " + addr2; 
		
		vo.setCp_num(cp_num);
		vo.setAdmin_phone(admin_phone);
		vo.setCp_phone(cp_phone);
		vo.setFax_num(fax_num);
		vo.setCp_address(cp_address);
		
		companyService.insertCompany(vo);
		return "member/login"; 
	}

}
