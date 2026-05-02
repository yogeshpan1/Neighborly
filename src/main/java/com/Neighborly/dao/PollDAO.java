package com.Neighborly.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.Neighborly.model.PollModel;
import com.Neighborly.utils.DBconfig;

public class PollDAO 
{

	public void insertPoll(String question, String description, String options, String status, int userId) throws Exception {
	    Connection con = DBconfig.getConnection();
	    String sql = "INSERT INTO polls (Poll_Question, Poll_Description, Poll_Options, Poll_Status, User_ID) VALUES (?, ?, ?, ?, ?)";
	    PreparedStatement pst = con.prepareStatement(sql);
	    pst.setString(1, question);
	    pst.setString(2, description);
	    pst.setString(3, options);
	    pst.setString(4, status);
	    pst.setInt(5, userId);
	    pst.executeUpdate();
	    pst.close();
	    con.close();
	}
	 
	   public List<PollModel> getAllPolls() throws Exception
	   {
	        List<PollModel> polls = new ArrayList<>();
	        
	        Connection con = DBconfig.getConnection();
	        
	        String sql = "SELECT * FROM polls ORDER BY Poll_ID DESC";
	        
	        PreparedStatement pst = con.prepareStatement(sql);
	        
	        ResultSet rs = pst.executeQuery();
	        
	        while (rs.next()) 
	        {
	            PollModel p = new PollModel();
	            
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
