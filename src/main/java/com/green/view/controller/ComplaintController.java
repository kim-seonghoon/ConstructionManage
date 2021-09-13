package com.green.view.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.green.biz.complaints.ComplaintsService;
import com.green.biz.dto.CompanyVO;
import com.green.biz.dto.ComplaintsVO;
import com.green.biz.dto.ConstructionVO;
import com.green.biz.dto.ManagerVO;
import com.green.biz.dto.UserVO;
import com.green.biz.utils.Criteria;
import com.green.biz.utils.PageMaker;
 
@Controller
public class ComplaintController {

	@Autowired
	ComplaintsService complaintService; 
	
	@RequestMapping(value="comp_list_form")
	public String compListForm(HttpSession session, Model model, Criteria criteria,
							   @RequestParam(value="con_num", defaultValue="") String con_num,
							   @RequestParam(value="key", defaultValue="") String key) {
				
		List<ComplaintsVO> compList = complaintService.compListWithPaging(key, criteria, con_num);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(criteria);	// ���� �������� �������� �׸� �� ����
		pageMaker.setTotalCount(compList.size());
		System.out.println("����¡ ����="+pageMaker);
		
		model.addAttribute("compListSize", compList.size());
		model.addAttribute("compList", compList);
		model.addAttribute("pageMaker", pageMaker);
		
		for(int i=1; i<5; i++) {
			con_num = Integer.toString(i);
			compList = complaintService.compListWithPaging(key, criteria, con_num);
			model.addAttribute("compList"+i, compList);
			model.addAttribute("compListSize"+i, compList.size());
			model.addAttribute("pageMaker"+i, pageMaker);
		}

		return "complaint/compList";
	}
	
	@RequestMapping(value="write_comp_form")
	public String writeCompForm(HttpSession session) {
		int user_type = 0;
		if(session.getAttribute("user_type")!=null) {
			user_type = (int) session.getAttribute("user_type");
		}
		if(user_type==1) {
			UserVO loginUser = (UserVO) session.getAttribute("loginUser");
			if(loginUser==null) {
				
				return "member/login";
			} else {

				return "complaint/compWrite";
			}
		} else {
			return "member/login";
		}
	}
	
	@RequestMapping(value = "comp_write")
	public String writeCompAction(ComplaintsVO vo, HttpSession session,
								  @RequestParam(value="addr1") String addr1,
								  @RequestParam(value="addr2") String addr2) {

		String address = addr1 + " " + addr2;
		vo.setAddress(address);
		
		UserVO loginUser = (UserVO) session.getAttribute("loginUser");
		vo.setName(loginUser.getName());
		vo.setUser_id(loginUser.getUser_id());
		System.out.println("complaints=" + vo);
		
		complaintService.insertComplaints(vo);
		return "redirect:/comp_list_form";
		
	}
	
	@RequestMapping(value="/comp_detail")
	public String complaintDetail(ComplaintsVO vo, Model model) {
		
		ComplaintsVO com = complaintService.getComplaints(vo);
		com.setView_count(com.getView_count()+1);
		complaintService.updateCompView(com);
		
		model.addAttribute("ComplaintsVO", com);
		
		return "complaint/compDetail";
	}
	
	@RequestMapping(value="comp_update_form")
	public String comUpdateForm(HttpSession session, ComplaintsVO vo, Model model) {
		int user_type = 0;
		
		
		if(session.getAttribute("user_type")!=null) {
			user_type = (int) session.getAttribute("user_type");
		}
		
		if(user_type == 1) {
			UserVO loginUser = (UserVO) session.getAttribute("loginUser");
			if(loginUser !=null && loginUser.getUser_id().equals(vo.getUser_id()) ) {
				
				ComplaintsVO con = complaintService.getComplaints(vo);
				
				
				model.addAttribute("ComplaintsVO",con);
				
				System.out.println(con);
				
				return "complaint/compUpdate";
				
			}else {
				return "member/login";
			}
		}else {
			return "member/login";
		}
	}
	
	@RequestMapping(value="/comp_update")
	public String compUpdate(ComplaintsVO vo,
							 @RequestParam(value="addr1") String addr1,
							 @RequestParam(value="addr2") String addr2,
							 HttpSession session) {
		
		String address = addr1 + " " + addr2;
		vo.setAddress(address);
		
		UserVO loginUser = (UserVO) session.getAttribute("loginUser");
		vo.setName(loginUser.getName());
		vo.setUser_id(loginUser.getUser_id());
		
		System.out.println(vo);
		complaintService.updateComplaints(vo);
		
		return "redirect:/comp_list_form";
	}
	
	@RequestMapping(value="/comp_delete")
	public String compDelete(ComplaintsVO vo, HttpSession session, Model model) {
		int user_type = 0;
		
		if(session.getAttribute("user_type")!= null) {
			user_type = (int) session.getAttribute("user_type");
		}
		if(user_type == 3) {
			ManagerVO loginUser = (ManagerVO) session.getAttribute("loginUser");
			
			if(loginUser!=null) {
				complaintService.deleteComplaints(vo);
				
				return "redirect:/comp_list_form_mg";
			} else {
				return "index";
			}
		} else if(user_type == 1) {
			UserVO loginUser = (UserVO) session.getAttribute("loginUser");
			
			if(loginUser.getUser_id().equals(vo.getUser_id())) {
				complaintService.deleteComplaints(vo);
				
				return "redirect:/comp_list_form";
			}else {
				return "member/login";
			}
		} else {
			return "member/login";
		}
		
	}
	
	@RequestMapping(value="/search_comp")
	public String searchCompByKeyword(Model model, Criteria criteria,
									 @RequestParam(value="con_num", defaultValue="") String con_num,
									 @RequestParam(value="key") String key,
									 @RequestParam(value="search_condition", defaultValue="1") int search_condition) {
		String keyArea = "";
		String keyTitle = "";
		List<ComplaintsVO> compList = complaintService.compListWithPaging(keyArea, criteria, con_num);
		
		if(search_condition==1) {
			keyArea = key;
			keyTitle = key;
			
			compList = complaintService.compListWithPaging(keyArea, criteria, con_num);
			
		} else if(search_condition==2) {
			keyArea = key;
			
			compList = complaintService.compListWithPaging(keyArea, criteria, con_num);
		} else if(search_condition==3) {
			keyTitle = key;
			
			compList = complaintService.compListWithPaging(keyArea, criteria, con_num);
		}
			PageMaker pageMaker = new PageMaker();
			pageMaker.setCri(criteria);	// ���� �������� �������� �׸� �� ����
			pageMaker.setTotalCount(complaintService.searchCount(key, criteria, con_num));
			System.out.println("����¡ ����="+pageMaker);
			
			model.addAttribute("compListSize", compList.size());
			model.addAttribute("compList", compList);
			model.addAttribute("pageMaker", pageMaker);
		
			return "complaint/compList";
	}
		
}
