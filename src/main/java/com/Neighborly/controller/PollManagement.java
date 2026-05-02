package com.Neighborly.controller;

import java.io.IOException;
import java.util.Collections;
import java.util.List;

import com.Neighborly.dao.PollDAO;
import com.Neighborly.model.PollModel;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PollManagement
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/pollmanagement" })
public class PollManagement extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PollManagement() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        try {
            PollDAO dao = new PollDAO();
            List<PollModel> polls = dao.getAllPolls();

            int activeCount = 0;
            for (PollModel p : polls) {
                if ("Active".equals(p.getStatus())) {
                    activeCount++;
                }
            }

            request.setAttribute("polls", polls);
            request.setAttribute("totalPolls", polls.size());
            request.setAttribute("activePolls", activeCount);

            request.getRequestDispatcher("/WEB-INF/Pages/PollManagement.jsp").forward(request, response);

        } catch (Exception e) 
        {
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
