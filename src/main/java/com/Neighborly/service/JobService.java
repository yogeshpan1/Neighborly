package com.Neighborly.service;

public class JobService {

	public String validateJob(String jobTitle, String department, String jobDescription, String contactEmail,
			String contactPhone) {

		if (jobTitle == null || jobTitle.trim().isEmpty()) {
			return "Job title is required";
		}
		if (department == null || department.trim().isEmpty()) {
			return "Department is required";
		}
		if (jobDescription == null || jobDescription.trim().isEmpty()) {
			return "Job description is required";
		}
		if (contactEmail == null || contactEmail.trim().isEmpty()) {
			return "Contact email is required";
		}
		if (contactPhone == null || contactPhone.trim().isEmpty()) {
			return "Contact phone is required";
		}

		return "Success";
	}
}
