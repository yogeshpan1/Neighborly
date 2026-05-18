package com.Neighborly.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.Neighborly.model.UserModel;
import com.Neighborly.utils.DBconfig;

public class UserDAO {

    public List<UserModel> getAllUsers() throws Exception {

        List<UserModel> users = new ArrayList<>();

        Connection con = DBconfig.getConnection();
        
        String sql = "SELECT user_id, first_name, last_name, username, email, number, registration_date, status, suspension_reason FROM users WHERE role = 'citizen' ORDER BY first_name ASC";

        PreparedStatement pst = con.prepareStatement(sql);

        ResultSet rs = pst.executeQuery();

        while (rs.next()) {
            
            UserModel u = new UserModel();
            
            u.setUserId(rs.getInt("user_id"));
            u.setFirstName(rs.getString("first_name"));
            u.setLastName(rs.getString("last_name"));
            u.setUsername(rs.getString("username"));
            u.setEmail(rs.getString("email"));
            u.setNumber(rs.getString("number"));
            u.setRegistrationDate(rs.getString("registration_date"));
            u.setStatus(rs.getString("status"));
            u.setSuspensionReason(rs.getString("suspension_reason"));
            users.add(u);
        }

        rs.close();
        pst.close();
        con.close();
        return users;
    }

    public UserModel getUserById(int userId) throws Exception {

        Connection con = DBconfig.getConnection();
        
        String sql = "SELECT user_id, first_name, last_name, username, email, number, registration_date, status, suspension_reason FROM users WHERE user_id = ? AND role = 'citizen'";

        PreparedStatement pst = con.prepareStatement(sql);
        pst.setInt(1, userId);

        ResultSet rs = pst.executeQuery();

        UserModel u = new UserModel();

        if (rs.next()) {
            u.setUserId(rs.getInt("user_id"));
            u.setFirstName(rs.getString("first_name"));
            u.setLastName(rs.getString("last_name"));
            u.setUsername(rs.getString("username"));
            u.setEmail(rs.getString("email"));
            u.setNumber(rs.getString("number"));
            u.setRegistrationDate(rs.getString("registration_date"));
            u.setStatus(rs.getString("status"));
            u.setSuspensionReason(rs.getString("suspension_reason"));
        }

        rs.close();
        pst.close();
        con.close();
        return u;
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
    
    public void unsuspendCitizen(int userId) throws Exception {
        
    	Connection con = DBconfig.getConnection();
    	
        String sql = "UPDATE users SET status = 'Active', suspension_reason = NULL WHERE user_id = ?";
        
        PreparedStatement pst = con.prepareStatement(sql);
        
        pst.setInt(1, userId);
        pst.executeUpdate();
        pst.close();
        con.close();
    }
}