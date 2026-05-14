package com.Neighborly.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.Neighborly.model.JobModel;
import com.Neighborly.utils.DBconfig;

public class JobDAO {

	public void insertJob(String jobTitle, String department, String jobDescription, String contactEmail,
			String contactPhone, String jobStatus, int adminId) throws Exception {
		Connection con = DBconfig.getConnection();
		String sql = "INSERT INTO jobs (admin_id, job_title, department, job_description, contact_email, contact_phone, job_status) VALUES (?, ?, ?, ?, ?, ?, ?)";
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setInt(1, adminId);
		pst.setString(2, jobTitle);
		pst.setString(3, department);
		pst.setString(4, jobDescription);
		pst.setString(5, contactEmail);
		pst.setString(6, contactPhone);
		pst.setString(7, jobStatus);
		pst.executeUpdate();
		pst.close();
		con.close();
	}

	public List<JobModel> getAllJobs() throws Exception {

		List<JobModel> jobs = new ArrayList<>();

		Connection con = DBconfig.getConnection();

		String sql = "SELECT job_id, admin_id, job_title, department, job_description, contact_email, contact_phone, job_status, posted_at FROM jobs WHERE job_status = 'Active'";

		PreparedStatement pst = con.prepareStatement(sql);

		ResultSet rs = pst.executeQuery();

		while (rs.next()) {
			JobModel j = new JobModel();

			j.setJobId(rs.getInt("job_id"));
			j.setAdminId(rs.getInt("admin_id"));
			j.setJobTitle(rs.getString("job_title"));
			j.setDepartment(rs.getString("department"));
			j.setJobDescription(rs.getString("job_description"));
			j.setContactEmail(rs.getString("contact_email"));
			j.setContactPhone(rs.getString("contact_phone"));
			j.setJobStatus(rs.getString("job_status"));
			j.setPostedAt(rs.getString("posted_at"));
			jobs.add(j);
		}

		rs.close();
		pst.close();
		con.close();
		return jobs;
	}

	public void updateJob(int jobId, String jobTitle, String department, String jobDescription, String contactEmail,
			String contactPhone) throws Exception {
		
		Connection con = DBconfig.getConnection();
		
		String sql = "UPDATE jobs SET job_title = ?, department = ?, job_description = ?, contact_email = ?, contact_phone = ? WHERE job_id = ?";
		
		PreparedStatement pst = con.prepareStatement(sql);
		
		pst.setString(1, jobTitle);
		pst.setString(2, department);
		pst.setString(3, jobDescription);
		pst.setString(4, contactEmail);
		pst.setString(5, contactPhone);
		pst.setInt(6, jobId);
		pst.executeUpdate();
		pst.close();
		con.close();
	}

}
