package com.secondproject.news.domain;

import java.sql.Timestamp;

public class News {
	private int no;
	private String title;
	private String content;
	private String categoryId;
	private String image;
	private Timestamp regDate;
	private String writer;
	
	public News () {}
	
	public News (int no, String title, String content, String categoryId ,String image, Timestamp regDate, String writer ) {
		this.no=no;
		this.title=title;
		this.content=content;
		this.categoryId=categoryId;
		this.image=image;
		this.regDate=regDate;
		this.writer=writer;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Timestamp getRegDate() {
		return regDate;
	}

	public void setRegDate(Timestamp regDate) {
		this.regDate = regDate;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}
	
	
}
