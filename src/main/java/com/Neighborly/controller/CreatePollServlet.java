package com.Neighborly.controller;
import java.io.IOException;
import com.Neighborly.dao.PollDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.Neighborly.dao.PollDAO;

/**
 * Servlet implementation class CreatePollServlet
 */
@WebServlet("/createpoll")
public class CreatePollServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final int DEFAULT_ADMIN_USER_ID = 1;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreatePollServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.sendRedirect(request.getContextPath() + "/pollmanagement");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */

	    
	    @Override
	    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {

	        request.setCharacterEncoding("UTF-8");

	        String title = request.getParameter("title");
	        String description = request.getParameter("description");

	        if (title == null || title.trim().isEmpty()) 
	        {
	            response.sendRedirect(request.getContextPath() + "/pollmanagement");
	            return;
	        }

	        StringBuilder options = new StringBuilder();
	        int i = 1;
	        String opt;
	        while ((opt = request.getParameter("option_" + i)) != null)
	        {
	            if (!opt.trim().isEmpty())
	            {
	                if (options.length() > 0) options.append(",");
	                options.append(opt.trim());
	            }
	            i++;
	        }

	        try {
	            PollDAO dao = new PollDAO();
	            dao.insertPoll(title.trim(), description, options.toString(), "Active", DEFAULT_ADMIN_USER_ID);
	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	        response.sendRedirect(request.getContextPath() + "/pollmanagement");
	    }

	}


