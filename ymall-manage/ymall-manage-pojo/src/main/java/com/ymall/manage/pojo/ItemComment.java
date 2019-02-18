package com.ymall.manage.pojo;

public class ItemComment {
	
	private Long id;
	
	private Long userId;
	
	private Long itemId;
	
	private String content;
	
	private String isatisfy;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public Long getItemId() {
		return itemId;
	}

	public void setItemId(Long itemId) {
		this.itemId = itemId;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getIsatisfy() {
		return isatisfy;
	}

	public void setIsatisfy(String isatisfy) {
		this.isatisfy = isatisfy;
	}
	
	
}
