package com.Neighborly.service;

public class NoticeService {
	public String validateNotice(String title, String category, String description) {

		if (title == null || title.trim().isEmpty()) {
			return "Notice title is required";
		}
		if (title.trim().length() > 100) {
			return "Notice title cannot exceed 100 characters";
		}
		if (category == null || category.trim().isEmpty()) {
			return "Category is required";
		}
		if (description == null || description.trim().isEmpty()) {
			return "Description is required";
		}
		if (description.trim().length() > 1000) {
			return "Description cannot exceed 1000 characters";
		}

		return "Success";
	}
}