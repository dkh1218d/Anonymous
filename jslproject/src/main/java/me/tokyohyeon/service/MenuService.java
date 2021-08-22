package me.tokyohyeon.service;

import java.util.List;

import me.tokyohyeon.domain.CategoryVO;
import me.tokyohyeon.domain.MenuVO;

public interface MenuService 
{
	public List<MenuVO> menuList();
	public List<CategoryVO> categoryList();
}
