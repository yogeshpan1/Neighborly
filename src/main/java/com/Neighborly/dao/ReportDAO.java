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
    
    public List<ReportModel> getAllReportsAdmin() throws Exception {

		List<ReportModel> reports = new ArrayList<>();

		Connection con = DBconfig.getConnection();

		String sql = "SELECT r.report_id, r.user_id, u.first_name, u.last_name, "
				+ "r.title, r.category, r.location, r.description, "
				+ "r.reportPhoto, r.status, r.created_at, r.staff_notes " + "FROM issueReports r "
				+ "JOIN users u ON r.user_id = u.user_id " + "ORDER BY r.created_at DESC";

		PreparedStatement pst = con.prepareStatement(sql);

		ResultSet rs = pst.executeQuery();

		while (rs.next()) {

			ReportModel r = new ReportModel();

			r.setReportId(rs.getInt("report_id"));
			r.setUserId(rs.getInt("user_id"));
			r.setFirstName(rs.getString("first_name"));
			r.setLastName(rs.getString("last_name"));
			r.setTitle(rs.getString("title"));
			r.setCategory(rs.getString("category"));
			r.setLocation(rs.getString("location"));
			r.setDescription(rs.getString("description"));
			r.setReportPhoto(rs.getString("reportPhoto"));
			r.setStatus(rs.getString("status"));
			r.setCreatedAt(rs.getString("created_at"));
			r.setStaffNotes(rs.getString("staff_notes"));
			reports.add(r);
		}
		rs.close();
		pst.close();
		con.close();
		return reports;
	}

	public ReportModel getReportById(int reportId) throws Exception {

		ReportModel r = null;

		Connection con = DBconfig.getConnection();

		String sql = "SELECT * FROM issueReports WHERE report_id=?";

		PreparedStatement pst = con.prepareStatement(sql);

		pst.setInt(1, reportId);

		ResultSet rs = pst.executeQuery();

		if (rs.next()) {

			r = new ReportModel();

			r.setReportId(rs.getInt("report_id"));
			r.setUserId(rs.getInt("user_id"));
			r.setTitle(rs.getString("title"));
			r.setCategory(rs.getString("category"));
			r.setLocation(rs.getString("location"));
			r.setDescription(rs.getString("description"));
			r.setReportPhoto(rs.getString("reportPhoto"));
			r.setStatus(rs.getString("status"));
			r.setCreatedAt(rs.getString("created_at"));
			
		}

		rs.close();
		pst.close();
		con.close();

		return r;
	}

	public void updateReportStatus(int reportId, String status, String notes) throws Exception {

	    Connection con = DBconfig.getConnection();

	    String sql = "UPDATE issueReports SET status=?, staff_notes=? WHERE report_id=?";

	    PreparedStatement pst = con.prepareStatement(sql);

	    pst.setString(1, status);
	    pst.setString(2, notes);
	    pst.setInt(3, reportId);

	    pst.executeUpdate();
	    pst.close();
	    con.close();
	}
	public void deleteReport(int reportId) throws Exception {

		Connection con = DBconfig.getConnection();

		String sql = "DELETE FROM issueReports WHERE report_id=?";

		PreparedStatement pst = con.prepareStatement(sql);

		pst.setInt(1, reportId);

		pst.executeUpdate();

		pst.close();
		con.close();
	}

    
    
}