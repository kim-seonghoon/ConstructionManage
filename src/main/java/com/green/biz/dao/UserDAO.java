package com.green.biz.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.biz.dto.UserVO;

@Repository
public class UserDAO {
	@Autowired 
	SqlSessionTemplate mybatis;
	
	public void insertUser(UserVO vo) {
		mybatis.insert("UserDAO.insertUser", vo);
	}
	
	public void updateUser(UserVO vo) {
		mybatis.update("UserDAO.updateUser", vo);
	}
	
	public void deleteUser(UserVO vo) {
		mybatis.delete("UserDAO.deleteUser", vo);
	}
	
	public UserVO getUser(UserVO vo) {
		return mybatis.selectOne("UserDAO.getUser", vo);
	}
	
	public List<UserVO> getUserList() {
		return mybatis.selectList("UserDAO.getUserList");
	}
	
	public List<UserVO> getUserListById(String key) {
		return mybatis.selectList("UserDAO.getUserListById", key);
	}
	
	public List<UserVO> getUserListByName(String key) {
		return mybatis.selectList("UserDAO.getUserListByName", key);
	}
}










