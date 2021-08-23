package com.green.biz.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.biz.dto.AddressVO;


@Repository
public class AddressDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public List<AddressVO> selectAddressByDong(String dong){
		
		return mybatis.selectList("AddressDAO.selectAddressByDong", dong);
	} 
	

}
