package com.Neighborly.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.Neighborly.model.CitizenModel;
import com.Neighborly.utils.DBconfig;

public class CitizenDAO {

	public List<CitizenModel> getAllCitizens() throws Exception {
		
		List<CitizenModel> citizens = new ArrayList<>();

		Connection con = DBconfig.getConnection();

		String sql = "SELECT user_id, first_name, last_name, username, email, number, registration_date "
		        + "FROM users WHERE role = 'user' AND status = 'Active' ORDER BY registration_date DESC";

		PreparedStatement pst = con.prepareStatement(sql);
		
		ResultSet rs = pst.executeQuery();

		while (rs.next()) {
			
			CitizenModel c = new CitizenModel();
			
			c.setUserId(rs.getInt("user_id"));
			c.setFirstName(rs.getString("first_name"));
			c.setLastName(rs.getString("last_name"));
			c.setUsername(rs.getString("username"));
			c.setEmail(rs.getString("email"));
			c.setNumber(rs.getString("number"));
			c.setRegistrationDate(rs.getString("registration_date"));
			citizens.add(c);
		}

		rs.close();
		pst.close();
		con.close();
		return citizens;
	}
	
	public CitizenModel getCitizenById(int userId) throws Exception {
	    
		Connection con = DBconfig.getConnection();

	    String sql = "SELECT user_id, first_name, last_name, username, email, number, registration_date " +
	                 "FROM users WHERE user_id = ? AND role = 'user'";

	    PreparedStatement pst = con.prepareStatement(sql);
	    
	    pst.setInt(1, userId);
	    
	    ResultSet rs = pst.executeQuery();

	    CitizenModel c = new CitizenModel();

	    if (rs.next()) {
	        
	    	c.setUserId(rs.getInt("user_id"));
	        c.setFirstName(rs.getString("first_name"));
	        c.setLastName(rs.getString("last_name"));
	        c.setUsername(rs.getString("username"));
	        c.setEmail(rs.getString("email"));
	        c.setNumber(rs.getString("number"));
	        c.setRegistrationDate(rs.getString("registration_date"));
	    }

	    rs.close();
	    pst.close();
	    con.close();
	    
	    return c;
	}
	
	public void suspendCitizen(int userId, String reason) throws Exception {
	    
		Connection con = DBconfig.getConnection();

	    String sql = "UPDATE users SET status = 'Inactive', suspension_reason = ? WHERE user_id = ?";

	    PreparedStatement pst = con.prepareStatement(sql);
	    
	    pst.setString(1, reason);
	    pst.setInt(2, userId);
	    pst.executeUpdate();

	    pst.close();
	    con.close();
	}

}
