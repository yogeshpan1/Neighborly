package com.Neighborly.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/polls")
public class PollsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        // Updated path to match your folder structure
    	request.setAttribute("activePage", "Polls");
        request.getRequestDispatcher("/WEB-INF/Pages/Polls.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        request.setCharacterEncoding("UTF-8");

        String pollId = request.getParameter("pollId"); 
        String voteValue = request.getParameter("vote"); 

        if (pollId != null && voteValue != null) {
            // Log for debugging
            System.out.println("Processing Vote: " + voteValue + " for Poll: " + pollId);
            
            // TODO: Add database logic here (e.g., pollDAO.saveVote(pollId, voteValue))
        }

        // Redirect back to GET to refresh page safely
        response.sendRedirect(request.getContextPath() + "/polls");
    }
}