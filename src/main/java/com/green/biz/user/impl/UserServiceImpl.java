package com.green.biz.user.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.biz.dao.UserDAO;
import com.green.biz.dto.UserVO;
import com.green.biz.user.UserService;

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

}
