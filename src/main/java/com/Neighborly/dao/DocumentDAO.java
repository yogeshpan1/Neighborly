package com.Neighborly.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.Neighborly.model.DocumentModel;
import com.Neighborly.utils.DBconfig;

public class DocumentDAO {

	public void applyForDocument(int userId, String documentType, String fullName, String dateOfBirth, String address,
	        String phone, String additionalInfo) throws Exception {

	    String sql = "INSERT INTO document_applications (user_id, document_type, full_name, date_of_birth, address, phone, additional_info, status) "
	            + "VALUES (?, ?, ?, ?, ?, ?, ?, 'Pending')";

	    Connection con = DBconfig.getConnection();
	    PreparedStatement pst = con.prepareStatement(sql);
	    pst.setInt(1, userId);
	    pst.setString(2, documentType);
	    pst.setString(3, fullName);
	    pst.setString(4, dateOfBirth);
	    pst.setString(5, address);
	    pst.setString(6, phone);
	    pst.setString(7, additionalInfo);
	    pst.executeUpdate();
	    pst.close();
	    con.close();
	}

    public List<DocumentModel> getDocumentsByUserId(int userId) throws Exception {

        List<DocumentModel> docs = new ArrayList<>();

        String sql = "SELECT da.document_id, da.user_id, u.first_name, u.last_name, da.document_type, da.full_name, da.address, da.phone, da.additional_info, da.status, da.submitted_at FROM document_applications da JOIN users u ON da.user_id = u.user_id WHERE da.user_id = ? ORDER BY da.submitted_at DESC";

        Connection con = DBconfig.getConnection();
        PreparedStatement pst = con.prepareStatement(sql);
        pst.setInt(1, userId);
        ResultSet rs = pst.executeQuery();

        while (rs.next()) {
        	
            DocumentModel d = new DocumentModel();
            
            d.setDocumentId(rs.getInt("document_id"));
            d.setUserId(rs.getInt("user_id"));
            d.setFirstName(rs.getString("first_name"));
            d.setLastName(rs.getString("last_name"));
            d.setDocumentType(rs.getString("document_type"));
            d.setFullName(rs.getString("full_name"));
            d.setAddress(rs.getString("address"));
            d.setPhone(rs.getString("phone"));
            d.setAdditionalInfo(rs.getString("additional_info"));
            d.setStatus(rs.getString("status"));
            d.setSubmittedAt(rs.getString("submitted_at"));
            docs.add(d);
        }

        rs.close();
        pst.close();
        con.close();
        return docs;
    }

    public List<DocumentModel> getAllDocuments() throws Exception {

        List<DocumentModel> docs = new ArrayList<>();

        String sql = "SELECT da.document_id, da.user_id, u.first_name, u.last_name, da.document_type, da.full_name, da.address, da.phone, da.additional_info, da.status, da.submitted_at FROM document_applications da JOIN users u ON da.user_id = u.user_id ORDER BY da.submitted_at DESC";

        Connection con = DBconfig.getConnection();
        PreparedStatement pst = con.prepareStatement(sql);
        ResultSet rs = pst.executeQuery();

        while (rs.next()) {
        	
            DocumentModel d = new DocumentModel();
            
            d.setDocumentId(rs.getInt("document_id"));
            d.setUserId(rs.getInt("user_id"));
            d.setFirstName(rs.getString("first_name"));
            d.setLastName(rs.getString("last_name"));
            d.setDocumentType(rs.getString("document_type"));
            d.setFullName(rs.getString("full_name"));
            d.setAddress(rs.getString("address"));
            d.setPhone(rs.getString("phone"));
            d.setAdditionalInfo(rs.getString("additional_info"));
            d.setStatus(rs.getString("status"));
            d.setSubmittedAt(rs.getString("submitted_at"));
            docs.add(d);
        }

        rs.close();
        pst.close();
        con.close();
        return docs;
    }

