package com.Neighborly.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

import com.Neighborly.dao.FineDAO;
import com.Neighborly.dao.PollDAO;
import com.Neighborly.dao.ReportDAO;
import com.Neighborly.model.FineModel;
import com.Neighborly.model.PollModel;
import com.Neighborly.model.ReportModel;
import com.Neighborly.utils.SessionUtil;

@WebServlet(asyncSupported = true, urlPatterns = { "/home" })
public class HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public HomeServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setAttribute("activePage", "Home");

		Integer userId = (Integer) SessionUtil.getAttribute(request, "userId");

		if (userId != null) {
			try {
				// My Complaints - latest 2 for this user
				ReportDAO reportDAO = new ReportDAO();
				List<ReportModel> allReports = reportDAO.getAllReports();
				List<ReportModel> myReports = new java.util.ArrayList<>();
				for (ReportModel r : allReports) {
					if (r.getUserId() == userId) {
						myReports.add(r);
						if (myReports.size() == 2)
							break;
					}
				}
				request.setAttribute("myReports", myReports);

				// Active Poll - 1 most recent
				PollDAO pollDAO = new PollDAO();
				List<PollModel> activePolls = pollDAO.getAllPolls();
				PollModel featuredPoll = activePolls.isEmpty() ? null : activePolls.get(0);
				request.setAttribute("featuredPoll", featuredPoll);

				// Pending Fine - 1 most recent unpaid
				FineDAO fineDAO = new FineDAO();
				List<FineModel> userFines = fineDAO.getFinesByUser(userId);
				FineModel pendingFine = null;
				for (FineModel f : userFines) {
					if ("Pending".equalsIgnoreCase(f.getStatus())) {
						pendingFine = f;
						break;
					}
				}
				request.setAttribute("pendingFine", pendingFine);

			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		request.getRequestDispatcher("/WEB-INF/Pages/home.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}