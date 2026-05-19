package com.Neighborly.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.Neighborly.dao.ReportDAO;

/**
 * Servlet implementation class UpdateReportManagement
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/updatereport" })
public class UpdateReportManagement extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateReportManagement() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {

            int reportId = Integer.parseInt(request.getParameter("reportId"));

            String status = request.getParameter("status");
            
            String notes = request.getParameter("notes");

            ReportDAO dao = new ReportDAO();

            dao.updateReportStatus(reportId, status, notes);

            response.sendRedirect("IssueManagement");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
