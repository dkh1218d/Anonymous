package me.tokyohyeon.service;

import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import me.tokyohyeon.domain.UserVO;
import me.tokyohyeon.mapper.LoginMapper;

@Log4j
@Service
@AllArgsConstructor
public class LoginServiceImpl implements LoginService {
	private LoginMapper mapper;

	@Override
	public int MemberInsert(UserVO vo) {
		// TODO Auto-generated method stub
		return mapper.MapperInsert(vo);
	}

	@Override
	public UserVO SNSLogin(UserVO vo) {
		// TODO Auto-generated method stub
		return mapper.SNSLogin(vo);
	}

	@Override
	public int checkSignup(UserVO vo) {
		// TODO Auto-generated method stub
		return mapper.checkSignup(vo);
	}



}
