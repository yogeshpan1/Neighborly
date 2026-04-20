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

    public void insertUsers(String firstName, String lastName, String username, String dob,
                              String gender, String email, String number, String password) throws Exception {

        LocalDate localDate = LocalDate.parse(dob); 
        Date sqlDate = Date.valueOf(localDate);

        Connection con = DBconfig.getConnection();

        String sql = "INSERT INTO users (first_name, last_name, username, dob, gender, email, number, password, program_id) "
                   + "VALUES (?,?, ?, ?, ?, ?, ?, ?, ?)";
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

    public List<UserModel> getAllStudents() throws Exception {
        List<UserModel> students = new ArrayList<>();
        Connection con = DBconfig.getConnection();
        
        String sql = "SELECT * FROM users";
        PreparedStatement pst = con.prepareStatement(sql);
        ResultSet rs = pst.executeQuery();

        while (rs.next()) {
            UserModel s = new UserModel();
            s.setFirstName(rs.getString("first_name"));
            s.setLastName(rs.getString("last_name"));
            s.setUserName(rs.getString("username"));
            s.setDob(rs.getDate("dob")); 
            s.setEmail(rs.getString("email"));
            s.setNumber(rs.getString("number"));
            students.add(s);
        }
        
        rs.close();
        pst.close();
        con.close();
        return students;
    }
    public UserModel getUserByUsername(String username) throws Exception {
    	UserModel s = null;
        Connection con = DBconfig.getConnection();
        
        String sql = "SELECT * FROM users WHERE username = ?";
        PreparedStatement pst = con.prepareStatement(sql);
        pst.setString(1, username);
        ResultSet rs = pst.executeQuery();

        if (rs.next()) {
            s = new UserModel();
            s.setFirstName(rs.getString("first_name"));
            s.setLastName(rs.getString("last_name"));
            s.setUserName(rs.getString("username"));
            s.setDob(rs.getDate("dob")); 
            s.setEmail(rs.getString("email"));
            s.setNumber(rs.getString("number"));
            s.setPassword(rs.getString("password"));
        }
        
        rs.close();
        pst.close();
        con.close();
        return s;
    }
    
}
