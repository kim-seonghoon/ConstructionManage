package com.green.biz.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.biz.dto.ConstructionVO;

@Repository
public class ConstructionDAO {
	@Autowired 
	SqlSessionTemplate mybatis;
	
	public void insertConstruction(ConstructionVO vo) {
		mybatis.insert("ConstructionDAO.insertConstruction", vo);
	}
	
	public void updateConstruction(ConstructionVO vo) {
		mybatis.update("ConstructionDAO.updateConstruction", vo);
	}
	
	public void deleteConstruction(ConstructionVO vo) {
		mybatis.delete("ConstructionDAO.deleteConstruction", vo);
	}
	
	public ConstructionVO getConstruction(ConstructionVO vo) {
		return mybatis.selectOne("ConstructionDAO.getConstruction", vo);
	}
	
	public List<ConstructionVO> getConstructionList() {
		return mybatis.selectOne("ConstructionDAO.getConstructionList");
	}
	
	public List<ConstructionVO> getConstructionListByArea(String sido, String gugun, String dong) {
		HashMap<String, String> map = new HashMap<>();
		map.put("sido", sido);
		map.put("gugun", gugun);
		map.put("dong", dong);
		
		return mybatis.selectList("ConstructionDAO.getConstructionListByArea", map);
	}
	 
	public List<ConstructionVO> getManageConstructionList(String sido, String gugun) {
		HashMap<String, String> map = new HashMap<>();
		map.put("sido", sido);
		map.put("gugn", gugun);
		
		return mybatis.selectList("ConstructionDAO.getManageConstructionList", map);
	}
	
	public List<ConstructionVO> getConstructionListByKey(String key) {
		return mybatis.selectList("ConstructionDAO.getConstructionListByKey", key);
	}
}
