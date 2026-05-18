package com.Neighborly.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.Neighborly.model.NoticeModel;
import com.Neighborly.utils.DBconfig;

public class NoticeDAO {
	public void insertNotice(int userId, String title, String category, String description) throws Exception {
        
		Connection con = DBconfig.getConnection();
        
        String sql = "INSERT INTO notices (user_id, notice_title, notice_category, notice_description) VALUES (?, ?, ?, ?)";
        
        PreparedStatement pst = con.prepareStatement(sql);
        
        pst.setInt(1, userId);
        pst.setString(2, title);
        pst.setString(3, category);
        pst.setString(4, description);
        pst.executeUpdate();
        pst.close();
        con.close();
    }

    public List<NoticeModel> getAllNotices() throws Exception {
        List<NoticeModel> notices = new ArrayList<>();
        
        Connection con = DBconfig.getConnection();
        
        String sql = "SELECT notice_id, user_id, notice_title, notice_category, notice_description, notice_posted_at FROM notices ORDER BY notice_posted_at DESC";
        
        PreparedStatement pst = con.prepareStatement(sql);
        
        ResultSet rs = pst.executeQuery();

        while (rs.next()) {
            NoticeModel n = new NoticeModel();
            
            n.setNoticeId(rs.getInt("notice_id"));
            n.setUserId(rs.getInt("user_id"));
            n.setNoticeTitle(rs.getString("notice_title"));
            n.setNoticeCategory(rs.getString("notice_category"));
            n.setNoticeDescription(rs.getString("notice_description"));
            n.setCreatedAt(rs.getString("notice_posted_at"));
            notices.add(n);
        }

        rs.close();
        pst.close(); 
        con.close();
        return notices;
    }

    public void updateNotice(int noticeId, String title, String category, String description) throws Exception {
        Connection con = DBconfig.getConnection();
        
        String sql = "UPDATE notices SET notice_title = ?, notice_category = ?, notice_description = ? WHERE notice_id = ?";
        
        PreparedStatement pst = con.prepareStatement(sql);
        
        pst.setString(1, title);
        pst.setString(2, category);
        pst.setString(3, description);
        pst.setInt(4, noticeId);
        pst.executeUpdate();
        pst.close();
        con.close();
    }

    public boolean deleteNotice(int noticeId) throws Exception {
        
    	Connection con = DBconfig.getConnection();
    	
        String sql = "DELETE FROM notices WHERE notice_id = ?";
        
        PreparedStatement pst = con.prepareStatement(sql);
        
        pst.setInt(1, noticeId);
        
        int rows = pst.executeUpdate();
        
        pst.close();
        
        con.close();
        
        return rows > 0;
    }
}

