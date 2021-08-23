package com.green.biz.company.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.biz.company.CompanyService;
import com.green.biz.dao.CompanyDAO;
import com.green.biz.dto.CompanyVO;
import com.green.biz.dto.UserVO;

@Service("CompanyService")
public class CompanyServiceImpl implements CompanyService {
	 
	@Autowired
	private CompanyDAO companyDao;
	
	@Override
	public void insertCompany(CompanyVO vo) { 
		
		companyDao.insertCompany(vo);
	}

	@Override
	public int deleteCompany(String cp_num) {
		
		return companyDao.deleteCompany(cp_num);
	}

	@Override
	public int updateCompany(CompanyVO vo) {
		
		return companyDao.updateCompany(vo);
	}

	@Override
	public int confirmCpId(String cp_id) {
		
		return companyDao.confirmCpId(cp_id);
	}

	@Override
	public CompanyVO getCompany(String cp_id) {
		
		return companyDao.getCompany(cp_id);
	}

	@Override
	public int loginID(UserVO vo) {
		
		return companyDao.loginID(vo);
	}

}
