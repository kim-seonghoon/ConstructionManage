package com.green.biz.dao;

import java.util.*;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.biz.dto.ComplaintsVO;

@Repository
public class ComplaintsDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertComplaints(ComplaintsVO vo) {
		
		mybatis.insert("ComplaintsDAO.insertComplaints", vo);
	}
	
	public int updateComplaints(ComplaintsVO vo) {
		
		return mybatis.update("ComplaintsDAO.updateComplaints", vo);
	}
	
	public int deleteComplaints(int com_seq) {
		
		return mybatis.delete("ComplaintsDAO.deleteComplaints", com_seq);
	}
	
	public int answerComplaints(ComplaintsVO vo) {
		
		return mybatis.update("ComplauntsDAO.answerComplaints", vo);
	}
	
	public List<ComplaintsVO> getComplaintsList(int com_seq){
		
		return mybatis.selectList("ComplaintsDAO.getComplaintsList", com_seq);
	} 
	
	public List<ComplaintsVO> mainComplaintList() {
		
		return mybatis.selectList("ComplaintsDAO.mainComplaintList");
	}
	
}
