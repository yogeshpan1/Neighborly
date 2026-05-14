package com.Neighborly.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.Neighborly.utils.DBconfig;

public class JobDAO {


	public void insertJob(String jobTitle, String department, String jobDescription,
			String contactEmail, String contactPhone, String jobStatus, int adminId) throws Exception {
		Connection con = DBconfig.getConnection();
		String sql = "INSERT INTO job_listings (job_title, department, job_description, contact_email, contact_phone, job_status, admin_id) VALUES (?, ?, ?, ?, ?, ?, ?)";
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setString(1, jobTitle);
		pst.setString(2, department);
		pst.setString(3, jobDescription);
		pst.setString(4, contactEmail);
		pst.setString(5, contactPhone);
		pst.setString(6, jobStatus);
		pst.setInt(7, adminId);
		pst.executeUpdate();
		pst.close();
		con.close();
	}
}
