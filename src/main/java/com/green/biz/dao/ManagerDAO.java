package com.green.biz.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.biz.dto.ManagerVO;

@Repository
public class ManagerDAO {
	@Autowired 
	SqlSessionTemplate mybatis;
	
	public void insertManager(ManagerVO vo) {
		mybatis.insert("ManagerDAO.insertManager", vo);
	}
	
	public void updateManager(ManagerVO vo) {
		mybatis.update("ManagerDAO.updateManager", vo);
	}
	
	public void deleteManager(ManagerVO vo) {
		mybatis.delete("ManagerDAO.deleteManager", vo);
	}
	
	public ManagerVO getManagerByArea(String sido, String gugun) {
		HashMap<String, String> map = new HashMap<>();
		map.put("sido", sido);
		map.put("gugun", gugun);
		
		return mybatis.selectOne("ManagerDAO.getManagerByArea", map);
	}
}
