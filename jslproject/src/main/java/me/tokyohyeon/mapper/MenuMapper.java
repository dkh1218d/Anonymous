package me.tokyohyeon.mapper;

import java.util.List;

import me.tokyohyeon.domain.CategoryVO;
import me.tokyohyeon.domain.MenuVO;

public interface MenuMapper 
{
	public List<MenuVO> menuList();
	public List<CategoryVO> categoryList();
}

