package com.secondproject.news.domain;

public class Category {
	private String categoryId;
	private int categoryNo;
	
	public Category() {}
	
	public Category(String categoryId,int categoryNo) {
		this.categoryId=categoryId;
		this.categoryNo=categoryNo;
	}

	public String getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}

	public int getCategoryNo() {
		return categoryNo;
	}

	public void setCategoryNo(int categoryNo) {
		this.categoryNo = categoryNo;
	}
	
	
}
