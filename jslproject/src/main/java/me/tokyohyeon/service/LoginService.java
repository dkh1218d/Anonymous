package me.tokyohyeon.service;

import me.tokyohyeon.domain.UserVO;

public interface LoginService {

	
	public int MemberInsert(UserVO vo);
	public UserVO SNSLogin(UserVO vo);
	public int checkSignup(UserVO vo);
}
