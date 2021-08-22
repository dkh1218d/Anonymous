package me.tokyohyeon.service;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import me.tokyohyeon.domain.ProductVO;
import me.tokyohyeon.domain.StEndVO;
import me.tokyohyeon.mapper.ProductMapper;

@Service
@AllArgsConstructor
public class ProductServiceImpl implements ProductService {

	private ProductMapper mapper;

	@Override
	public int insert(ProductVO vo) 
	{
		return mapper.insert(vo);
	}
	
	@Override
	public List<ProductVO> getList(StEndVO vo) 
	{
		return mapper.getList(vo);
	}
}
