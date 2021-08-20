package com.green.biz.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.biz.dto.CompanyVO;

@Repository
public class CompanyDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertCompany(CompanyVO vo) {
		
		mybatis.insert("CompanyDAO.insertCompany",vo);
	}

	public int deleteCompany(String cp_num) {
		
		return mybatis.delete("CompanyDAO.deleteComany", cp_num);
	}
	
	public int updateCompany(CompanyVO vo) {
		
		return mybatis.update("CompanyDAO.updateCompany",vo);
	}
	
	public int confirmCpId(String cp_id) {
		String pwd = mybatis.selectOne("CompanyDAO.confirmCpId", cp_id);
		
		if(pwd != null) {
			return 1;
		}else {
			return -1;
		}
	}
}
