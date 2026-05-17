package com.Neighborly.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.Neighborly.model.CitizenModel;
import com.Neighborly.model.NoticeModel;
import com.Neighborly.utils.DBconfig;

public class CitizenDAO {

	public List<CitizenModel> getAllCitizens() throws Exception {
		
		List<CitizenModel> citizens = new ArrayList<>();

		Connection con = DBconfig.getConnection();

		String sql = "SELECT user_id, first_name, last_name, username, email, number, registration_date "
				+ "FROM users WHERE role = 'user' ORDER BY registration_date DESC";

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

}
