package com.Neighborly.controller;

import com.Neighborly.model.UserModel;
import java.io.IOException;
import java.util.List;
import com.Neighborly.dao.ReportDAO;
import com.Neighborly.model.ReportModel;
import com.Neighborly.service.ReportService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(asyncSupported = true, urlPatterns = { "/report" })
public class ReportServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public ReportServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            ReportDAO dao = new ReportDAO();
            List<ReportModel> reports = dao.getAllReports();

            int pendingCount = 0;
            for (ReportModel r : reports) {
                if ("pending".equals(r.getStatus())) {
                    pendingCount++;
                }
            }

            request.setAttribute("reports", reports);
            request.setAttribute("totalReports", reports.size());
            request.setAttribute("pendingReports", pendingCount);
            request.getRequestDispatcher("/WEB-INF/Pages/report.jsp")
                   .forward(request, response);
        } catch (Exception e) {
            throw new ServletException("Database error", e);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            ReportDAO dao = new ReportDAO();
            ReportService service = new ReportService();
            List<ReportModel> reports = dao.getAllReports();

            int pendingCount = 0;
            for (ReportModel r : reports) {
                if ("pending".equals(r.getStatus())) {
                    pendingCount++;
                }
            }

            request.setAttribute("reports", reports);
            request.setAttribute("totalReports", reports.size());
            request.setAttribute("pendingReports", pendingCount);

            String title       = request.getParameter("title");
            String category    = request.getParameter("category");
            String location    = request.getParameter("location");
            String description = request.getParameter("description");

            if (title != null && category != null && location != null && description != null) {
                String validation = service.validateReport(title, category, location, description);

                if (!"Success".equals(validation)) {
                    request.setAttribute("errorMessage", validation);
                } else {
                    HttpSession session = request.getSession();
                    UserModel user = (UserModel) session.getAttribute("user");
                    int userId = user.getUserId();
                    dao.insertReport(userId, title.trim(), category.trim(),
                                     location.trim(), description.trim(), null);
                    request.setAttribute("successMessage", "Report submitted successfully");
                }
            }

            request.getRequestDispatcher("/WEB-INF/Pages/report.jsp")
                   .forward(request, response);
        } catch (Exception e) {
            throw new ServletException("Database error", e);
        }
    }
}