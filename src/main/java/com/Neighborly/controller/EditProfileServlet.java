package com.Neighborly.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/editProfile")
public class EditProfileServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
       
    public EditProfileServlet() {
        super();
    }

    /**
     * Handles navigating TO the edit page (clicking the "Edit profile" link)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // This forwards the request to your JSP file
        request.getRequestDispatcher("/WEB-INF/Pages/editProfile.jsp").forward(request, response);
    }

    /**
     * Handles the "Submit Changes" button from the form
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 1. Retrieve data from the form inputs (using the 'name' attributes from your JSP)
        String fullName = request.getParameter("fullName");
        String username = request.getParameter("username");
        String bio = request.getParameter("bio");
        String gender = request.getParameter("gender");

        // 2. LOGIC: This is where you would usually save to a Database.
        // For now, let's just print it to the console to verify it works:
        System.out.println("Updating Profile for: " + username);
        System.out.println("New Bio: " + bio);

        // 3. REDIRECT: After saving, send the user back to their profile page
        // Use the URL pattern mapped to your ProfileServlet
        response.sendRedirect("profile");
    }
}