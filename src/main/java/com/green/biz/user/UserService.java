package com.green.biz.user;
 
import java.util.List;

import com.green.biz.dto.UserVO;
import com.green.biz.utils.Criteria;

public interface UserService {
 
	void insertUser(UserVO vo);

	void updateUser(UserVO vo);

	void deleteUser(UserVO vo);

	UserVO getUser(UserVO vo);

	List<UserVO> getUserList();

	List<UserVO> getUserListById(String key);

	List<UserVO> getUserListByName(String key);
	
	public int loginID(UserVO vo);
	
	// 회원 상세정보 조회
	UserVO getMember(String user_id);
	
	int confirmID(String user_id);
	
	public UserVO getUserByNameAndEmail(UserVO vo);

	public UserVO getUserByNameAndEmailAndID(UserVO vo);
	
	public void pwdChange(UserVO vo);
	
	public List<UserVO> userListWithPaging(String keyName, String keyId, Criteria criteria);
	
	public int getUserCount(String key);
	
	public void deleteUserUpdate(UserVO vo);
}