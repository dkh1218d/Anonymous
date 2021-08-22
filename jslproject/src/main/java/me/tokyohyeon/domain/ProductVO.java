package me.tokyohyeon.domain;

import lombok.Data;

@Data
public class ProductVO 
{
	private int p_id;
	private int category_no;
	private int img_id;
	private String image_alias;
	private int p_stock;
	private int p_price;
	private String p_name;
	private String p_desc;
	private int p_star;
	private String p_tag;
}