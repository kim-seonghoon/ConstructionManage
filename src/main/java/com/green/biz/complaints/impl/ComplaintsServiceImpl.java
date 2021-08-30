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
	public void updateComplaints(ComplaintsVO vo) {
		
		 complaintsDao.updateComplaints(vo);
	}

	@Override
	public void deleteComplaints(ComplaintsVO vo) {
		
		complaintsDao.deleteComplaints(vo);
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
