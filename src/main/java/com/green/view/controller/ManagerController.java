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

import com.green.biz.company.CompanyService;
import com.green.biz.complaints.ComplaintsService;
import com.green.biz.construction.ConstructionService;
import com.green.biz.dto.CompanyVO;
import com.green.biz.dto.ComplaintsVO;
import com.green.biz.dto.ConstructionVO;
import com.green.biz.dto.ManagerVO;
import com.green.biz.dto.UserVO;
import com.green.biz.manager.ManagerService;
import com.green.biz.user.UserService;
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
	
	@Autowired
	UserService userService;
	
	@Autowired
	CompanyService companyService;
	
	@RequestMapping(value="/manager_login_form",method=RequestMethod.GET)
	public String manager_login_form() {
	return "manager/login";	
	}
	
	@RequestMapping(value="go_home_mg")
	public String managerHome(HttpSession session, Model model) {
		
		ManagerVO loginUser = (ManagerVO) session.getAttribute("loginUser");
		int user_type = (int) session.getAttribute("user_type");
		
		if(loginUser != null) {
			if(user_type == 3) {
				
				String sido = loginUser.getSido();
				String gugun = loginUser.getGugun();
				String address = sido + " " + gugun;
				List<ConstructionVO> conList = constructionService.managerMainConList(sido, gugun);
				List<ComplaintsVO> compList = complaintService.managerMainCompList(address);
				
				model.addAttribute("newConstructionList", conList);
				model.addAttribute("newComplaintList", compList);
				System.out.println("loginUser=" + loginUser + " " + "user_type=" + user_type);
				
				return "manager/index";
			} else {
				
				return "index";
			}
		} else {
			return "index";
		}
	}
	
	@RequestMapping(value="manager_login", method=RequestMethod.POST)
	public String managerLoginAction(ManagerVO vo, Model model, HttpSession session) {
		
		ManagerVO loginUser = (ManagerVO) managerService.getManager(vo.getManager_id());
		
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
		System.out.println(loginUser);
		String sido = loginUser.getSido();
		String gugun = loginUser.getGugun();
		System.out.println("sido="+sido+" "+"gugun="+gugun);
		
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
	
	@RequestMapping(value="user_list_form_mg")
	public String userList(HttpSession session, Model model, Criteria criteria,
						   @RequestParam(value="search-user",defaultValue="") String search_user,
						   @RequestParam(value="key", defaultValue="") String key) {
		String keyId = "";
		String keyName = "";
		
		if(search_user.equals("1")) {
			keyId = key;
			keyName = "";
			
		} else if(search_user.equals("2")) {
			keyId = "";
			keyName = key;
		}
		System.out.println("search="+search_user+" keyId,keyName="+keyId+keyName);
		List<UserVO> userList = userService.userListWithPaging(keyName, keyId, criteria);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(criteria);
		pageMaker.setTotalCount(userService.getUserCount(key));
		System.out.println("페이징 정보="+pageMaker);
		
		model.addAttribute("userListSize",userList.size());
		model.addAttribute("userList",userList);
		model.addAttribute("pageMaker",pageMaker);
		
		return "manager/userList";
	}
	
	@RequestMapping(value="company_list_form_mg")
	public String companyList(HttpSession session, Model model, Criteria criteria,
							  @RequestParam(value="search-company",defaultValue="")String search_company,
							  @RequestParam(value="key", defaultValue="")String key) {
		
		String keyName = "";
		String keyId = "";
		
		if(search_company.equals("1")) {
			keyName = "";
			keyId = key;
		} else if(search_company.equals("2")) {
			keyName = key;
			keyId = "";
		}
		List<CompanyVO> companyList = companyService.companyListWithPaging(keyName, keyId, criteria);
		for(CompanyVO com : companyList) {
			System.out.println(com);
		}
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(criteria);
		pageMaker.setTotalCount(companyService.getCompanyCount(key));
		System.out.println("페이징 정보="+pageMaker);
		
		model.addAttribute("CompanyListSize",companyList.size());
		model.addAttribute("companyList", companyList);
		model.addAttribute("pageMaker",pageMaker);
		
		return "manager/companyList";
	}
	
	@RequestMapping(value="delete_cp_mg")
	public String deleteCpMg(@RequestParam(value="result") String[] idList) {
		CompanyVO vo = new CompanyVO();
		
		for(String cp_id : idList) {
			vo.setCp_id(cp_id);
			System.out.println(vo);
			companyService.deleteCompany(vo);
		}
		
		return "redirect:/company_list_form_mg";
	}
	
	@SuppressWarnings("null")
	@RequestMapping(value="delete_user_mg")
	public String deleteUserMg(@RequestParam(value="result") String[] idList) {
		UserVO vo = new UserVO();
		
		for(String user_id : idList) {
			vo.setUser_id(user_id);
			userService.deleteUser(vo);
		}
		
		return "redirect:/user_list_form_mg";
	}
	
	@RequestMapping(value="answer_write_form")
	public String writeAnswerForm(ComplaintsVO vo, Model model) {
		ComplaintsVO comp = complaintService.getComplaints(vo);
		
		model.addAttribute("ComplaintsVO", comp);
		return "manager/compAnswer";
	}
	
	@RequestMapping(value="write_answer")
	public String writeAnswer(ComplaintsVO vo, Model model) {
		complaintService.answerComplaints(vo);
		ComplaintsVO comp = complaintService.getComplaints(vo);
		
		model.addAttribute("ComplaintsVO", comp);
		
		return "manager/compDetail";
	}
	
	@RequestMapping(value="answer_delete")
	public String deleteAnswer(ComplaintsVO vo, Model model) {
		complaintService.deleteAnswer(vo);
		ComplaintsVO comp = complaintService.getComplaints(vo);
		
		model.addAttribute("ComplaintsVO", comp);
		System.out.println(comp);
		return "manager/compDetail";
	}
}
