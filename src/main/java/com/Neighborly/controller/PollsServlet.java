package com.Neighborly.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation for managing Polls
 */
@WebServlet("/polls")
public class PollsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        // Forwarding to the JSP location
        // Note: Make sure your JSP file name is exactly 'Polls.jsp' (case-sensitive)
        request.getRequestDispatcher("/WEB-INF/Pages/Polls.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        // Setting encoding to handle special characters if necessary
        request.setCharacterEncoding("UTF-8");

        // These parameters should match the 'name' attributes in your JSP form inputs
        String pollId = request.getParameter("pollId"); 
        String voteValue = request.getParameter("vote"); // e.g., "Yes", "No", or specific price

        if (pollId != null && !pollId.isEmpty() && voteValue != null) {
            // Logic for database updates would go here
            System.out.println("--- Vote Received ---");
            System.out.println("Poll ID: " + pollId);
            System.out.println("Selection: " + voteValue);
        } else {
            System.out.println("Warning: Received a poll submission with missing data.");
        }

        // PRG Pattern: Post-Redirect-Get to avoid duplicate submissions on page refresh
        response.sendRedirect(request.getContextPath() + "/polls");
    }
}