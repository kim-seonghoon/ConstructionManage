package com.green.biz.manager.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.biz.dao.ManagerDAO;
import com.green.biz.dto.ManagerVO;
import com.green.biz.manager.ManagerService;

@Service
public class ManagerServcieImpl implements ManagerService {
	
	@Autowired
	ManagerDAO managerDao;
	
	@Override
	public void insertManager(ManagerVO vo) {
		
		managerDao.insertManager(vo);
	}

	@Override
	public void updateManager(ManagerVO vo) {
		
		managerDao.updateManager(vo);
	}

	@Override
	public void deleteManager(ManagerVO vo) {
		
		managerDao.deleteManager(vo);
	}

	@Override
	public ManagerVO getManagerByArea(String sido, String gugun) {
	
		return managerDao.getManagerByArea(sido, gugun);
	}

}
