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
        String sql = "SELECT user_id, first_name, last_name FROM users WHERE role = 'user' AND status = 'Active' ORDER BY first_name ASC";
        PreparedStatement pst = con.prepareStatement(sql);
        ResultSet rs = pst.executeQuery();
        while (rs.next()) {
            UserModel u = new UserModel();
            u.setUserId(rs.getInt("user_id"));
            u.setFirstName(rs.getString("first_name"));
            u.setLastName(rs.getString("last_name"));
            users.add(u);
        }
        rs.close();
        pst.close();
        con.close();
        return users;
    }
}