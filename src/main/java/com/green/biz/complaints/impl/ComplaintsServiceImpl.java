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
	public int answerComplaints(ComplaintsVO vo) {
		
		return complaintsDao.answerComplaints(vo);
	}

	@Override
	public List<ComplaintsVO> getComplaintsList() {
		
		return complaintsDao.getComplaintsList();
	}

	@Override
	public List<ComplaintsVO> mainComplaintList() {
		
		return complaintsDao.mainComplaintList();
	}

	@Override
	public List<ComplaintsVO> getComplaintsListByConNum(String con_num) {

		return complaintsDao.getComplaintsListByConNum(con_num);
	}

	@Override
	public ComplaintsVO getComplaints(ComplaintsVO vo) {
		
		return complaintsDao.getComplaints(vo);
	}
	

}
