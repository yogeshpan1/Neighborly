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
	 
	   public List<Poll> getAllPolls() throws Exception
	   {
	        List<Poll> polls = new ArrayList<>();
	        
	        Connection con = DBconfig.getConnection();
	        
	        String sql = "SELECT * FROM Polls";
	        
	        PreparedStatement pst = con.prepareStatement(sql);
	        
	        ResultSet rs = pst.executeQuery();
	        
	        while (rs.next()) 
	        {
	            Poll p = new Poll();
	            
	            p.setPollId(rs.getInt("Poll_ID"));
	            p.setQuestion(rs.getString("Poll_Question"));
	            p.setStatus(rs.getString("Poll_Status"));
	            p.setCreatedAt(rs.getString("Poll_CreatedAt"));
	            p.setUserId(rs.getInt("User_ID"));
	            polls.add(p);
	        }
	        
	        rs.close();
	        pst.close();
	        con.close();
	        return polls;
	    }
	 
	 
	
}
