package com.green.biz.complaints;

import java.util.List;

import com.green.biz.dto.ComplaintsVO;

public interface ComplaintsService {
	
	public void insertComplaints(ComplaintsVO vo);
	
	public int updateComplaints(ComplaintsVO vo);
	
	public int deleteComplaints(int com_seq);
	
	public int answerComplaints(ComplaintsVO vo);
	
	public List<ComplaintsVO> getComplaintsList(int com_seq);
	
}