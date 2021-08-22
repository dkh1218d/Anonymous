package me.tokyohyeon.domain;

import lombok.Data;

@Data
public class ImgVO 
{
	private int IMG_ID;
	private String ALIAS;
	private String IMG_NAME;
	private int SIZE_W;
	private int SIZE_H;
	private int LEN;
	private String Binary;
}
