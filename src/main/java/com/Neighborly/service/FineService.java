package com.Neighborly.service;

public class FineService {

	public String validateFine(String userId, String violationType, String fineAmount, String violationDate,
			String reason) {

		if (userId == null || userId.trim().isEmpty()) {
			return "Citizen is required";
		}
		
		if (violationType == null || violationType.trim().isEmpty()) {
			return "Violation type is required";
		}
		
		if (fineAmount == null || fineAmount.trim().isEmpty()) {
			return "Fine amount is required";
		}
		
		if (violationDate == null || violationDate.trim().isEmpty()) {
			return "Date of violation is required";
		}
		
		if (reason == null || reason.trim().isEmpty()) {
			return "Reason is required";
		}

		return "Success";
	}
}
