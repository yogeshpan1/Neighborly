package com.Neighborly.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.File;
import java.io.IOException;

import com.Neighborly.dao.NewsDAO;
import com.Neighborly.model.UserModel;
import com.Neighborly.utils.FileUploadUtil;
import com.Neighborly.utils.SessionUtil;



/**
 * Servlet implementation class CreateNewsServlet
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/createnews" })
@MultipartConfig(
	    fileSizeThreshold = 1024 * 1024 * 2,
	    maxFileSize = 1024 * 1024 * 10,
	    maxRequestSize = 1024 * 1024 * 50
	)
public class CreateNewsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static final String UPLOAD_DIR = System.getProperty("user.home") + File.separator + "news_uploads";

       
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
	        String imageName = null;
	        
	        Part filePart = request.getPart("newsImage");
	        
	        if (filePart != null && filePart.getSize() > 0) {
	        	
	            if (FileUploadUtil.isImage(filePart)) {
	            	
	                String extension = FileUploadUtil.getFileExtension(filePart.getSubmittedFileName());
	                
	                imageName = System.currentTimeMillis() + extension;
	                
	                FileUploadUtil.saveFile(filePart, UPLOAD_DIR, imageName);
	                
	            }
	        } 
	        try {
	        	UserModel user = (UserModel) SessionUtil.getAttribute(request, "user");
	        	if (user == null) {
	        	    response.sendRedirect(request.getContextPath() + "/login");
	        	    return;
	        	}
	        	
	        	int userId = user.getUserId();
	        	
	            NewsDAO dao = new NewsDAO();
	            
	            dao.insertNews(userId, title.trim(), content, category, imageName);

	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        response.sendRedirect(request.getContextPath() + "/newslist");
	}

}
