package com.Neighborly.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import com.Neighborly.dao.CitizenDAO;
import com.Neighborly.model.CitizenModel;

/**
 * Servlet implementation class CitizenManagement
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/citizenlist" })
public class CitizenManagement extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CitizenManagement() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
            
			CitizenDAO dao = new CitizenDAO();
            
            List<CitizenModel> citizens = dao.getAllCitizens();

            request.setAttribute("citizens", citizens);
            request.setAttribute("totalCitizens", citizens.size());

            request.getRequestDispatcher("/WEB-INF/Pages/CitizenManagement.jsp").forward(request, response);
        } catch (Exception e) {
            throw new ServletException("Database error", e);
        }
    }
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
