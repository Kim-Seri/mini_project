package com.secondproject.news.domain;

import java.sql.Timestamp;

public class Post {
	
	private int postNo;
	private int newsNo;
	private String useId;
	private String comment;
	private Timestamp regDate;
	private String categoryId;
	
	public Post() {}
	
	public Post(int postNo, int newsNo, String userId, String comment, Timestamp regDate, String categoryId) {
		this.postNo = postNo;
		this.newsNo = newsNo;
		this.useId = userId;
		this.comment = comment;
		this.regDate = regDate;
		this.categoryId = categoryId;
	}

	public int getPostNo() {
		return postNo;
	}

	public void setPostNo(int postNo) {
		this.postNo = postNo;
	}

	public int getNewsNo() {
		return newsNo;
	}

	public void setNewsNo(int newsNo) {
		this.newsNo = newsNo;
	}

	public String getUseId() {
		return useId;
	}

	public void setUseId(String useId) {
		this.useId = useId;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public Timestamp getRegDate() {
		return regDate;
	}

	public void setRegDate(Timestamp regDate) {
		this.regDate = regDate;
	}

	public String getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}
	
	

}
