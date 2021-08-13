package com.green.biz.construction.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.biz.construction.ConstructionService;
import com.green.biz.dao.ConstructionDAO;
import com.green.biz.dto.ConstructionVO;

@Service
public class ConstructionServiceImpl implements ConstructionService {
	
	@Autowired
	ConstructionDAO constructionDao;
	
	@Override
	public void insertConstruction(ConstructionVO vo) {
		
		constructionDao.insertConstruction(vo);
	}

	@Override
	public void updateConstruction(ConstructionVO vo) {
		
		constructionDao.updateConstruction(vo);
	}

	@Override
	public void deleteConstruction(ConstructionVO vo) {
		
		constructionDao.deleteConstruction(vo);
	}

	@Override
	public ConstructionVO getConstruction(ConstructionVO vo) {
		
		return constructionDao.getConstruction(vo);
	}

	@Override
	public List<ConstructionVO> getConstructionList() {
		
		return constructionDao.getConstructionList();
	}

	@Override
	public List<ConstructionVO> getConstructionListByArea(String sido, String gugun, String dong) {
		
		return constructionDao.getConstructionListByArea(sido, gugun, dong);
	}

	@Override
	public List<ConstructionVO> getManageConstructionList(String sido, String gugun) {

		return constructionDao.getManageConstructionList(sido, gugun);
	}

	@Override
	public List<ConstructionVO> getConstructionListByKey(String key) {

		return constructionDao.getConstructionListByKey(key);
	}

}
