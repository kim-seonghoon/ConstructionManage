package com.green.biz.user;

import java.util.List;

import com.green.biz.dto.UserVO;

public interface UserService {

	void insertUser(UserVO vo);

	void updateUser(UserVO vo);

	void deleteUser(UserVO vo);

	UserVO getUser(UserVO vo);

	List<UserVO> getUserList();

	List<UserVO> getUserListById(String key);

	List<UserVO> getUserListByName(String key);

}