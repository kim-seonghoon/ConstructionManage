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

import com.green.biz.complaints.ComplaintsService;
import com.green.biz.construction.ConstructionService;
import com.green.biz.dto.ComplaintsVO;
import com.green.biz.dto.ConstructionVO;
import com.green.biz.dto.ManagerVO;
import com.green.biz.manager.ManagerService;
import com.green.biz.utils.Criteria;
import com.green.biz.utils.PageMaker;

@Controller
@SessionAttributes("loginUser") 
public class ManagerController {
	
	@Autowired
	ManagerService managerService;
	
	@Autowired
	ConstructionService constructionService;
	
	@Autowired
	ComplaintsService complaintService;
	
	@RequestMapping(value="/manager_login_form",method=RequestMethod.GET)
	public String manager_login_form() {
	return "manager/login";	
	}
	
	@RequestMapping(value="manager_login", method=RequestMethod.POST)
	public String ManagerLoginAction(ManagerVO vo, Model model, HttpSession session) {
		System.out.println(vo);
		
		ManagerVO loginUser = (ManagerVO) managerService.getManager(vo.getManager_id());
		System.out.println("loginUser = " + loginUser);
		
		if(loginUser != null) {
			if(loginUser.getPwd().equals(vo.getPwd())) {
				
				model.addAttribute("loginUser", loginUser);
				session.setAttribute("user_type", 3);
				
				String sido = loginUser.getSido();
				String gugun = loginUser.getGugun();
				String address = sido + " " + gugun;
				List<ConstructionVO> conList = constructionService.managerMainConList(sido, gugun);
				List<ComplaintsVO> compList = complaintService.managerMainCompList(address);
				
				model.addAttribute("newConstructionList", conList);
				model.addAttribute("newComplaintList", compList);
				
				return "manager/index";
			} else {
				
				return "member/login_fail";
			}
		} else {
			return "member/login_fail";
		}
	}
	
	@RequestMapping(value = "con_list_form_mg")
	public String constListFormMg(HttpSession session, Model model, Criteria criteria,
								  @RequestParam(value="con_num",defaultValue="") String con_num,
								  @RequestParam(value="key",defaultValue="") String key) {
		
		ManagerVO loginUser = (ManagerVO) session.getAttribute("loginUser");
		String sido = loginUser.getSido();
		String gugun = loginUser.getGugun();
		
		List<ConstructionVO> conList = constructionService.getManageConstructionList(sido, gugun, criteria, con_num, key);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(criteria);	// 현재 페이지와 페이지당 항목 수 설정
		pageMaker.setTotalCount(conList.size());
		System.out.println("페이징 정보="+pageMaker);
		
		model.addAttribute("conListSize", conList.size());
		model.addAttribute("conList", conList);
		model.addAttribute("pageMaker", pageMaker);
		
		return "manager/conList";
	}
	
	@RequestMapping(value = "comp_list_form_mg")
	public String compListFormMg(HttpSession session, Model model, Criteria criteria,
								 @RequestParam(value="com_num",defaultValue="")String con_num,
								 @RequestParam(value="key", defaultValue="") String key) {
		
		ManagerVO loginUser = (ManagerVO) session.getAttribute("loginUser");
		String address = loginUser.getAddress();
		
		List<ComplaintsVO> compList = complaintService.managerCompList(address, con_num, key, criteria);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(criteria);	// 현재 페이지와 페이지당 항목 수 설정
		pageMaker.setTotalCount(compList.size());
		System.out.println("페이징 정보="+pageMaker);
		
		model.addAttribute("compListSize", compList.size());
		model.addAttribute("compList", compList);
		model.addAttribute("pageMaker", pageMaker);
		
		return "manager/compList";
	}
	
	@RequestMapping(value="con_detail_mg")
	public String conDetailFormMg(ConstructionVO vo, Model model) {
		ConstructionVO con = constructionService.getConstruction(vo);
		con.setView_count(con.getView_count()+1);
		constructionService.updateConstView(con);
		
		model.addAttribute("ConstructionVO", con);
		return "manager/conDetail";
		
	}
	
	@RequestMapping(value="comp_detail_mg")
	public String compDetailMg(ComplaintsVO vo, Model model) {

		ComplaintsVO com = complaintService.getComplaints(vo);
		com.setView_count(com.getView_count()+1);
		complaintService.updateCompView(com);
		
		model.addAttribute("ComplaintsVO", com);
		
		return "manager/compDetail";
	}
}
