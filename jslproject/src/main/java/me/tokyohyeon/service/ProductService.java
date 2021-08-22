package me.tokyohyeon.service;

import java.util.List;
import me.tokyohyeon.domain.ProductVO;
import me.tokyohyeon.domain.StEndVO;

public interface ProductService
{
	public int insert(ProductVO vo);
	public List<ProductVO> getList(StEndVO vo);
}
