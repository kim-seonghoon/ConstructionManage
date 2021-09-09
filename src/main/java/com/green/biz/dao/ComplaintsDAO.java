package com.green.biz.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.biz.dto.ComplaintsVO;
import com.green.biz.utils.Criteria;
 
@Repository 
public class ComplaintsDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertComplaints(ComplaintsVO vo) {
		
		mybatis.insert("ComplaintsDAO.insertComplaints", vo);
	}
	
	public void updateComplaints(ComplaintsVO vo) {
		
		mybatis.update("ComplaintsDAO.updateComplaints", vo);
	}
	
	public void deleteComplaints(ComplaintsVO vo) {
		
		mybatis.delete("ComplaintsDAO.deleteComplaints", vo);
	}
	
	public int answerComplaints(ComplaintsVO vo) {
		
		return mybatis.update("ComplaintsDAO.answerComplaints", vo);
	}
	
	public List<ComplaintsVO> getComplaintsList(){
		
		return mybatis.selectList("ComplaintsDAO.getComplaintsList");
	} 
	
	public List<ComplaintsVO> mainComplaintList() {
		
		return mybatis.selectList("ComplaintsDAO.mainComplaintList");
	}
	
	public ComplaintsVO getComplaints(ComplaintsVO vo) {
		
		return mybatis.selectOne("ComplaintsDAO.getComplaints", vo);
	}
	
	public List<ComplaintsVO> compListWithPaging(String key, Criteria criteria, String con_num) {
		HashMap<String, Object> map = new HashMap<>();
		
		map.put("criteria", criteria);
		map.put("key", key);
		map.put("con_num", con_num);
		
		return mybatis.selectList("ComplaintsDAO.compListWithPaging", map);
	}
	
	public int searchCount(String key, Criteria criteria, String con_num) {
		HashMap<String, Object> map = new HashMap<>();
		
		map.put("criteria", criteria);
		map.put("key", key);
		map.put("con_num", con_num);
		
		return mybatis.selectOne("ComplaintsDAO.searchCount", map);
	}
	
	public int getCompCount(String key) {
		
		return mybatis.selectOne("ComplaintsDAO.getCompCount", key);
	}
	
	public void updateCompView(ComplaintsVO vo) {
		
		mybatis.update("ComplaintsDAO.updateCompView", vo);
	}
	
	public List<ComplaintsVO> managerMainCompList(String address) {

		
		return mybatis.selectList("ComplaintsDAO.managerMainCompList", address);
	}
	
	public List<ComplaintsVO> managerCompList(String address, String key, String con_num, Criteria criteria) {
		HashMap<String, Object> map = new HashMap<>();
		
		map.put("address", address);
		map.put("con_num", con_num);
		map.put("criteria", criteria);
		map.put("key", key);
		
		return mybatis.selectList("ComplaintsDAO.managerCompList", map);
	}
	
	public void updateAnswer(ComplaintsVO vo) {
		mybatis.update("ComplaintsDAO.updateAnswer", vo);
	}
	
	public void deleteAnswer(ComplaintsVO vo) {
		mybatis.update("ComplaintsDAO.deleteAnswer", vo);
	}
}
