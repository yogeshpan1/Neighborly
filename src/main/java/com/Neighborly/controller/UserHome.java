package com.Neighborly.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class FeedServlet
 */
<<<<<<< HEAD:src/main/java/com/Neighborly/controller/FeedServlet.java
@WebServlet("/feed")  // Removed unnecessary asyncSupported
public class FeedServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FeedServlet() {
        super();
    }
    
    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        // Forward to JSP - make sure path matches EXACTLY with your file structure
        request.getRequestDispatcher("/WEB-INF/Pages/feed.jsp").forward(request, response);
    }
    
    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        doGet(request, response);
    }
}
=======
@WebServlet(asyncSupported = true, urlPatterns = { "/home" })
public class UserHome extends HttpServlet {
	private static final long serialVersionUID = 1L;
	    
	 /**
	  * @see HttpServlet#HttpServlet()
	  */
	 public UserHome() {
	     super();
	     // TODO Auto-generated constructor stub
	 }
	
		/**
		 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
		 */
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			response.getWriter().append("Served at: ").append(request.getContextPath());
			request.getRequestDispatcher("/WEB-INF/Pages/UserHome.jsp").forward(request, response);
		}
	
		/**
		 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
		 */
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			doGet(request, response);
		}
	
	}
>>>>>>> origin/User-Home:src/main/java/com/Neighborly/controller/UserHome.java
