package com.Neighborly.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.Neighborly.model.NewsModel;
import com.Neighborly.utils.DBconfig;

public class NewsDAO {
	
	public void insertNews(int userId, String title, String content, String category) throws Exception {
	    Connection con = DBconfig.getConnection();
	    
	    String sql = "INSERT INTO news (user_id, news_title, news_content, news_category) VALUES (?, ?, ?, ?)";
	    
	    PreparedStatement pst = con.prepareStatement(sql);
	    
	    pst.setInt(1, userId);
	    pst.setString(2, title);
	    pst.setString(3, content);
	    pst.setString(4, category);
	    pst.executeUpdate();
	    pst.close();
	    con.close();
	}	
	
	public List<NewsModel> getAllNews() throws Exception {

	    List<NewsModel> newsList = new ArrayList<>();

	    Connection con = DBconfig.getConnection();

	    String sql = "SELECT news_id, user_id, news_title, news_content, news_category, news_created_at FROM news";

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
