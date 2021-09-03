package com.green.biz.manager;

import com.green.biz.dto.ManagerVO;

public interface ManagerService {

	void insertManager(ManagerVO vo);

	void updateManager(ManagerVO vo);

	void deleteManager(ManagerVO vo);

	ManagerVO getManagerByArea(String sido, String gugun);
	
	public ManagerVO getManager(String id);

}