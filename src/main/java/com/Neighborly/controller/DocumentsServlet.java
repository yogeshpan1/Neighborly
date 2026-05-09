package com.Neighborly.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/documents")
public class DocumentsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("activePage", "Documents");
        request.getRequestDispatcher("/WEB-INF/Pages/documents.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String docId = request.getParameter("docId");
        String docType = request.getParameter("docType");
        // Simple validation without returning a feedback message
        if (docId != null && !docId.trim().isEmpty()) {
            // Process verification logic here (e.g., save to DB or check API)
        	System.out.println("Document Type: " + docType);
            System.out.println("Document ID: " + docId);
            request.setAttribute("successMessage","Verification Successful");

        }
        else {

            request.setAttribute("errorMessage",  "Please enter document ID");
        }


        // Just reload the page
        doGet(request, response);
    }
}