package me.tokyohyeon.service;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import me.tokyohyeon.domain.Criteria;
import me.tokyohyeon.domain.UserVO;
import me.tokyohyeon.mapper.AdminMapper;
import me.tokyohyeon.mapper.BoardMapper;

@Log4j
@Service
@AllArgsConstructor
public class AdminServiceImpl implements AdminService {
	private AdminMapper mapper;

	@Override
	public List<UserVO> getMemberListWithPaging(Criteria cri) {
		// TODO Auto-generated method stub
		return mapper.getMemberListWithPaging(cri);
	}

	@Override
	public int MemberTotalCount(Criteria cri) {
		// TODO Auto-generated method stub
		return mapper.MemberTotalCount(cri);
	}

	@Override
	public List<UserVO> gridMemberList() {
		// TODO Auto-generated method stub
		return mapper.gridMemberList();
	}
}
