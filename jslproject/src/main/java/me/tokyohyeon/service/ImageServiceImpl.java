package me.tokyohyeon.service;

import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import me.tokyohyeon.domain.ImgVO;
import me.tokyohyeon.mapper.ImageMapper;

@Service
@AllArgsConstructor
public class ImageServiceImpl implements ImageService 
{
	private ImageMapper mapper;
	
	@Override
	public int insert(ImgVO vo) 
	{
		// TODO Auto-generated method stub
		return mapper.insert(vo);
	}

	@Override
	public ImgVO readAlias(String path) 
	{
		// TODO Auto-generated method stub
		return mapper.readAlias(path);
	}

	@Override
	public ImgVO readIndex(int index) 
	{
		// TODO Auto-generated method stub
		return mapper.readIndex(index);
	}

}
