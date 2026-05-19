package com.Neighborly.model;

public class JobModel {
	private int jobId;
	private int adminId;
	private String jobTitle;
	private String department;
	private String jobDescription;
	private String contactEmail;
	private String contactPhone;
	private String jobStatus;
	private String postedAt;

	public int getJobId() {
		return jobId;
	}

	public int getAdminId() {
		return adminId;
	}

	public String getJobTitle() {
		return jobTitle;
	}

	public String getDepartment() {
		return department;
	}

	public String getJobDescription() {
		return jobDescription;
	}

	public String getContactEmail() {
		return contactEmail;
	}

	public String getContactPhone() {
		return contactPhone;
	}

	public String getJobStatus() {
		return jobStatus;
	}

	public String getPostedAt() {
		return postedAt;
	}

	public void setJobId(int jobId) {
		this.jobId = jobId;
	}

	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}

	public void setJobTitle(String jobTitle) {
		this.jobTitle = jobTitle;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public void setJobDescription(String jobDescription) {
		this.jobDescription = jobDescription;
	}

	public void setContactEmail(String contactEmail) {
		this.contactEmail = contactEmail;
	}

	public void setContactPhone(String contactPhone) {
		this.contactPhone = contactPhone;
	}

	public void setJobStatus(String jobStatus) {
		this.jobStatus = jobStatus;
	}

	public void setPostedAt(String postedAt) {
		this.postedAt = postedAt;
	}
}
