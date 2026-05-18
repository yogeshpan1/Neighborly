package com.Neighborly.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.Neighborly.model.ReportModel;
import com.Neighborly.utils.DBconfig;

public class ReportDAO {

    public void insertReport(int userId, String title, String category,
                             String location, String description, String reportPhoto)
            throws Exception {
        Connection con = DBconfig.getConnection();
        String sql = "INSERT INTO issueReports (user_id, title, category, location, description, reportPhoto) " +
                     "VALUES (?, ?, ?, ?, ?, ?)";
        PreparedStatement pst = con.prepareStatement(sql);
        pst.setInt(1, userId);
        pst.setString(2, title);
        pst.setString(3, category);
        pst.setString(4, location);
        pst.setString(5, description);
        pst.setString(6, reportPhoto);   
        pst.executeUpdate();
        pst.close();
        con.close();
    }

    public List<ReportModel> getAllReports() throws Exception {
        List<ReportModel> reports = new ArrayList<>();
        Connection con = DBconfig.getConnection();
        String sql = "SELECT report_id, user_id, title, category, location, description, " +
                "reportPhoto, status, created_at FROM issueReports ORDER BY created_at DESC";

        PreparedStatement pst = con.prepareStatement(sql);
        ResultSet rs = pst.executeQuery();
        while (rs.next()) {
            ReportModel r = new ReportModel();
            r.setReportId(rs.getInt("report_id"));
            r.setUserId(rs.getInt("user_id"));
            r.setTitle(rs.getString("title"));
            r.setCategory(rs.getString("category"));
            r.setLocation(rs.getString("location"));
            r.setDescription(rs.getString("description"));
            r.setReportPhoto(rs.getString("reportPhoto"));
            r.setStatus(rs.getString("status"));
            r.setCreatedAt(rs.getString("created_at"));
            reports.add(r);
        }
        rs.close();
        pst.close();
        con.close();
        return reports;
    }
}