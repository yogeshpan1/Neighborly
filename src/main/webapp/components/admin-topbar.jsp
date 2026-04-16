<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%
    // Standard defaults
    String name = "Arjan Regmi";
    String initials = "AR";
    
    // Check for session-based user info
    HttpSession sessionObj = request.getSession(false);
    if (sessionObj != null && sessionObj.getAttribute("adminName") != null) {
        name = (String) sessionObj.getAttribute("adminName");
        if (name.length() >= 2) {
            initials = name.substring(0, 2).toUpperCase();
        }
    }

    // Get the page title, default to Admin Dashboard
    String title = (String) request.getAttribute("pageTitle");
    if (title == null) {
        title = "Admin Dashboard";
    }
%>

<header class="topbar">
    <div class="topbar-left">
        <h1><%= title %></h1>
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
        <!-- Notification Bell -->
        <button class="bell-icon" title="Notifications">
            <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <path d="M18 8A6 6 0 0 0 6 8c0 7-3 9-3 9h18s-3-2-3-9"></path>
                <path d="M13.73 21a2 2 0 0 1-3.46 0"></path>
            </svg>
            <span class="notif-dot"></span>
        </button>

        <!-- Profile Section -->
        <div class="user-info">
            <div class="user-avatar"><%= initials %></div>
            <div class="user-details">
                <span class="user-name"><%= name %></span>
                <span class="user-role">Admin</span>
            </div>
        </div>
    </div>
</header>