    public DocumentModel getDocumentByIdAndUser(int documentId, int userId) throws Exception {

        String sql = "SELECT da.document_id, da.user_id, u.first_name, u.last_name, da.document_type, da.full_name, da.address, da.phone, da.additional_info, da.status, da.submitted_at FROM document_applications da JOIN users u ON da.user_id = u.user_id WHERE da.document_id = ? AND da.user_id = ?";

        Connection con = DBconfig.getConnection();
        PreparedStatement pst = con.prepareStatement(sql);
        pst.setInt(1, documentId);
        pst.setInt(2, userId);
        ResultSet rs = pst.executeQuery();

        DocumentModel d = null;
        if (rs.next()) {
            d = new DocumentModel();
            d.setDocumentId(rs.getInt("document_id"));
            d.setUserId(rs.getInt("user_id"));
            d.setFirstName(rs.getString("first_name"));
            d.setLastName(rs.getString("last_name"));
            d.setDocumentType(rs.getString("document_type"));
            d.setFullName(rs.getString("full_name"));
            d.setAddress(rs.getString("address"));
            d.setPhone(rs.getString("phone"));
            d.setAdditionalInfo(rs.getString("additional_info"));
            d.setStatus(rs.getString("status"));
            d.setSubmittedAt(rs.getString("submitted_at"));
        }

        rs.close();
        pst.close();
        con.close();
        return d;
    }

    public DocumentModel getDocumentByTypeAndUser(String documentType, int userId) throws Exception {

        String sql = "SELECT da.document_id, da.user_id, u.first_name, u.last_name, da.document_type, da.full_name, da.address, da.phone, da.additional_info, da.status, da.submitted_at FROM document_applications da JOIN users u ON da.user_id = u.user_id WHERE da.document_type = ? AND da.user_id = ? ORDER BY da.submitted_at DESC LIMIT 1";

        Connection con = DBconfig.getConnection();
        PreparedStatement pst = con.prepareStatement(sql);
        pst.setString(1, documentType);
        pst.setInt(2, userId);
        ResultSet rs = pst.executeQuery();

        DocumentModel d = null;
        if (rs.next()) {
            d = new DocumentModel();
            d.setDocumentId(rs.getInt("document_id"));
            d.setUserId(rs.getInt("user_id"));
            d.setFirstName(rs.getString("first_name"));
            d.setLastName(rs.getString("last_name"));
            d.setDocumentType(rs.getString("document_type"));
            d.setFullName(rs.getString("full_name"));
            d.setAddress(rs.getString("address"));
            d.setPhone(rs.getString("phone"));
            d.setAdditionalInfo(rs.getString("additional_info"));
            d.setStatus(rs.getString("status"));
            d.setSubmittedAt(rs.getString("submitted_at"));
        }

        rs.close();
        pst.close();
        con.close();
        return d;
    }

    public DocumentModel getDocumentById(int documentId) throws Exception {

        String sql = "SELECT da.document_id, da.user_id, u.first_name, u.last_name, da.document_type, da.full_name, da.address, da.phone, da.additional_info, da.status, da.submitted_at "
                + "FROM document_applications da JOIN users u ON da.user_id = u.user_id "
                + "WHERE da.document_id = ?";

        Connection con = DBconfig.getConnection();
        PreparedStatement pst = con.prepareStatement(sql);
        pst.setInt(1, documentId);
        ResultSet rs = pst.executeQuery();

        DocumentModel d = new DocumentModel();
        if (rs.next()) {
            d.setDocumentId(rs.getInt("document_id"));
            d.setUserId(rs.getInt("user_id"));
            d.setFirstName(rs.getString("first_name"));
            d.setLastName(rs.getString("last_name"));
            d.setDocumentType(rs.getString("document_type"));
            d.setFullName(rs.getString("full_name"));
            d.setAddress(rs.getString("address"));
            d.setPhone(rs.getString("phone"));
            d.setAdditionalInfo(rs.getString("additional_info"));
            d.setStatus(rs.getString("status"));
            d.setSubmittedAt(rs.getString("submitted_at"));
        }

        rs.close();
        pst.close();
        con.close();
        return d;
    }

    public void approveDocument(int documentId) throws Exception {

        String sql = "UPDATE document_applications SET status = 'Approved' WHERE document_id = ?";

        Connection con = DBconfig.getConnection();
        PreparedStatement pst = con.prepareStatement(sql);
        pst.setInt(1, documentId);
        pst.executeUpdate();
        pst.close();
        con.close();
    }

    public void deleteDocument(int documentId) throws Exception {

        String sql = "DELETE FROM document_applications WHERE document_id = ?";

        Connection con = DBconfig.getConnection();
        PreparedStatement pst = con.prepareStatement(sql);
        pst.setInt(1, documentId);
        pst.executeUpdate();
        pst.close();
        con.close();
    }
}