package com.green.biz.complaints.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.biz.complaints.ComplaintsService; 
import com.green.biz.dao.ComplaintsDAO;
import com.green.biz.dto.ComplaintsVO;

@Service("ComplaintsService")
public class ComplaintsServiceImpl implements ComplaintsService {
	
	@Autowired
	private ComplaintsDAO complaintsDao;

	@Override
	public void insertComplaints(ComplaintsVO vo) {
		
		complaintsDao.insertComplaints(vo);
	}

	@Override
	public int updateComplaints(ComplaintsVO vo) {
		
		return complaintsDao.updateComplaints(vo);
	}

	@Override
	public int deleteComplaints(int com_seq) {
		
		return complaintsDao.deleteComplaints(com_seq);
	}

	@Override
	public int answerComplaints(int com_seq) {
		
		return complaintsDao.answerComplaints(com_seq);
	}

	@Override
	public List<ComplaintsVO> getComplaintsList(int com_seq) {
		
		return complaintsDao.getComplaintsList(com_seq);
	}
	

}
