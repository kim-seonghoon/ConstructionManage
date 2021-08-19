package com.green.biz.construction;

import java.util.List;

import com.green.biz.dto.ConstructionVO;

public interface ConstructionService {

	void insertConstruction(ConstructionVO vo);

	void updateConstruction(ConstructionVO vo);

	void deleteConstruction(ConstructionVO vo);

	ConstructionVO getConstruction(ConstructionVO vo);

	List<ConstructionVO> getConstructionList();

	List<ConstructionVO> getConstructionListByArea(String sido, String gugun, String dong);

	List<ConstructionVO> getManageConstructionList(String sido, String gugun);

	List<ConstructionVO> getConstructionListByKey(String keyArea, String keyTitle);

	List<ConstructionVO> mainConstructionList();
	
	List<ConstructionVO> getConstructionListByConNum(String con_num);
}