package me.tokyohyeon.service;

import me.tokyohyeon.domain.ImgVO;

public interface ImageService 
{
	public int insert(ImgVO vo);
	public ImgVO readAlias(String path);
	public ImgVO readIndex(int index);
}
