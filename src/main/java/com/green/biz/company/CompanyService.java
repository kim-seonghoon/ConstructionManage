package com.green.biz.company;
 
import java.util.List;

import com.green.biz.dto.CompanyVO;
import com.green.biz.dto.UserVO;
import com.green.biz.utils.Criteria;
  
public interface CompanyService {
	public void insertCompany(CompanyVO vo);
 
	public int deleteCompany(CompanyVO vo); 
	
	public int updateCompany(CompanyVO vo);
	
	public int confirmCpId(String cp_id);
	
	public CompanyVO getCompany(String cp_id);
	
	public int loginID(UserVO vo);
	
	public List<CompanyVO> getCompanyList();
	
	public List<CompanyVO> companyListWithPaging(String keyName, String keyId, Criteria criteria);
	
	public int getCompanyCount(String key);
	
	public void deleteCpUpdate(CompanyVO vo);
	
	public CompanyVO getCompanyByNameAndEmail(String cp_name, String cp_email);
	
	public CompanyVO getPwdByIdAndName(String cp_name, String cp_email, String cp_id);
}
