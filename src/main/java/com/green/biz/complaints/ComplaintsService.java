package com.green.biz.complaints;

import java.util.List;

import com.green.biz.dto.ComplaintsVO;

public interface ComplaintsService {
	
	public void insertComplaints(ComplaintsVO vo);
	
	public void updateComplaints(ComplaintsVO vo);
	
	public void deleteComplaints(ComplaintsVO vo);
	
	public int answerComplaints(ComplaintsVO vo);
	
	public List<ComplaintsVO> getComplaintsList();

	public List<ComplaintsVO> mainComplaintList();
	
	public List<ComplaintsVO> getComplaintsListByConNum(String con_num);
	
	public ComplaintsVO getComplaints(ComplaintsVO vo);
}
