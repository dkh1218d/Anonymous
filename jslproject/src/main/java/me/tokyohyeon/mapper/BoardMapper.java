package me.tokyohyeon.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import me.tokyohyeon.domain.BoardVO;
import me.tokyohyeon.domain.Criteria;

public interface BoardMapper 
{
	public List<BoardVO> getList();
	public List<BoardVO> getListWithPaging(Criteria cri);
	public int insert(BoardVO board);
	public int insertSelectKey(BoardVO board);
	public BoardVO read(Long bno);
	public int delete(Long bno);
	public int update(BoardVO board);
	public int getTotalCount(Criteria cri);
	public boolean replydelete(Long bno);
	public void updateReplyCnt(@Param("bno") Long bno, @Param("amount") int amount);
}
