package com.Neighborly.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.Neighborly.model.FeedModel;
import com.Neighborly.utils.DBconfig;

public class FeedDAO {

	// CREATE POST

	public void createPost(int userId, String content, String postType, String imageFile) throws Exception {

		String sql = "INSERT INTO feed_posts (user_id, post_content, post_type, post_image) " + "VALUES (?, ?, ?, ?)";

		Connection con = DBconfig.getConnection();
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setInt(1, userId);
		pst.setString(2, content);
		pst.setString(3, postType);
		pst.setString(4, imageFile);
		pst.executeUpdate();
		pst.close();
		con.close();
	}

	// GET ALL POSTS

	public List<FeedModel> getAllPosts() throws Exception {

		List<FeedModel> posts = new ArrayList<>();

		String sql = "SELECT fp.post_id, fp.user_id, u.username, u.image AS user_image, "
				+ "       fp.post_content, fp.post_type, fp.post_image, fp.post_created_at " + "FROM feed_posts fp "
				+ "JOIN users u ON fp.user_id = u.user_id " + "ORDER BY fp.post_created_at DESC";

		Connection con = DBconfig.getConnection();
		PreparedStatement pst = con.prepareStatement(sql);
		ResultSet rs = pst.executeQuery();

		while (rs.next()) {
			FeedModel post = new FeedModel();
			post.setPostId(rs.getInt("post_id"));
			post.setUserId(rs.getInt("user_id"));
			post.setUserName(rs.getString("username"));
			post.setUserImage(rs.getString("user_image"));
			post.setContent(rs.getString("post_content"));
			post.setPostType(rs.getString("post_type"));
			post.setCreatedAt(rs.getString("post_created_at"));
			post.setPostTime(formatTime(rs.getTimestamp("post_created_at")));

			String img = rs.getString("post_image");
			if (img != null && img.contains(".")) {
				img = img.substring(0, img.lastIndexOf('.'));
			}
			post.setPostImage(img);

			posts.add(post);
		}

		rs.close();
		pst.close();
		con.close();

		return posts;
	}

	// FORMAT TIMESTAMP

	private String formatTime(java.sql.Timestamp ts) {
		if (ts == null)
			return "Just now";
		long diff = System.currentTimeMillis() - ts.getTime();
		long mins = diff / 60000;
		long hours = mins / 60;
		long days = hours / 24;
		if (mins < 1)
			return "Just now";
		if (mins < 60)
			return mins + "m ago";
		if (hours < 24)
			return hours + "h ago";
		if (days < 7)
			return days + "d ago";
		return new java.text.SimpleDateFormat("MMM d").format(ts);
	}

	// GET VOTE

	public String getUserVote(int postId, int userId) throws Exception {

		String sql = "SELECT vote_type FROM feed_post_votes " + "WHERE post_id = ? AND user_id = ?";

		Connection con = DBconfig.getConnection();
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setInt(1, postId);
		pst.setInt(2, userId);
		ResultSet rs = pst.executeQuery();

		String result = null;
		if (rs.next()) {
			result = rs.getString("vote_type");
		}

		rs.close();
		pst.close();
		con.close();

		return result;
	}

	// VOTE

	public void vote(int postId, int userId, String voteType) throws Exception {

		String sql = "INSERT INTO feed_post_votes (post_id, user_id, vote_type) " + "VALUES (?, ?, ?) "
				+ "ON DUPLICATE KEY UPDATE vote_type = VALUES(vote_type)";

		Connection con = DBconfig.getConnection();
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setInt(1, postId);
		pst.setInt(2, userId);
		pst.setString(3, voteType);
		pst.executeUpdate();
		pst.close();
		con.close();
	}

	// UNVOTE

	public void unvote(int postId, int userId) throws Exception {

		String sql = "DELETE FROM feed_post_votes " + "WHERE post_id = ? AND user_id = ?";

		Connection con = DBconfig.getConnection();
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setInt(1, postId);
		pst.setInt(2, userId);
		pst.executeUpdate();
		pst.close();
		con.close();
	}

	// VOTE COUNT

	public int[] getVoteCounts(int postId) throws Exception {

		String sql = "SELECT vote_type, COUNT(*) AS cnt " + "FROM feed_post_votes WHERE post_id = ? "
				+ "GROUP BY vote_type";

		Connection con = DBconfig.getConnection();
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setInt(1, postId);
		ResultSet rs = pst.executeQuery();

		int up = 0, down = 0;
		while (rs.next()) {
			if ("up".equals(rs.getString("vote_type")))
				up = rs.getInt("cnt");
			else
				down = rs.getInt("cnt");
		}

		rs.close();
		pst.close();
		con.close();

		return new int[] { up, down };
	}

	// SAVE

