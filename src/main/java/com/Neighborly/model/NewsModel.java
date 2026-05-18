package com.Neighborly.model;

public class NewsModel {
	private int newsId;
	private int adminId;
	private String newsTitle;
	private String newsDescription;
	private String newsStatus;
	private String postedAt;

	public int getNewsId() {
		return newsId;
	}

	public int getAdminId() {
		return adminId;
	}

	public String getNewsTitle() {
		return newsTitle;
	}

	public String getNewsDescription() {
		return newsDescription;
	}

	public String getNewsStatus() {
		return newsStatus;
	}

	public String getPostedAt() {
		return postedAt;
	}

	public void setNewsId(int newsId) {
		this.newsId = newsId;
	}

	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}

	public void setNewsTitle(String newsTitle) {
		this.newsTitle = newsTitle;
	}

	public void setNewsDescription(String newsDescription) {
		this.newsDescription = newsDescription;
	}

	public void setNewsStatus(String newsStatus) {
		this.newsStatus = newsStatus;
	}

	public void setPostedAt(String postedAt) {
		this.postedAt = postedAt;
	}
}
