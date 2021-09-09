package com.green.biz.construction.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.biz.construction.ConstructionService;
import com.green.biz.dao.ConstructionDAO;
import com.green.biz.dto.ConstructionVO;
import com.green.biz.utils.Criteria;
 
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
	public List<ConstructionVO> getManageConstructionList(String sido, String gugun, Criteria criteria, String con_num, String key) {

		return constructionDao.getManageConstructionList(sido, gugun, criteria, con_num, key);
	}

	@Override
	public List<ConstructionVO> getConstructionListByKey(String keyArea, String keyTitle) {

		return constructionDao.getConstructionListByKey(keyArea, keyTitle);
	}

	@Override
	public List<ConstructionVO> mainConstructionList() {
		
		return constructionDao.mainConstructionList();
	}

	@Override
	public List<ConstructionVO> constListWithPaging(String key, Criteria criteria, String con_num) {
		
		return constructionDao.constListWithPaging(key, criteria, con_num);
	}

	@Override
	public int getConstCount(String key) {
		
		return constructionDao.getConstCount(key);
	}

	@Override
	public void updateConstView(ConstructionVO vo) {
		
		constructionDao.updateConstView(vo);
	}

	@Override
	public List<ConstructionVO> managerMainConList(String sido, String gugun) {
		
		return constructionDao.managerMainConList(sido, gugun);
	}

	@Override
	public int searchCount(String key, Criteria criteria, String con_num) {
		
		return constructionDao.searchCount(key, criteria, con_num);
	}

}
