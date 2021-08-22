package me.tokyohyeon.mapper;

import java.util.List;

import me.tokyohyeon.domain.ProductVO;
import me.tokyohyeon.domain.StEndVO;

public interface ProductMapper 
{
	public int insert(ProductVO vo);
	public List<ProductVO> getList(StEndVO vo);
}
