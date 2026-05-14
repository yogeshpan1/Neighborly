package com.Neighborly.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.Neighborly.dao.JobDAO;

/**
 * Servlet implementation class CreateJobServlet
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/createjob" })
public class CreateJobServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final int DEFAULT_ADMIN_USER_ID = 1;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CreateJobServlet() {
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
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String jobTitle = request.getParameter("job_title");
		String department = request.getParameter("department");
		String jobDescription = request.getParameter("job_description");
		String contactEmail = request.getParameter("contact_email");
		String contactPhone = request.getParameter("contact_phone");

		if (jobTitle == null || jobTitle.trim().isEmpty()) {
			response.sendRedirect(request.getContextPath() + "/joblisting");
			return;
		}

		try {
			JobDAO dao = new JobDAO();
			dao.insertJob(jobTitle.trim(), department, jobDescription, contactEmail, contactPhone, "Active",
					DEFAULT_ADMIN_USER_ID);
		} catch (Exception e) {
			e.printStackTrace();
		}

		response.sendRedirect(request.getContextPath() + "/joblisting");

	}

}
