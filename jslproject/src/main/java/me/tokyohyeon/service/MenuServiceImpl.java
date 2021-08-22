package me.tokyohyeon.service;


import java.util.List;

import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import me.tokyohyeon.domain.CategoryVO;
import me.tokyohyeon.domain.MenuVO;
import me.tokyohyeon.mapper.MenuMapper;

@Service
@AllArgsConstructor
public class MenuServiceImpl implements MenuService 
{
	private MenuMapper mapper;
	
	@Override
	public List<MenuVO> menuList() 
	{
		// TODO Auto-generated method stub
		return mapper.menuList();
	}
	
	@Override	
	public List<CategoryVO> categoryList() 
	{
		// TODO Auto-generated method stub
		return mapper.categoryList();
	}

}
