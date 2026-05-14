package com.Neighborly.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import com.Neighborly.dao.JobDAO;
import com.Neighborly.model.JobModel;

/**
 * Servlet implementation class JobListingServlet
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/joblisting" })
public class JobListingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public JobListingServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			JobDAO dao = new JobDAO();
			List<JobModel> jobs = dao.getAllJobs();
			request.setAttribute("jobs", jobs);

			String editRequestId = request.getParameter("editJobId");

			if (editRequestId != null && !editRequestId.isEmpty()) {
				int editId = Integer.parseInt(editRequestId);

				for (JobModel j : jobs) {
					if (j.getJobId() == editId) {
						request.setAttribute("editJob", j);
						break;
					}
				}
			}
			request.getRequestDispatcher("/WEB-INF/Pages/JobListing.jsp").forward(request, response);
		} catch (Exception e) {
			throw new ServletException("Database error", e);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
