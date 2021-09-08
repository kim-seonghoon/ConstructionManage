package com.green.biz.user.impl;
 
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.biz.dao.UserDAO;
import com.green.biz.dto.UserVO;
import com.green.biz.user.UserService;
import com.green.biz.utils.Criteria;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	UserDAO userDao;
	 
	@Override
	public void insertUser(UserVO vo) {
		
		userDao.insertUser(vo);
	}

	@Override
	public void updateUser(UserVO vo) {

		userDao.updateUser(vo);
	}

	@Override
	public void deleteUser(UserVO vo) {
	
		userDao.deleteUser(vo);
	}

	@Override
	public UserVO getUser(UserVO vo) {
	
		return userDao.getUser(vo);
	}

	@Override
	public List<UserVO> getUserList() {

		return userDao.getUserList();
	}

	@Override
	public List<UserVO> getUserListById(String key) {

		return userDao.getUserListById(key);
	}

	@Override
	public List<UserVO> getUserListByName(String key) {
	
		return userDao.getUserListByName(key);
	}

	@Override
	public int loginID(UserVO vo) {
		
		return userDao.loginID(vo);
	}

	@Override
	public UserVO getMember(String user_id) {
		
		return userDao.getMember(user_id);
	}

	@Override
	public int confirmID(String user_id) {
		
		return userDao.confirmID(user_id);
	}

	@Override
	public UserVO getUserByNameAndEmail(UserVO vo) {
		
		return userDao.getUserByNameAndEmail(vo);
	}

	@Override
	public UserVO getUserByNameAndEmailAndID(UserVO vo) {

		return userDao.getUserByNameAndEmailAndID(vo);
	}

	@Override
	public void pwdChange(UserVO vo) {
		
		userDao.pwdChange(vo);
	}

	@Override
	public List<UserVO> userListWithPaging(String keyName, String keyId, Criteria criteria) {
		
		return userDao.userListWithPaging(keyName, keyId, criteria);
	}

	@Override
	public int getUserCount(String key) {
		
		return userDao.getUserCount(key);
	}

	@Override
	public void deleteUserUpdate(UserVO vo) {
		
		userDao.deleteUserUpdate(vo);
	}

}
