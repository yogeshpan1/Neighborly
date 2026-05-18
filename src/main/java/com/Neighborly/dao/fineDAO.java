package com.Neighborly.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.Neighborly.model.FineModel;
import com.Neighborly.utils.DBconfig;

public class fineDAO {
	public void insertFine(int userId, String violationType, double fineAmount, String violationDate, String reason)
			throws Exception {
		
		Connection con = DBconfig.getConnection();
		
		String sql = "INSERT INTO fines (user_id, violation_type, fine_amount, violation_date, reason) VALUES (?, ?, ?, ?, ?)";
		
		PreparedStatement pst = con.prepareStatement(sql);
		
		pst.setInt(1, userId);
		pst.setString(2, violationType);
		pst.setDouble(3, fineAmount);
		pst.setString(4, violationDate);
		pst.setString(5, reason);
		pst.executeUpdate();
		pst.close();
		con.close();
	}

	public List<FineModel> getAllFines() throws Exception {

		List<FineModel> fines = new ArrayList<>();

		Connection con = DBconfig.getConnection();

		String sql = "SELECT f.fine_id, f.user_id, u.first_name, u.last_name, f.violation_type, f.fine_amount, f.violation_date, f.reason, f.fine_status, f.issued_at FROM fines f JOIN users u ON f.user_id = u.user_id WHERE f.fine_status != 'Deleted' ORDER BY f.issued_at DESC";

		PreparedStatement pst = con.prepareStatement(sql);

		ResultSet rs = pst.executeQuery();

		while (rs.next()) {

			FineModel f = new FineModel();

			f.setFineId(rs.getInt("fine_id"));
			f.setUserId(rs.getInt("user_id"));
			f.setFirstName(rs.getString("first_name"));
			f.setLastName(rs.getString("last_name"));
			f.setViolationType(rs.getString("violation_type"));
			f.setFineAmount(rs.getDouble("fine_amount"));
			f.setViolationDate(rs.getString("violation_date"));
			f.setReason(rs.getString("reason"));
			f.setStatus(rs.getString("fine_status"));
			f.setIssuedAt(rs.getString("issued_at"));
			fines.add(f);
		}
		rs.close();
		pst.close();
		con.close();
		return fines;
	}

	public void markPaid(int fineId) throws Exception {

		Connection con = DBconfig.getConnection();

		String sql = "UPDATE fines SET fine_status = 'Paid' WHERE fine_id = ?";

		PreparedStatement pst = con.prepareStatement(sql);

		pst.setInt(1, fineId);
		pst.executeUpdate();
		pst.close();
		con.close();
	}

	public void deleteFine(int fineId) throws Exception {
	    
		Connection con = DBconfig.getConnection();
		
	    String sql = "UPDATE fines SET fine_status = 'Deleted' WHERE fine_id = ?";
	    
	    PreparedStatement pst = con.prepareStatement(sql);
	    
	    pst.setInt(1, fineId);
	    pst.executeUpdate();
	    pst.close();
	    con.close();
	}
}
