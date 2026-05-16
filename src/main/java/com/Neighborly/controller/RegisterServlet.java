package com.Neighborly.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import com.Neighborly.service.RegisterService;

@WebServlet(asyncSupported = true, urlPatterns = { "/register" })
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public RegisterServlet() { super(); }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/Pages/register.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String firstName = request.getParameter("first_name");
        String lastName  = request.getParameter("last_name");
        String username  = request.getParameter("username");
        String dob       = request.getParameter("dob");
        String gender    = request.getParameter("gender");
        String email     = request.getParameter("email");
        String number    = request.getParameter("number");
        String password  = request.getParameter("password");

        // Validation
        if (firstName == null || firstName.trim().isEmpty() || !firstName.matches("[a-zA-Z ]+")) {
            request.setAttribute("error", "Invalid First name");
            request.getRequestDispatcher("/WEB-INF/Pages/register.jsp").forward(request, response);
            return;
        }
        if (lastName == null || lastName.trim().isEmpty() || !lastName.matches("[a-zA-Z ]+")) {
            request.setAttribute("error", "Invalid Last name");
            request.getRequestDispatcher("/WEB-INF/Pages/register.jsp").forward(request, response);
            return;
        }
        if (username == null || username.trim().isEmpty() || username.length() < 3 || !username.matches("[a-zA-Z]+")) {
            request.setAttribute("error", "Username must be at least 3 letters only");
            request.getRequestDispatcher("/WEB-INF/Pages/register.jsp").forward(request, response);
            return;
        }
        if (dob == null || dob.trim().isEmpty()) {
            request.setAttribute("error", "Date of birth is required");
            request.getRequestDispatcher("/WEB-INF/Pages/register.jsp").forward(request, response);
            return;
        }
        if (gender == null || gender.trim().isEmpty()) {
            request.setAttribute("error", "Gender is required");
            request.getRequestDispatcher("/WEB-INF/Pages/register.jsp").forward(request, response);
            return;
        }
        if (email == null || email.trim().isEmpty() || !email.matches("^[\\w.-]+@[\\w.-]+\\.[a-zA-Z]{2,}$")) {
            request.setAttribute("error", "Valid email address is required");
            request.getRequestDispatcher("/WEB-INF/Pages/register.jsp").forward(request, response);
            return;
        }
        if (number == null || number.trim().isEmpty() || !number.matches("\\d{10}")) {
            request.setAttribute("error", "Phone number must be 10 digits");
            request.getRequestDispatcher("/WEB-INF/Pages/register.jsp").forward(request, response);
            return;
        }
        if (password == null || password.trim().isEmpty() || password.length() < 8) {
            request.setAttribute("error", "Password must be at least 8 characters");
            request.getRequestDispatcher("/WEB-INF/Pages/register.jsp").forward(request, response);
            return;
        }

        try {
            RegisterService service = new RegisterService();
            service.addUser(firstName, lastName, username, dob, gender, email, number, password);
            response.sendRedirect(request.getContextPath() + "/login");
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "Registration failed: " + e.getMessage());
            request.getRequestDispatcher("/WEB-INF/Pages/register.jsp").forward(request, response);
        }
    }
}