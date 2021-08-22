package me.tokyohyeon.domain;

import lombok.Data;

@Data
public class MenuVO {

	private int level;
	private int category_no;
	private String category_name;
	private int parent_no;
	private String path;
	private int is_hot;
}
