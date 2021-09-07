package com.green.biz.complaints;

import java.util.List;

import com.green.biz.dto.ComplaintsVO;
import com.green.biz.utils.Criteria;
 
public interface ComplaintsService { 
	
	public void insertComplaints(ComplaintsVO vo);
	
	public void updateComplaints(ComplaintsVO vo);
	
	public void deleteComplaints(ComplaintsVO vo);
	
	public int answerComplaints(ComplaintsVO vo);
	
	public List<ComplaintsVO> getComplaintsList();

	public List<ComplaintsVO> mainComplaintList();
	
	public ComplaintsVO getComplaints(ComplaintsVO vo);
	
	public List<ComplaintsVO> compListWithPaging(String key, Criteria criteria, String con_num);
	
	public int getCompCount(String key);
	
	public void updateCompView(ComplaintsVO vo);
	
	List<ComplaintsVO> managerMainCompList(String address);
	
	List<ComplaintsVO> managerCompList(String address, String con_num, String key, Criteria criteria);
}
