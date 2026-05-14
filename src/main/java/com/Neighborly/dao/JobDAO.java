package com.Neighborly.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

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
	

}
