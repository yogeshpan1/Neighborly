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

	public void insertPoll(String question, String description, String option1, String option2, String option3, String option4, String status, int userId) throws Exception {
        Connection con = DBconfig.getConnection();
        String sql = "INSERT INTO polls (Poll_Question, Poll_Description, Poll_Option1, Poll_Option2, Poll_Option3, Poll_Option4, Poll_Status, User_ID) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        PreparedStatement pst = con.prepareStatement(sql);
        pst.setString(1, question);
        pst.setString(2, description);
        pst.setString(3, option1);
        pst.setString(4, option2);
        pst.setString(5, option3);
        pst.setString(6, option4);
        pst.setString(7, status);
        pst.setInt(8, userId);
        pst.executeUpdate();
        pst.close();
        con.close();
    }

    public void updatePoll(int pollId, String question, String description, String option1, String option2, String option3, String option4) throws Exception {
        Connection con = DBconfig.getConnection();
        String sql = "UPDATE polls SET Poll_Question = ?, Poll_Description = ?, Poll_Option1 = ?, Poll_Option2 = ?, Poll_Option3 = ?, Poll_Option4 = ? WHERE Poll_ID = ?";
        PreparedStatement pst = con.prepareStatement(sql);
        pst.setString(1, question);
        pst.setString(2, description);
        pst.setString(3, option1);
        pst.setString(4, option2);
        pst.setString(5, option3);
        pst.setString(6, option4);
        pst.setInt(7, pollId);
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
            p.setDescription(rs.getString("Poll_Description"));
            p.setOption1(rs.getString("Poll_Option1"));
            p.setOption2(rs.getString("Poll_Option2"));
            p.setOption3(rs.getString("Poll_Option3"));
            p.setOption4(rs.getString("Poll_Option4"));
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
