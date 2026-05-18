package com.Neighborly.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import com.Neighborly.dao.ReportDAO;
import com.Neighborly.model.ReportModel;

/**
 * Servlet implementation class ReportIssue
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/reportissue" })
public class ReportManagementServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ReportManagementServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {

			ReportDAO dao = new ReportDAO();

			List<ReportModel> reports = dao.getAllReports();

			request.setAttribute("reports", reports);

			int totalReports = reports.size();

			int resolvedReports = 0;
			int pendingReports = 0;
			int inProgressReports = 0;

			for (ReportModel r : reports) {

				if (r.getStatus().equals("resolved")) {
					resolvedReports++;
				}

				else if (r.getStatus().equals("pending")) {
					pendingReports++;
				}

				else if (r.getStatus().equals("in_progress")) {
					inProgressReports++;
				}
			}

			request.setAttribute("totalReports", totalReports);

			request.setAttribute("resolvedReports", resolvedReports);

			request.setAttribute("pendingReports", pendingReports);

			request.setAttribute("inProgressReports", inProgressReports);

			request.getRequestDispatcher("/WEB-INF/Pages/ReportIssue.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {

			ReportDAO dao = new ReportDAO();

			int reportId = Integer.parseInt(request.getParameter("reviewIssueId"));

			ReportModel selectedIssue = dao.getReportById(reportId);

			List<ReportModel> reports = dao.getAllReports();
			
			String reviewRequestId = request.getParameter("reviewIssueId");

			if (reviewRequestId != null && !reviewRequestId.isEmpty()) {

				int reviewId = Integer.parseInt(reviewRequestId);

				for (ReportModel r : reports) {

					if (r.getReportId() == reviewId) {

						request.setAttribute("selectedIssue", r);

						break;
					}
				}
			}

			request.setAttribute("reports", reports);

			request.getRequestDispatcher("/WEB-INF/Pages/ReportIssue.jsp").forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
