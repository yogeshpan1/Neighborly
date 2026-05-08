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

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("activePage", "Documents");
        request.getRequestDispatcher("/WEB-INF/Pages/documents.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String docType = request.getParameter("docType");
        String docId = request.getParameter("docId");

        boolean isSuccess = false;
        String message = "";

        // Logic processing
        if (docId != null && !docId.trim().isEmpty()) {
            isSuccess = true;
            message = "Details for " + docType + " (ID: " + docId + ") verified successfully.";
        } else {
            isSuccess = false;
            message = "Error: Please enter a valid ID.";
        }

        request.setAttribute("status", isSuccess ? "success" : "error");
        request.setAttribute("feedbackMsg", message);
        
        doGet(request, response);
    }
}