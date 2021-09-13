package com.green.biz.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.biz.dto.CompanyVO;
import com.green.biz.dto.UserVO;
import com.green.biz.utils.Criteria;
 
@Repository
public class CompanyDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertCompany(CompanyVO vo) {
		
		mybatis.insert("CompanyDAO.insertCompany",vo);
	}

	public int deleteCompany(CompanyVO vo) {
		
		return mybatis.delete("CompanyDAO.deleteCompany", vo);
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
	
	public CompanyVO getCompany(String cp_id) {
		
		return mybatis.selectOne("CompanyDAO.getCompany", cp_id);
	}
	
	public int loginID(UserVO vo) {
		int result = -1;
		String pwd = null;
		String cp_id = vo.getUser_id();
		
		pwd = mybatis.selectOne("CompanyDAO.confirmCpId", cp_id);
		
		// DB에서 조회한 password와 사용자가 입력한  password 비교
		if(pwd == null) {
			result = -1;
		}else if(pwd.equals(vo.getPwd())) {
			result = 1;
		}else {
			result = 0;
		}
		return result;
	}
	
	public List<CompanyVO> getCompanyList(){
		
		return mybatis.selectList("CompanyDAO.getCompanyList");
	}
	
	public List<CompanyVO> companyListWithPaging(String keyName, String keyId, Criteria criteria){
		HashMap<String,Object> map = new HashMap<>();
		
		map.put("criteria", criteria);
		map.put("keyName", keyName);
		map.put("keyId", keyId);
		
		return mybatis.selectList("CompanyDAO.companyListWithPaging",map);
	}
	
	public int getCompanyCount(String key) {
		
		return mybatis.selectOne("CompanyDAO.getCompanyCount",key);
	}
	
	public void deleteCpUpdate(CompanyVO vo) {
		
		mybatis.update("CompanyDAO.deleteCpUpdate", vo);
	}
	
	public CompanyVO getCompanyByNameAndEmail(String cp_name, String cp_email) {
		HashMap<String, String> map = new HashMap<>();

		map.put("cp_name", cp_name);
		map.put("cp_email", cp_email);
		
		return mybatis.selectOne("CompanyDAO.getCompanyByNameAndEmail", map);
	}
	
	public CompanyVO getPwdByIdAndName(String cp_name, String cp_email, String cp_id) {
		HashMap<String, String> map = new HashMap<>();

		map.put("cp_name", cp_name);
		map.put("cp_email", cp_email);
		map.put("cp_id", cp_id);
		
		return mybatis.selectOne("CompanyDAO.getPwdByIdAndName", map);
	}
}
