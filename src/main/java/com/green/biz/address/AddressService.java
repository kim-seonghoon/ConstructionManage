package com.green.biz.address;

import java.util.List;


import com.green.biz.dto.AddressVO;

public interface AddressService {
	
	public List<AddressVO> selectAddressByDong(String dong);
}

 