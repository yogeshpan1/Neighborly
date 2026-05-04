package com.Neighborly.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet("/documents") // This is the URL you type in the browser
public class DocumentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        // 1. Data for the top 3 featured cards
        List<Map<String, String>> featuredDocs = new ArrayList<>();
        
        Map<String, String> doc1 = new HashMap<>();
        doc1.put("name", "National Identity Card");
        doc1.put("issued", "Jan 12, 2021");
        doc1.put("expiry", "Jan 12, 2031");
        featuredDocs.add(doc1);

        Map<String, String> doc2 = new HashMap<>();
        doc2.put("name", "Passport");
        doc2.put("issued", "Mar 05, 2019");
        doc2.put("expiry", "Mar 05, 2029");
        featuredDocs.add(doc2);

        Map<String, String> doc3 = new HashMap<>();
        doc3.put("name", "Birth Certificate");
        doc3.put("issued", "Aug 15, 1988");
        doc3.put("expiry", "N/A, (perpetual)");
        featuredDocs.add(doc3);

        request.setAttribute("featuredDocs", featuredDocs);

        // 2. Data for the icon grid below
        String[] gridDocs = {"National ID", "Passport", "Driving License", "Voters ID", 
                             "Citizenship", "Police Clearance", "PAN Card", "Press ID Card", 
                             "Property Tax", "Bluebook"};
        request.setAttribute("gridDocs", gridDocs);

        // 3. IMPORTANT: Make sure this path matches your file name exactly
        // If your file is named feed.jsp, change this to "/feed.jsp"
        request.getRequestDispatcher("/WEB-INF/Pages/documents.jsp").forward(request, response);
    }
}