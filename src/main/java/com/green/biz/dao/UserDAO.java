package com.green.biz.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.biz.dto.UserVO;
import com.green.biz.utils.Criteria;
 
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
	
	// 회원 상세정보 조회
	public UserVO getMember(String id) {
		
		return mybatis.selectOne("UserDAO.getMember",id);
	}
	
	public int confirmID(String user_id) {
		
		String pwd = mybatis.selectOne("UserDAO.confirmID",user_id);
		
		if(pwd != null) {
			return 1;
		}else {
			return -1; 
		}
	}
	
	public int loginID(UserVO vo) {
		int result = -1;
		String pwd = null;
		
		pwd = mybatis.selectOne("UserDAO.confirmID", vo.getUser_id());
		
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
	
	public UserVO getUserByNameAndEmail(UserVO vo) {
		
		return mybatis.selectOne("UserDAO.getUserByNameAndEmail",vo);
	}
	
	public UserVO getUserByNameAndEmailAndID(UserVO vo) {
		
		return mybatis.selectOne("UserDAO.getUserByNameAndEmailAndID",vo);
	}
	
	public void pwdChange(UserVO vo) {
		
		mybatis.update("UserDAO.pwdChange",vo);
	}
	
	public List<UserVO> userListWithPaging(String key, Criteria criteria, String user_id){
		HashMap<String, Object> map = new HashMap<>();
		
		map.put("criteria", criteria);
		map.put("key", key);
		map.put("user_id", user_id);
		
		return mybatis.selectList("UserDAO.userListWithPaging",map);
	}
	
	public int getUserCount(String key) {
		
		return mybatis.selectOne("UserDAO.getUserCount",key);
	}
}










