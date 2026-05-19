package com.Neighborly.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

<<<<<<< HEAD
import com.Neighborly.model.NewModel;
import com.Neighborly.utils.DBconfig;

public class NewsDAO {
	public void insertNews(int adminId, String title, String content) throws Exception {
		Connection con = DBconfig.getConnection();

		String sql = "INSERT INTO news (admin_id, news_title, news_content) VALUES (?, ?, ?)";

		PreparedStatement pst = con.prepareStatement(sql);
		pst.setInt(1, adminId);
		pst.setString(2, title);
		pst.setString(3, content);
		pst.executeUpdate();
		pst.close();
		con.close();
	}

	public List<NewModel> getAllNews() throws Exception {

		List<NewModel> newsList = new ArrayList<>();

		Connection con = DBconfig.getConnection();

		String sql = "SELECT news_id, admin_id, news_title, news_content, news_created_at FROM news";

		PreparedStatement pst = con.prepareStatement(sql);

		ResultSet rs = pst.executeQuery();

		while (rs.next()) {

			NewModel n = new NewModel();
			n.setNewsId(rs.getInt("news_id"));
			n.setAdminId(rs.getInt("admin_id"));
			n.setNewsTitle(rs.getString("news_title"));
			n.setNewsDescription(rs.getString("news_content"));
			n.setPostedAt(rs.getString("news_created_at"));
			newsList.add(n);
		}

		rs.close();
		pst.close();
		con.close();
		return newsList;
	}

	public void updateNews(int newsId, String title, String content) throws Exception {

		Connection con = DBconfig.getConnection();

		String sql = "UPDATE news SET news_title = ?, news_content = ? WHERE news_id = ?";

		PreparedStatement pst = con.prepareStatement(sql);

		pst.setString(1, title);
		pst.setString(2, content);
		pst.setInt(3, newsId);
		pst.executeUpdate();
		pst.close();
		con.close();
	}
=======
import com.Neighborly.model.NewsModel;
import com.Neighborly.utils.DBconfig;

public class NewsDAO {
	
	public void insertNews(int userId, String title, String content, String category, String imageName) throws Exception {
	    
		Connection con = DBconfig.getConnection();
		
	    String sql = "INSERT INTO news (user_id, news_title, news_content, news_category, news_image) VALUES (?, ?, ?, ?, ?)";
	    
	    PreparedStatement pst = con.prepareStatement(sql);
	    
	    pst.setInt(1, userId);
	    pst.setString(2, title);
	    pst.setString(3, content);
	    pst.setString(4, category);
	    pst.setString(5, imageName);
	    pst.executeUpdate();
	    pst.close();
	    con.close();
	}	
	
	public List<NewsModel> getAllNews() throws Exception {

	    List<NewsModel> newsList = new ArrayList<>();

	    Connection con = DBconfig.getConnection();
	    
	    String sql = "SELECT news_id, user_id, news_title, news_content, news_category, news_image, news_created_at FROM news ORDER BY news_created_at DESC";

	    PreparedStatement pst = con.prepareStatement(sql);

	    ResultSet rs = pst.executeQuery();

	    while (rs.next()) {

	        NewsModel n = new NewsModel();

	        n.setNewsId(rs.getInt("news_id"));
	        n.setAdminId(rs.getInt("user_id"));
	        n.setNewsTitle(rs.getString("news_title"));
	        n.setNewsDescription(rs.getString("news_content"));
	        n.setNewsCategory(rs.getString("news_category"));
	        n.setPostedAt(rs.getString("news_created_at"));
	        n.setNewsImage(rs.getString("news_image"));
	        newsList.add(n);
	    }

	    rs.close();
	    pst.close();
	    con.close();
	    return newsList;
	}

	public void updateNews(int newsId, String title, String content, String category) throws Exception {

	    Connection con = DBconfig.getConnection();

	    String sql = "UPDATE news SET news_title = ?, news_content = ?, news_category = ? WHERE news_id = ?";

	    PreparedStatement pst = con.prepareStatement(sql);

	    pst.setString(1, title);
	    pst.setString(2, content);
	    pst.setString(3, category);
	    pst.setInt(4, newsId);
	    pst.executeUpdate();
	    pst.close();
	    con.close();
	}


	public boolean deleteNews(int newsId) throws Exception {
		Connection con = DBconfig.getConnection();

		String sql = "DELETE FROM news WHERE news_id = ?";

		PreparedStatement pst = con.prepareStatement(sql);

		pst.setInt(1, newsId);

		int rowsAffected = pst.executeUpdate();

		pst.close();
		con.close();

		return rowsAffected > 0;

	}

}
