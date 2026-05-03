package com.Neighborly.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.Neighborly.model.PollModel;
import com.Neighborly.utils.DBconfig;

public class PollDAO {

	public void insertPoll(String question, String description, String option1, String option2, String status,
			int adminId) throws Exception {
		Connection con = DBconfig.getConnection();
		String sql = "INSERT INTO polls (Poll_Question, Poll_Description, Poll_Option1, Poll_Option2, Poll_Status, Admin_ID) VALUES (?, ?, ?, ?, ?, ?)";
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setString(1, question);
		pst.setString(2, description);
		pst.setString(3, option1);
		pst.setString(4, option2);
		pst.setString(5, status);
		pst.setInt(6, adminId);
		pst.executeUpdate();
		pst.close();
		con.close();
	}

	public List<PollModel> getAllPolls() throws Exception {
		List<PollModel> polls = new ArrayList<>();

		Connection con = DBconfig.getConnection();

		String sql = "SELECT Poll_ID, Poll_Question, Poll_Description, Poll_Option1, Poll_Option2, Poll_Status, Poll_CreatedAt, Admin_ID FROM polls WHERE Poll_Status = 'Active'";

		PreparedStatement pst = con.prepareStatement(sql);

		ResultSet rs = pst.executeQuery();

		while (rs.next()) {
			PollModel p = new PollModel();

			p.setPollId(rs.getInt("Poll_ID"));
			p.setQuestion(rs.getString("Poll_Question"));
			p.setDescription(rs.getString("Poll_Description"));
			p.setOption1(rs.getString("Poll_Option1"));
			p.setOption2(rs.getString("Poll_Option2"));
			p.setStatus(rs.getString("Poll_Status"));
			p.setCreatedAt(rs.getString("Poll_CreatedAt"));
			p.setAdminId(rs.getInt("Admin_ID"));
			polls.add(p);
		}

		rs.close();
		pst.close();
		con.close();
		return polls;
	}

	public void updatePoll(int pollId, String question, String description, String option1, String option2)
			throws Exception {
		Connection con = DBconfig.getConnection();
		String sql = "UPDATE polls SET Poll_Question = ?, Poll_Description = ?, Poll_Option1 = ?, Poll_Option2 = ? WHERE Poll_ID = ?";
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setString(1, question);
		pst.setString(2, description);
		pst.setString(3, option1);
		pst.setString(4, option2);
		pst.setInt(5, pollId);
		pst.executeUpdate();
		pst.close();
		con.close();
	}

	public boolean deletePoll(int pollId) throws Exception {
		String sql = "UPDATE polls SET Poll_Status = 'Inactive' WHERE Poll_ID = ?";

		Connection con = DBconfig.getConnection();

		PreparedStatement pst = con.prepareStatement(sql);

		pst.setInt(1, pollId);

		int rowsAffected = pst.executeUpdate();

		return rowsAffected > 0;

	}

}
