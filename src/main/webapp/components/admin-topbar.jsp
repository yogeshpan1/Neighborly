<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%
    HttpSession userSession = request.getSession(false);
    String adminName = "Arjan Regmi";
    String adminInitials = "AR";
    
    if (userSession != null && userSession.getAttribute("adminName") != null) {
        adminName = (String) userSession.getAttribute("adminName");
        if (adminName.length() >= 2) {
            String[] parts = adminName.trim().split("\\s+");
            adminInitials = parts.length >= 2
                ? String.valueOf(parts[0].charAt(0)) + String.valueOf(parts[parts.length - 1].charAt(0))
                : adminName.substring(0, 2).toUpperCase();
        }
    }
%>
<header class="topbar">
    <div class="topbar-left">
        <h1><%= request.getAttribute("pageTitle") != null ? request.getAttribute("pageTitle") : "Admin Dashboard" %></h1>
    </div>
    <div class="topbar-center">
        <div class="topbar-search">
            <svg class="search-icon" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <circle cx="11" cy="11" r="8"></circle>
                <line x1="21" y1="21" x2="16.65" y2="16.65"></line>
            </svg>
            <input type="text" placeholder="Search services, documents, or applications..." />
        </div>
    </div>
    <div class="topbar-right">
        <button class="bell-icon" title="Notifications">
            <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <path d="M18 8A6 6 0 0 0 6 8c0 7-3 9-3 9h18s-3-2-3-9"></path>
                <path d="M13.73 21a2 2 0 0 1-3.46 0"></path>
            </svg>
            <span class="notif-dot"></span>
        </button>
        <div class="user-info">
            <div class="user-avatar"><%= adminInitials %></div>
            <div class="user-details">
                <span class="user-name"><%= adminName %></span>
                <span class="user-role">Admin</span>
            </div>
        </div>
    </div>
</header>
