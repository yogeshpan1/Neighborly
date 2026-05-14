package com.Neighborly.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

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

}
