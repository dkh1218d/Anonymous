package me.tokyohyeon.mapper;

import java.util.List;

import me.tokyohyeon.domain.Criteria;
import me.tokyohyeon.domain.UserVO;

public interface LoginMapper {

	
	public int MapperInsert(UserVO vo);
	public UserVO SNSLogin(UserVO vo);
	public int checkSignup(UserVO vo);

}