	public boolean toggleSave(int postId, int userId) throws Exception {
		if (isSaved(postId, userId)) {
			unsavePost(postId, userId);
			return false;
		} else {
			savePost(postId, userId);
			return true;
		}
	}

	public boolean isSaved(int postId, int userId) throws Exception {

		String sql = "SELECT 1 FROM feed_saved_posts " + "WHERE post_id = ? AND user_id = ?";

		Connection con = DBconfig.getConnection();
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setInt(1, postId);
		pst.setInt(2, userId);
		ResultSet rs = pst.executeQuery();

		boolean found = rs.next();

		rs.close();
		pst.close();
		con.close();

		return found;
	}

	private void savePost(int postId, int userId) throws Exception {

		String sql = "INSERT IGNORE INTO feed_saved_posts (post_id, user_id) " + "VALUES (?, ?)";

		Connection con = DBconfig.getConnection();
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setInt(1, postId);
		pst.setInt(2, userId);
		pst.executeUpdate();
		pst.close();
		con.close();
	}

	private void unsavePost(int postId, int userId) throws Exception {

		String sql = "DELETE FROM feed_saved_posts " + "WHERE post_id = ? AND user_id = ?";

		Connection con = DBconfig.getConnection();
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setInt(1, postId);
		pst.setInt(2, userId);
		pst.executeUpdate();
		pst.close();
		con.close();
	}

	// GET POSTS BY USER

	public List<FeedModel> getPostsByUser(int userId) throws Exception {

		List<FeedModel> posts = new ArrayList<>();

		String sql = "SELECT fp.post_id, fp.user_id, u.username, u.image AS user_image, "
				+ "       fp.post_content, fp.post_type, fp.post_image, fp.post_created_at " + "FROM feed_posts fp "
				+ "JOIN users u ON fp.user_id = u.user_id " + "WHERE fp.user_id = ? "
				+ "ORDER BY fp.post_created_at DESC";

		Connection con = DBconfig.getConnection();
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setInt(1, userId);
		ResultSet rs = pst.executeQuery();

		while (rs.next()) {
			FeedModel post = new FeedModel();
			post.setPostId(rs.getInt("post_id"));
			post.setUserId(rs.getInt("user_id"));
			post.setUserName(rs.getString("username"));
			post.setUserImage(rs.getString("user_image"));
			post.setContent(rs.getString("post_content"));
			post.setPostType(rs.getString("post_type"));
			post.setCreatedAt(rs.getString("post_created_at"));
			post.setPostTime(formatTime(rs.getTimestamp("post_created_at")));

			String img = rs.getString("post_image");
			if (img != null && img.contains(".")) {
				img = img.substring(0, img.lastIndexOf('.'));
			}
			post.setPostImage(img);

			int[] counts = getVoteCounts(post.getPostId());
			post.setUpCount(counts[0]);
			post.setDownCount(counts[1]);

			posts.add(post);
		}

		rs.close();
		pst.close();
		con.close();

		return posts;
	}

	// GET SAVED POSTS BY USER

	public List<FeedModel> getSavedPosts(int userId) throws Exception {

		List<FeedModel> posts = new ArrayList<>();

		String sql = "SELECT fp.post_id, fp.user_id, u.username, u.image AS user_image, "
				+ "       fp.post_content, fp.post_type, fp.post_image, fp.post_created_at "
				+ "FROM feed_saved_posts sp " + "JOIN feed_posts fp ON sp.post_id = fp.post_id "
				+ "JOIN users u ON fp.user_id = u.user_id " + "WHERE sp.user_id = ? "
				+ "ORDER BY fp.post_created_at DESC";

		Connection con = DBconfig.getConnection();
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setInt(1, userId);
		ResultSet rs = pst.executeQuery();

		while (rs.next()) {
			FeedModel post = new FeedModel();
			post.setPostId(rs.getInt("post_id"));
			post.setUserId(rs.getInt("user_id"));
			post.setUserName(rs.getString("username"));
			post.setUserImage(rs.getString("user_image"));
			post.setContent(rs.getString("post_content"));
			post.setPostType(rs.getString("post_type"));
			post.setCreatedAt(rs.getString("post_created_at"));
			post.setPostTime(formatTime(rs.getTimestamp("post_created_at")));

			String img = rs.getString("post_image");
			if (img != null && img.contains(".")) {
				img = img.substring(0, img.lastIndexOf('.'));
			}
			post.setPostImage(img);

			int[] counts = getVoteCounts(post.getPostId());
			post.setUpCount(counts[0]);
			post.setDownCount(counts[1]);

			post.setSavedByUser(true);

			posts.add(post);
		}

		rs.close();
		pst.close();
		con.close();

		return posts;
	}
}
