package com.green.biz.company.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.biz.company.CompanyService;
import com.green.biz.dao.CompanyDAO;
import com.green.biz.dto.CompanyVO;
import com.green.biz.dto.UserVO;
import com.green.biz.utils.Criteria;
 
@Service("CompanyService")
public class CompanyServiceImpl implements CompanyService {
	 
	@Autowired
	private CompanyDAO companyDao;
	
	@Override
	public void insertCompany(CompanyVO vo) { 
		
		companyDao.insertCompany(vo);
	}

	@Override
	public int deleteCompany(CompanyVO vo) {
		
		return companyDao.deleteCompany(vo);
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

	@Override
	public List<CompanyVO> getCompanyList() {

		return companyDao.getCompanyList();
	}

	@Override
	public List<CompanyVO> companyListWithPaging(String keyName, String keyId, Criteria criteria) {

		return companyDao.companyListWithPaging(keyName, keyId, criteria);
	}

	@Override
	public int getCompanyCount(String key) {

		return companyDao.getCompanyCount(key);
	}

	@Override
	public void deleteCpUpdate(CompanyVO vo) {
		
		companyDao.deleteCpUpdate(vo);
	}

}
