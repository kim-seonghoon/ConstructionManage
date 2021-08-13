package com.green.biz.company;

import com.green.biz.dto.CompanyVO;

public interface CompanyService {
	public void insertCompany(CompanyVO vo);

	public int deleteCompany(String cp_num); 
	
	public int updateCompany(CompanyVO vo);
}
