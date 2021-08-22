package me.tokyohyeon.mapper;

import me.tokyohyeon.domain.ImgVO;

public interface ImageMapper 
{
	public int insert(ImgVO vo);
	public ImgVO readAlias(String path);
	public ImgVO readIndex(int index);
}
