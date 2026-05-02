package com.Neighborly.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import com.Neighborly.model.UserModel;
import com.Neighborly.service.LoginService;
import com.Neighborly.utils.CookieUtil;
import com.Neighborly.utils.SessionUtil;
import com.Neighborly.dao.UserDAO;

@WebServlet(asyncSupported = true, urlPatterns = { "/login" })
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public LoginServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/Pages/login.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Validation
        if (username == null || username.trim().isEmpty()) {
            request.setAttribute("error", "Username is required");
            request.setAttribute("typedUser", username);
            request.getRequestDispatcher("/WEB-INF/Pages/login.jsp").forward(request, response);
            return;
        }
        if (password == null || password.trim().isEmpty()) {
            request.setAttribute("error", "Password is required");
            request.setAttribute("typedUser", username);
            request.getRequestDispatcher("/WEB-INF/Pages/login.jsp").forward(request, response);
            return;
        }

        // Call LoginService
        LoginService service = new LoginService();
        String status = "";
        try {
            status = service.authenticate(username, password);
        } catch (Exception e) {
            status = "Error in Authentication";
            e.printStackTrace();
        }

        if ("Success".equals(status)) {
            try {
                UserDAO dao = new UserDAO();
                UserModel userModel = dao.getUserByUsername(username);
                SessionUtil.setAttribute(request, "user", userModel, 3600);

                String loginTime = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd_HH:mm:ss"));
                CookieUtil.addCookie(response, "last_login", loginTime, 3600);

            } catch (Exception e) {
                e.printStackTrace();
            }
            response.sendRedirect(request.getContextPath() + "/home");
        } else {
            request.setAttribute("error", status);
            request.setAttribute("typedUser", username);
            request.getRequestDispatcher("/WEB-INF/Pages/login.jsp").forward(request, response);
        }
    }
}