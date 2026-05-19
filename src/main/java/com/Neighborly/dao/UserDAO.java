package com.Neighborly.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import com.Neighborly.model.UserModel;
import com.Neighborly.utils.DBconfig;

public class UserDAO {

	// Add New User
	public void insertUsers(String firstName, String lastName, String username, String dob, String gender, String email,
			String number, String password, String image) throws Exception {
		LocalDate localDate = LocalDate.parse(dob);
		Date sqlDate = Date.valueOf(localDate);

		String sql = "INSERT INTO users (first_name, last_name, username, dob, gender, email, number, password, image) "
				+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

		Connection con = DBconfig.getConnection();
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setString(1, firstName);
		pst.setString(2, lastName);
		pst.setString(3, username);
		pst.setDate(4, sqlDate);
		pst.setString(5, gender);
		pst.setString(6, email);
		pst.setString(7, number);
		pst.setString(8, password);
		pst.setString(9, image);
		pst.executeUpdate();
		pst.close();
		con.close();
	}

	// All Users
	public List<UserModel> getAllUsers() throws Exception {

		List<UserModel> users = new ArrayList<>();

		String sql = "SELECT * FROM users";

		Connection con = DBconfig.getConnection();
		PreparedStatement pst = con.prepareStatement(sql);
		ResultSet rs = pst.executeQuery();

		while (rs.next()) {
			UserModel u = new UserModel();
			u.setUserId(rs.getInt("user_id"));
			u.setFirstName(rs.getString("first_name"));
			u.setLastName(rs.getString("last_name"));
			u.setUserName(rs.getString("username"));
			u.setDob(rs.getDate("dob"));
			u.setGender(rs.getString("gender"));
			u.setEmail(rs.getString("email"));
			u.setNumber(rs.getString("number"));
			u.setRole(rs.getString("role"));
			u.setImage(rs.getString("image"));
			u.setStatus(rs.getString("status"));
			users.add(u);
		}

		rs.close();
		pst.close();
		con.close();

		return users;
	}

	// Filter User for Login
	public UserModel getUserByUsername(String username) throws Exception {

		String sql = "SELECT * FROM users WHERE username = ? AND status = 'Active'";

		Connection con = DBconfig.getConnection();
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setString(1, username);
		ResultSet rs = pst.executeQuery();

		UserModel u = null;
		if (rs.next()) {
			u = new UserModel();
			u.setUserId(rs.getInt("user_id"));
			u.setFirstName(rs.getString("first_name"));
			u.setLastName(rs.getString("last_name"));
			u.setUserName(rs.getString("username"));
			u.setDob(rs.getDate("dob"));
			u.setGender(rs.getString("gender"));
			u.setEmail(rs.getString("email"));
			u.setNumber(rs.getString("number"));
			u.setPassword(rs.getString("password"));
			u.setRole(rs.getString("role"));
			u.setImage(rs.getString("image"));
		}

		rs.close();
		pst.close();
		con.close();

		return u;
	}

	// Get single user by ID
	public UserModel getUserById(int userId) throws Exception {
		String sql = "SELECT * FROM users WHERE user_id = ?";

		Connection con = DBconfig.getConnection();
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setInt(1, userId);
		ResultSet rs = pst.executeQuery();

		UserModel u = null;
		if (rs.next()) {
			u = new UserModel();
			u.setUserId(rs.getInt("user_id"));
			u.setFirstName(rs.getString("first_name"));
			u.setLastName(rs.getString("last_name"));
			u.setUserName(rs.getString("username"));
			u.setDob(rs.getDate("dob"));
			u.setGender(rs.getString("gender"));
			u.setEmail(rs.getString("email"));
			u.setNumber(rs.getString("number"));
			u.setRole(rs.getString("role"));
			u.setImage(rs.getString("image"));
			u.setStatus(rs.getString("status"));
		}

		rs.close();
		pst.close();
		con.close();

		return u;
	}

	// Update User
	public int updateUser(int userId, String firstName, String lastName, String email, String number) throws Exception {

		String sql = "UPDATE users SET first_name = ?, last_name = ?, " + "email = ?, number = ? "
				+ "WHERE user_id = ?";

		Connection con = DBconfig.getConnection();
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setString(1, firstName);
		pst.setString(2, lastName);
		pst.setString(3, email);
		pst.setString(4, number);
		pst.setInt(5, userId);
		int rows = pst.executeUpdate();
		pst.close();
		con.close();

		return rows;
	}
}