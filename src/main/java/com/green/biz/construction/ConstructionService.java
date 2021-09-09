package com.green.biz.construction;

import java.util.List;

import com.green.biz.dto.ConstructionVO;
import com.green.biz.utils.Criteria;
 
public interface ConstructionService {

	void insertConstruction(ConstructionVO vo);

	void updateConstruction(ConstructionVO vo);

	void deleteConstruction(ConstructionVO vo);

	ConstructionVO getConstruction(ConstructionVO vo);

	List<ConstructionVO> getConstructionList();

	List<ConstructionVO> getConstructionListByArea(String sido, String gugun, String dong);

	List<ConstructionVO> getManageConstructionList(String sido, String gugun, Criteria criteria, String con_num, String key);

	List<ConstructionVO> getConstructionListByKey(String keyArea, String keyTitle);

	List<ConstructionVO> mainConstructionList();
	
	List<ConstructionVO> constListWithPaging(String key, Criteria criteria, String con_num);
	
	int getConstCount(String key);
	
	void updateConstView(ConstructionVO vo);
	
	List<ConstructionVO> managerMainConList(String sido, String gugun);
	
	int searchCount(String key, Criteria criteria, String con_num);
}