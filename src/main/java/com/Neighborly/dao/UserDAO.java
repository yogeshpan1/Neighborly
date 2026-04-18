package com.Neighborly.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import com.Neighborly.utils.DBconfig;

public class UserDAO {

    public void insertUsers(String firstName, String lastName, String username, String dob,
                              String gender, String email, String number, String password) throws Exception {

        Connection con = DBconfig.getConnection();

        String sql = "INSERT INTO users (first_name, last_name, username, dob, gender, email, number, password) "
                   + "VALUES (?,?, ?, ?, ?, ?, ?, ?)";

        PreparedStatement pst = con.prepareStatement(sql);
        pst.setString(1, firstName);
        pst.setString(2, lastName);
        pst.setString(3, username);
        pst.setString(4, dob);
        pst.setString(5, gender);
        pst.setString(6, email);
        pst.setString(7, number);
        pst.setString(8, password);

        pst.executeUpdate();
        pst.close();
        con.close();
    }
}