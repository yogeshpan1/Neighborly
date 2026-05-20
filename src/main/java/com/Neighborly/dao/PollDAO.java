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
		
		String sql = "INSERT INTO polls (poll_question, poll_description, poll_option1, poll_option2, poll_status, user_id) VALUES (?, ?, ?, ?, ?, ?)";
		
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

		String sql = "SELECT poll_id, poll_question, poll_description, poll_option1, poll_option2, poll_status, poll_created_at, user_id FROM polls WHERE poll_status = 'Active'";

		PreparedStatement pst = con.prepareStatement(sql);

		ResultSet rs = pst.executeQuery();

		while (rs.next()) {
			PollModel p = new PollModel();

			p.setPollId(rs.getInt("poll_id"));
			p.setQuestion(rs.getString("poll_question"));
			p.setDescription(rs.getString("poll_description"));
			p.setOption1(rs.getString("poll_option1"));
			p.setOption2(rs.getString("poll_option2"));
			p.setStatus(rs.getString("poll_status"));
			p.setCreatedAt(rs.getString("poll_created_at"));
			p.setUserId(rs.getInt("user_id"));
			polls.add(p);
		}

		rs.close();
		pst.close();
		con.close();
		return polls;
	}
	
	public List<PollModel> getTotalPolls() throws Exception {
		List<PollModel> polls = new ArrayList<>();

		Connection con = DBconfig.getConnection();

		String sql = "SELECT poll_id, poll_question, poll_description, poll_option1, poll_option2, poll_status, poll_created_at, user_id FROM polls";

		PreparedStatement pst = con.prepareStatement(sql);

		ResultSet rs = pst.executeQuery();

		while (rs.next()) {
			PollModel p = new PollModel();

			p.setPollId(rs.getInt("poll_id"));
			p.setQuestion(rs.getString("poll_question"));
			p.setDescription(rs.getString("poll_description"));
			p.setOption1(rs.getString("poll_option1"));
			p.setOption2(rs.getString("poll_option2"));
			p.setStatus(rs.getString("poll_status"));
			p.setCreatedAt(rs.getString("poll_created_at"));
			p.setUserId(rs.getInt("user_id"));
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
		String sql = "UPDATE polls SET poll_question = ?, poll_description = ?, poll_option1 = ?, poll_option2 = ? WHERE poll_id = ?";
		
		
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
		String sql = "UPDATE polls SET poll_status = 'Inactive' WHERE poll_id = ?";

		Connection con = DBconfig.getConnection();

		PreparedStatement pst = con.prepareStatement(sql);

		pst.setInt(1, pollId);

		int rowsAffected = pst.executeUpdate();
		pst.close();
		con.close();
		return rowsAffected > 0;

	}

	public boolean vote(int pollId, int userId, String votedOption) throws Exception {

		Connection con = DBconfig.getConnection();
		String sql = "INSERT IGNORE INTO pollVote (poll_id, user_id, voted_option) VALUES (?, ?, ?)";

		PreparedStatement pst = con.prepareStatement(sql);

		pst.setInt(1, pollId);
		pst.setInt(2, userId);
		pst.setString(3, votedOption);

		int rows = pst.executeUpdate();

		pst.close();
		con.close();
		return rows > 0;
	}

	public boolean unvote(int pollId, int userId) throws Exception {

		Connection con = DBconfig.getConnection();

		String sql = "DELETE FROM pollVote WHERE poll_id = ? AND user_id = ?";

		PreparedStatement pst = con.prepareStatement(sql);

		pst.setInt(1, pollId);
		pst.setInt(2, userId);

		int rows = pst.executeUpdate();

		pst.close();
		con.close();
		return rows > 0;
	}

	public String getUserVote(int pollId, int userId) throws Exception {

		Connection con = DBconfig.getConnection();

		String sql = "SELECT voted_option FROM pollVote WHERE poll_id = ? AND user_id = ?";

		PreparedStatement pst = con.prepareStatement(sql);

		pst.setInt(1, pollId);
		pst.setInt(2, userId);

		ResultSet rs = pst.executeQuery();

		String result = null;

		if (rs.next())
			result = rs.getString("voted_option");
		rs.close();
		pst.close();
		con.close();
		return result;
	}

	public int[] getVoteCounts(int pollId) throws Exception {

		Connection con = DBconfig.getConnection();

		String sql = "SELECT voted_option, COUNT(*) AS count FROM pollVote WHERE poll_id = ? GROUP BY voted_option";

		PreparedStatement pst = con.prepareStatement(sql);

		pst.setInt(1, pollId);

		ResultSet rs = pst.executeQuery();

		int opt1 = 0;
		int opt2 = 0;

		while (rs.next()) {
			
			String Option = rs.getString("voted_option");
			if ("option1".equals(Option)) {
				
				opt1 = rs.getInt("count");
			}

			else {
				
				opt2 = rs.getInt("count");
			}
		}
		rs.close();
		pst.close();
		con.close();
		return new int[] { opt1, opt2 };
	}

}