package me.tokyohyeon.domain;

import lombok.Data;

@Data
public class CategoryVO {

	private int level;
	private int category_no;
	private String category_name;
	private int parent_no;
}
