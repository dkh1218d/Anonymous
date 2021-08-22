package me.tokyohyeon.service;

import java.util.List;

import me.tokyohyeon.domain.Criteria;
import me.tokyohyeon.domain.UserVO;

public interface AdminService {

	
	public List<UserVO> getMemberListWithPaging(Criteria cri);
	public int MemberTotalCount(Criteria cri);
	public List<UserVO> gridMemberList();
}
