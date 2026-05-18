package com.Neighborly.model;

public class NoticeModel {
	private int noticeId;
	private int userId;
	private String noticeTitle;
	private String noticeCategory;
	private String noticeDescription;
	private String createdAt;

	public int getNoticeId() {
		return noticeId;
	}

	public void setNoticeId(int noticeId) {
		this.noticeId = noticeId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getNoticeTitle() {
		return noticeTitle;
	}

	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}

	public String getNoticeCategory() {
		return noticeCategory;
	}

	public void setNoticeCategory(String noticeCategory) {
		this.noticeCategory = noticeCategory;
	}

	public String getNoticeDescription() {
		return noticeDescription;
	}

	public void setNoticeDescription(String noticeDescription) {
		this.noticeDescription = noticeDescription;
	}

	public String getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(String createdAt) {
		this.createdAt = createdAt;
	}
}