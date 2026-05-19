package com.Neighborly.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import com.Neighborly.dao.UserDAO;
import com.Neighborly.model.UserModel;

/**
 * Servlet implementation class CitizenManagement
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/citizenlist" })
public class CitizenManagementServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CitizenManagementServlet() {
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

			UserDAO dao = new UserDAO();

			List<UserModel> citizens = dao.getAllUsers();

			request.setAttribute("citizens", citizens);
			request.setAttribute("totalCitizens", citizens.size());

			int activeCitizens = 0;
			int suspendedCitizens = 0;

			for (UserModel citizen : citizens) {
				String Status = citizen.getStatus();

				if ("Active".equalsIgnoreCase(Status)) {
					activeCitizens++;
				} else {
					suspendedCitizens++;
				}
			}
			
			request.setAttribute("activeCitizens", activeCitizens);
			request.setAttribute("suspendedCitizens", suspendedCitizens);

			String previewUserId = request.getParameter("userId");

			if (previewUserId != null && !previewUserId.isEmpty()) {

				int userId = Integer.parseInt(previewUserId);

				UserModel selected = dao.getUserById(userId);

				request.setAttribute("selectedCitizen", selected);
			}

			String openSuspendId = request.getParameter("openSuspendId");

			if (openSuspendId != null && !openSuspendId.isEmpty()) {

				int userId = Integer.parseInt(openSuspendId);

				UserModel selected = dao.getUserById(userId);

				request.setAttribute("selectedCitizen", selected);

				request.setAttribute("openSuspendId", openSuspendId);
			}

			request.getRequestDispatcher("/WEB-INF/Pages/CitizenManagement.jsp").forward(request, response);
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
