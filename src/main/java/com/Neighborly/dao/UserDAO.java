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
    public void insertUsers(String firstName, String lastName, String username, String dob,
                            String gender, String email, String number, String password) throws Exception {
        LocalDate localDate = LocalDate.parse(dob);
        Date sqlDate = Date.valueOf(localDate);
        Connection con = DBconfig.getConnection();
        String sql = "INSERT INTO users (first_name, last_name, username, dob, gender, email, number, password) "
                   + "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        PreparedStatement pst = con.prepareStatement(sql);
        pst.setString(1, firstName);
        pst.setString(2, lastName);
        pst.setString(3, username);
        pst.setDate(4, sqlDate);
        pst.setString(5, gender);
        pst.setString(6, email);
        pst.setString(7, number);
        pst.setString(8, password);
        pst.executeUpdate();
        pst.close();
        con.close();
    }

    // All Users
    public List<UserModel> getAllUsers() throws Exception {
        List<UserModel> users = new ArrayList<>();
        Connection con = DBconfig.getConnection();
        String sql = "SELECT * FROM users";
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
            users.add(u);
        }
        rs.close();
        pst.close();
        con.close();
        return users;
    }

    // Filter User for Login
    public UserModel getUserByUsername(String username) throws Exception {
        UserModel u = null;
        Connection con = DBconfig.getConnection();
        String sql = "SELECT * FROM users WHERE username = ?";
        PreparedStatement pst = con.prepareStatement(sql);
        pst.setString(1, username);
        ResultSet rs = pst.executeQuery();
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
        }
        rs.close();
        pst.close();
        con.close();
        return u;
    }
}