package com.Neighborly.dao;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import com.Neighborly.utils.DBconfig;

public class PollDAO 
{

	 public void insertPoll(String question, String status, int userId) throws Exception 
	 {
	        Connection con = DBconfig.getConnection();
	        
	        String sql = "INSERT INTO Polls (Poll_Question, Poll_Status, User_ID) VALUES (?, ?, ?)";
	        
	        PreparedStatement pst = con.prepareStatement(sql);
	        
	        pst.setString(1, question);
	        pst.setString(2, status);
	        pst.setInt(3, userId);
	        pst.executeUpdate();
	        pst.close();
	        con.close();
	    }
	 
	
}
