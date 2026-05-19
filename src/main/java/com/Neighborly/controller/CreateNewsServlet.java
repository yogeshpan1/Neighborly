package com.Neighborly.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import com.Neighborly.dao.NewsDAO;

/**
 * Servlet implementation class CreateNewsServlet
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/createnews" })
public class CreateNewsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final int DEFAULT_ADMIN_USER_ID = 1;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateNewsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 request.setCharacterEncoding("UTF-8");
	        String title = request.getParameter("newsTitle");
	        String content = request.getParameter("newsContent");
	        String category = request.getParameter("newsCategory");
	        try {
	            NewsDAO dao = new NewsDAO();
	            dao.insertNews(DEFAULT_ADMIN_USER_ID, title.trim(), content,category);
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        response.sendRedirect(request.getContextPath() + "/newslist");
	}

}
