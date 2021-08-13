package com.green.biz.address.impl;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.biz.address.AddressService;
import com.green.biz.dao.AddressDAO;
import com.green.biz.dto.AddressVO;

@Service("AddressSerivce")
public class AddressServiceImpl implements AddressService {
	
	@Autowired
	private AddressDAO addressDao;
	
	@Override
	public List<AddressVO> selectAddressByDong(String dong) {
		
		return addressDao.selectAddressByDong(dong);

	}

}
