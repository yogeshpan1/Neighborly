<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - Neighborly</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Inter', 'Segoe UI', sans-serif;
            background-color: #13171A;
            color: #ffffff;
        }

        /* SIDEBAR */
        .sidebar {
            width: 250px;
            min-width: 250px;
            background-color: #151821;
            border-right: 1px solid #323639;
            display: flex;
            flex-direction: column;
            position: fixed;
            top: 0;
            left: 0;
            height: 100vh;
            overflow-y: auto;
            z-index: 100;
        }

        .sidebar-logo {
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 24px;
            text-decoration: none;
            margin-bottom: 8px;
            transition: opacity 0.2s;
            height: 80px; 
        }

        .sidebar-logo:hover {
            opacity: 0.8;
        }

        /* Styling for your custom uploaded logo */
        .sidebar-img {
            max-width: 100%;
            max-height: 50px;
            object-fit: contain;
        }

        .sidebar-section-label {
            font-size: 11px;
            font-weight: 600;
            color: #75787D;
            letter-spacing: 1px;
            text-transform: uppercase;
            padding: 20px 24px 8px 24px;
        }

        .sidebar-nav {
            list-style: none;
            padding: 0 12px;
        }

        .sidebar-nav li a {
            display: flex;
            align-items: center;
            gap: 12px;
            padding: 10px 14px;
            margin-bottom: 4px;
            border-radius: 8px;
            text-decoration: none;
            font-size: 14px;
            color: #75787D;
            font-weight: 500;
        }
        
        .sidebar-nav li a:hover {
            background-color: #212224;
            color: #ffffff;
        }

        .sidebar-nav li a.active {
            background-color: #323639;
            color: #D35400;
        }
        
        .sidebar-nav li a.active:hover {
            background-color: #323639;
            color: #D35400;
        }

        .nav-icon {
            display: flex;
            align-items: center;
            justify-content: center;
        }

        /* ===== MAIN CONTENT ===== */
        .main-content {
            margin-left: 250px;
            flex: 1;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        /* ===== TOPBAR ===== */
        .topbar {
            background-color: #212224;
            border-bottom: 1px solid #323639;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 32px;
            height: 70px;
            position: sticky;
            top: 0;
            z-index: 99;
        }

        .topbar-left h1 {
            font-size: 18px;
            font-weight: 600;
            color: #ffffff;
        }

        .topbar-center {
            flex: 1;
            display: flex;
            justify-content: center;
        }

        .topbar-search {
            position: relative;
            width: 100%;
            max-width: 480px;
        }

        .topbar-search input {
            background-color: #13171A;
            border: 1px solid #323639;
            border-radius: 8px;
            padding: 10px 16px 10px 42px;
            font-size: 14px;
            color: #ffffff;
            width: 100%;
            outline: none;
            transition: border-color 0.2s;
        }

        .topbar-search input:focus {
            border-color: #D35400;
        }

        .topbar-search .search-icon {
            position: absolute;
            left: 14px;
            top: 50%;
            transform: translateY(-50%);
            color: #75787D;
        }

        .topbar-right {
            display: flex;
            align-items: center;
        }

        .bell-icon {
            position: relative;
            background-color: transparent;
            border: none;
            cursor: pointer;
            color: #75787D;
            margin-right: 20px;
            display: flex;
            align-items: center;
        }

        .bell-icon:hover {
            color: #ffffff;
        }

        .notif-dot {
            position: absolute;
            top: -2px;
            right: 0;
            width: 8px;
            height: 8px;
            background-color: #D35400;
            border-radius: 50%;
            border: 2px solid #212224;
        }

        .user-info {
            display: flex;
            align-items: center;
            gap: 12px;
            cursor: pointer;
            padding: 6px 10px;
            border-radius: 8px;
            transition: background-color 0.2s;
        }

        .user-info:hover {
            background-color: #323639;
        }

        .user-avatar {
            width: 38px;
            height: 38px;
            border-radius: 50%;
            background-color: #D35400;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 14px;
            font-weight: bold;
            color: #ffffff;
        }

        .user-details {
            display: flex;
            flex-direction: column;
        }

        .user-name {
            font-size: 14px;
            font-weight: 600;
            color: #ffffff;
        }

        .user-role {
            font-size: 12px;
            color: #75787D;
        }

        /* ===== DASHBOARD BODY ===== */
        .dashboard-body {
            padding: 32px;
            flex: 1;
        }

        /* ===== STAT CARDS ===== */
        .stats-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 24px;
            margin-bottom: 32px;
        }

        .stat-card {
            background-color: #212224;
            border: 1px solid #323639;
            border-radius: 10px;
            padding: 24px;
            display: flex;
            align-items: center;
            gap: 24px;
            height: 120px;
            transition: border-color 0.2s, transform 0.2s;
        }
        
        .stat-card:hover {
            border-color: #CFD3D6;
            transform: translateY(-2px);
        }

        .stat-icon-wrap {
            display: flex;
            flex-shrink: 0;
        }

        .stat-info {
            flex: 1;
            display: flex;
            flex-direction: column;
            align-items: center;
            text-align: center;
        }

        .stat-label {
            font-size: 13px;
            color: #75787D;
            margin-bottom: 6px;
        }

        .stat-value {
            font-size: 36px;
            font-weight: 700;
            color: #ffffff;
            line-height: 1;
            margin-bottom: 6px;
        }

        .stat-trend {
            font-size: 12px;
            font-weight: 500;
        }

        .stat-trend.green { 
            color: #10b981; 
        }
        
        .stat-trend.orange { 
            color: #75787D; 
        }

        /* Custom HTML/CSS Bar Charts */
        .stat-bars { 
            display: flex; 
            align-items: flex-end; 
            gap: 5px; 
            height: 40px; 
        }
        
        .stat-bars .bar { 
            width: 5px; 
            border-radius: 3px; 
        }

        .bars-green .bar { 
            background-color: #10b981; 
        }
        
        .bars-orange .bar { 
            background-color: #D35400; 
        }
        
        .bars-blue .bar { 
            background-color: #3b82f6; 
        }
        
        .bars-yellow .bar { 
            background-color: #f59e0b; 
        }

        .h-40 { 
            height: 40%; 
        }
        
        .h-50 { 
            height: 50%; 
        }
        
        .h-60 { 
            height: 60%; 
        }
        
        .h-70 { 
            height: 70%; 
        }
        
        .h-80 { 
            height: 80%; 
        }
        
        .h-100 { 
            height: 100%; 
        }

        /* ===== MAIN GRID ===== */
        .dashboard-grid {
            display: grid;
            grid-template-columns: 2fr 1fr;
            gap: 24px;
        }

        .left-col, .right-col {
            display: flex;
            flex-direction: column;
            gap: 24px;
        }

        /* ===== PANEL / CARD ===== */
        .panel {
            background-color: #212224;
            border: 1px solid #323639;
            border-radius: 10px;
            overflow: hidden;
        }

        .panel-header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 20px 24px;
            border-bottom: 1px solid #CFD3D6;
        }

        .panel-title {
            font-size: 16px;
            font-weight: 600;
            color: #ffffff;
        }

        .view-all-link {
            font-size: 13px;
            color: #D35400;
            text-decoration: none;
            font-weight: 500;
        }

        .view-all-link:hover {
            text-decoration: underline;
        }

        /* ===== DATA TABLE ===== */
        .data-table {
            width: 100%;
            border-collapse: collapse;
        }

        .data-table th {
            text-align: left;
            padding: 14px 24px;
            font-size: 11px;
            font-weight: 600;
            color: #75787D;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            border-bottom: 1px solid #CFD3D6;
        }

        .data-table td {
            padding: 18px 24px;
            font-size: 13px;
            border-bottom: 1px solid #CFD3D6;
        }
        
        .data-table tbody tr {
            transition: background-color 0.2s;
        }
        
        .data-table tbody tr:hover {
            background-color: #323639;
        }

        .data-table tr:last-child td {
            border-bottom: none;
        }

        .data-table td.primary-text {
            color: #ffffff;
            font-weight: 500;
        }

        .data-table td.secondary-text {
            color: #75787D;
        }

        /* ===== BADGES ===== */
        .badge {
            display: inline-block;
            padding: 4px 16px;
            border-radius: 20px;
            font-size: 11px;
            font-weight: 600;
            background-color: #ffffff;
        }

        .badge-pending { 
            color: #D35400; 
        }
        
        .badge-progress { 
            color: #3b82f6; 
        }
        
        .badge-resolved { 
            color: #10b981; 
        }
        
        .badge-published { 
            color: #10b981; 
        }
        
        .type-badge {
            display: inline-block;
            padding: 4px 16px;
            border-radius: 20px;
            font-size: 11px;
            font-weight: 600;
            background-color: #ffffff;
            color: #D35400;
        }

        /* ===== ACTIVE POLLS ===== */
        .poll-item {
            display: flex;
            align-items: center;
            gap: 16px;
            padding: 18px 24px;
            border-bottom: 1px solid #CFD3D6;
            transition: background-color 0.2s;
        }
        
        .poll-item:hover {
            background-color: #323639;
        }

        .poll-item:last-child {
            border-bottom: none;
        }

        .poll-icon-box {
            width: 40px;
            height: 40px;
            background-color: #ffffff;
            border-radius: 6px;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-shrink: 0;
        }

        .poll-details {
            flex: 1;
        }

        .poll-details h4 {
            font-size: 14px;
            font-weight: 600;
            color: #ffffff;
            margin: 0 0 4px 0;
        }

        .poll-meta {
            font-size: 12px;
            color: #75787D;
            margin: 0;
        }

        /* ===== STAT ROWS ===== */
        .stat-row {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 16px 24px;
            border-bottom: 1px solid #CFD3D6;
        }

        .stat-row:last-child {
            border-bottom: none;
        }

        .stat-row-label {
            font-size: 13px;
            color: #75787D;
        }

        .stat-row-value {
            font-size: 15px;
            font-weight: 700;
            color: #ffffff;
        }

        .stat-row-value.value-orange { 
            color: #D35400; 
        }
        
        .stat-row-value.value-green { 
            color: #10b981; 
        }
        
        .stat-row-value.value-blue { 
            color: #3b82f6; 
        }

        /* ===== RESPONSIVE ===== */
        @media (max-width: 1200px) {
            .stats-grid { grid-template-columns: repeat(2, 1fr); }
            .dashboard-grid { grid-template-columns: 1fr; }
        }

        @media (max-width: 768px) {
            .sidebar { transform: translateX(-100%); }
            .main-content { margin-left: 0; }
            .topbar-search { display: none; }
        }
    </style>
</head>
<body>

<%
    // Server-side block checking user session
    HttpSession userSession = request.getSession(false);
    String adminName = "Arjan Regmi"; // Default name
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

<!-- ===== SIDEBAR ===== -->
<aside class="sidebar">
    <!-- Updated with your custom logo -->
    <a href="AdminDashboard.jsp" class="sidebar-logo">
        <img src="<%= request.getContextPath() %>/images/Logo.png" alt="Neighborly Logo" class="sidebar-img">
    </a>

    <p class="sidebar-section-label">Main</p>
    <ul class="sidebar-nav">
        <li>
            <a href="AdminDashboard.jsp" class="active">
                <span class="nav-icon">
                    <svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor">
                        <path d="M3 13h8V3H3v10zm0 8h8v-6H3v6zm10 0h8V11h-8v10zm0-18v6h8V3h-8z"/>
                    </svg>
                </span>
                Home
            </a>
        </li>
        <li>
            <a href="CitizenList.jsp">
                <span class="nav-icon">
                    <svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor">
                        <path d="M16 11c1.66 0 2.99-1.34 2.99-3S17.66 5 16 5c-1.66 0-3 1.34-3 3s1.34 3 3 3zm-8 0c1.66 0 2.99-1.34 2.99-3S9.66 5 8 5C6.34 5 5 6.34 5 8s1.34 3 3 3zm0 2c-2.33 0-7 1.17-7 3.5V19h14v-2.5c0-2.33-4.67-3.5-7-3.5zm8 0c-.29 0-.62.02-.97.05 1.16.84 1.97 1.97 1.97 3.45V19h6v-2.5c0-2.33-4.67-3.5-7-3.5z"/>
                    </svg>
                </span>
                Citizen
            </a>
        </li>
        <li>
            <a href="DocumentList.jsp">
                <span class="nav-icon">
                    <svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor">
                        <path d="M14 2H6c-1.1 0-2 .9-2 2v16c0 1.1.89 2 2 2h12c1.1 0 2-.9 2-2V8l-6-6zm4 18H6V4h7v5h5v11z"/>
                    </svg>
                </span>
                Documents
            </a>
        </li>
    </ul>

    <p class="sidebar-section-label">Services</p>
    <ul class="sidebar-nav">
        <li>
            <a href="NewsList.jsp">
                <span class="nav-icon">
                    <svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor">
                        <path d="M20 3H4c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2zm-5 14H7v-2h8v2zm3-4H7v-2h11v2zm0-4H7V7h11v2z"/>
                    </svg>
                </span>
                News
            </a>
        </li>
        <li>
            <a href="JobList.jsp">
                <span class="nav-icon">
                    <svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor">
                        <path d="M20 6h-2.18c.07-.44.18-.86.18-1 0-2.21-1.79-4-4-4s-4 1.79-4 4c0 .14.11.56.18 1H8c-1.1 0-2 .9-2 2v12c0 1.1.9 2 2 2h12c1.1 0 2-.9 2-2V8c0-1.1-.9-2-2-2zm-6-3c1.1 0 2 .9 2 2 0 .14-.11.56-.18 1h-3.64c-.07-.44-.18-.86-.18-1 0-1.1.9-2 2-2zm0 10l-4-4 1.41-1.41L14 10.17l6.59-6.58L22 5l-8 8z"/>
                    </svg>
                </span>
                Jobs
            </a>
        </li>
        <li>
            <a href="PollList.jsp">
                <span class="nav-icon">
                    <svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor">
                        <path d="M19 3H5c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2zM9 17H7v-7h2v7zm4 0h-2V7h2v10zm4 0h-2v-4h2v4z"/>
                    </svg>
                </span>
                Polls
            </a>
        </li>
        <li>
            <a href="ApplicationList.jsp">
                <span class="nav-icon">
                    <svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor">
                        <path d="M19 3H5c-1.11 0-2 .9-2 2v14c0 1.1.89 2 2 2h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2zm-7 3c1.93 0 3.5 1.57 3.5 3.5S13.93 13 12 13s-3.5-1.57-3.5-3.5S10.07 6 12 6zm7 13H5v-.23c0-.62.28-1.2.76-1.58C7.47 15.82 9.64 15 12 15s4.53.82 6.24 2.19c.48.38.76.97.76 1.58V19z"/>
                    </svg>
                </span>
                Application
            </a>
        </li>
    </ul>

    <p class="sidebar-section-label">Community</p>
    <ul class="sidebar-nav">
        <li>
            <a href="ReportIssue.jsp">
                <span class="nav-icon">
                    <svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor">
                        <path d="M1 21h22L12 2 1 21zm12-3h-2v-2h2v2zm0-4h-2v-4h2v4z"/>
                    </svg>
                </span>
                Report issue
            </a>
        </li>
        <li>
            <a href="NoticeList.jsp">
                <span class="nav-icon">
                    <svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor">
                        <path d="M12 22c1.1 0 2-.9 2-2h-4c0 1.1.9 2 2 2zm6-6v-5c0-3.07-1.64-5.64-4.5-6.32V4c0-.83-.67-1.5-1.5-1.5s-1.5.67-1.5 1.5v.68C7.63 5.36 6 7.92 6 11v5l-2 2v1h16v-1l-2-2z"/>
                    </svg>
                </span>
                Notices
            </a>
        </li>
        <li>
            <a href="IssueFine.jsp">
                <span class="nav-icon">
                    <svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor">
                        <path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm1 15h-2v-2h2v2zm0-4h-2V7h2v6z"/>
                    </svg>
                </span>
                Issue Fine
            </a>
        </li>
    </ul>
</aside>

<!-- ===== MAIN CONTENT ===== -->
<div class="main-content">

    <!-- TOPBAR -->
    <header class="topbar">
        <div class="topbar-left">
            <h1>Admin Dashboard</h1>
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

    <!-- DASHBOARD BODY -->
    <main class="dashboard-body">

        <!-- STAT CARDS -->
        <div class="stats-grid">
            <div class="stat-card">
                <div class="stat-icon-wrap">
                    <div class="stat-bars bars-green">
                        <div class="bar h-40"></div>
                        <div class="bar h-60"></div>
                        <div class="bar h-80"></div>
                        <div class="bar h-100"></div>
                        <div class="bar h-60"></div>
                    </div>
                </div>
                <div class="stat-info">
                    <span class="stat-label">Total citizens</span>
                    <span class="stat-value">1,342</span>
                    <span class="stat-trend green">▲ +22 this week</span>
                </div>
            </div>

            <div class="stat-card">
                <div class="stat-icon-wrap">
                     <div class="stat-bars bars-orange">
                        <div class="bar h-50"></div>
                        <div class="bar h-80"></div>
                        <div class="bar h-100"></div>
                        <div class="bar h-60"></div>
                    </div>
                </div>
                <div class="stat-info">
                    <span class="stat-label">Open civic issues</span>
                    <span class="stat-value">8</span>
                    <span class="stat-trend orange">Needs attention</span>
                </div>
            </div>

            <div class="stat-card">
                <div class="stat-icon-wrap">
                     <div class="stat-bars bars-blue">
                        <div class="bar h-70"></div>
                        <div class="bar h-50"></div>
                        <div class="bar h-100"></div>
                    </div>
                </div>
                <div class="stat-info">
                    <span class="stat-label">Documents pending</span>
                    <span class="stat-value">14</span>
                    <span class="stat-trend orange">Awaiting review</span>
                </div>
            </div>

            <div class="stat-card">
                <div class="stat-icon-wrap">
                     <div class="stat-bars bars-yellow">
                        <div class="bar h-100"></div>
                        <div class="bar h-80"></div>
                    </div>
                </div>
                <div class="stat-info">
                    <span class="stat-label">Active polls</span>
                    <span class="stat-value">3</span>
                    <span class="stat-trend orange">On track</span>
                </div>
            </div>
        </div>

        <!-- MAIN GRID -->
        <div class="dashboard-grid">

            <!-- LEFT COLUMN -->
            <div class="left-col">

                <!-- Recent Civic Issues -->
                <div class="panel">
                    <div class="panel-header">
                        <span class="panel-title">Recent civic issues</span>
                        <a href="CivicIssueList.jsp" class="view-all-link">View all</a>
                    </div>
                    <table class="data-table">
                        <thead>
                            <tr>
                                <th>Citizen</th>
                                <th>Category</th>
                                <th>Submitted</th>
                                <th>Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="primary-text">Arjun Sharma</td>
                                <td class="secondary-text">Roads</td>
                                <td class="secondary-text">Apr 8</td>
                                <td><span class="badge badge-pending">Pending</span></td>
                            </tr>
                            <tr>
                                <td class="primary-text">Priya Thapa</td>
                                <td class="secondary-text">Lighting</td>
                                <td class="secondary-text">Apr 8</td>
                                <td><span class="badge badge-progress">In progress</span></td>
                            </tr>
                            <tr>
                                <td class="primary-text">Rohan KC</td>
                                <td class="secondary-text">Waste</td>
                                <td class="secondary-text">Apr 7</td>
                                <td><span class="badge badge-resolved">Resolved</span></td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <!-- News & Jobs -->
                <div class="panel">
                    <div class="panel-header">
                        <span class="panel-title">News &amp; Jobs</span>
                        <a href="NewsList.jsp" class="view-all-link">View all</a>
                    </div>
                    <table class="data-table">
                        <thead>
                            <tr>
                                <th>Title</th>
                                <th>Type</th>
                                <th>Date</th>
                                <th>Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="secondary-text">Road closure notice — Baneshwor</td>
                                <td><span class="type-badge">News</span></td>
                                <td class="secondary-text">Apr 8</td>
                                <td><span class="badge badge-published">Published</span></td>
                            </tr>
                        </tbody>
                    </table>
                </div>

            </div>

            <!-- RIGHT COLUMN -->
            <div class="right-col">

                <!-- Active Polls -->
                <div class="panel">
                    <div class="panel-header">
                        <span class="panel-title">Active polls</span>
                        <a href="PollList.jsp" class="view-all-link">View all</a>
                    </div>
                    <div class="poll-item">
                        <div class="poll-icon-box">
                            <div class="stat-bars bars-blue" style="height: 16px; gap: 2px;">
                                <div class="bar h-60" style="width: 3px;"></div>
                                <div class="bar h-100" style="width: 3px;"></div>
                                <div class="bar h-80" style="width: 3px;"></div>
                            </div>
                        </div>
                        <div class="poll-details">
                            <h4>New bus route — Kalanki</h4>
                            <p class="poll-meta">142 votes &middot; Closes Apr 15</p>
                        </div>
                    </div>
                    <div class="poll-item">
                        <div class="poll-icon-box">
                             <div class="stat-bars bars-blue" style="height: 16px; gap: 2px;">
                                <div class="bar h-60" style="width: 3px;"></div>
                                <div class="bar h-100" style="width: 3px;"></div>
                                <div class="bar h-80" style="width: 3px;"></div>
                            </div>
                        </div>
                        <div class="poll-details">
                            <h4>Footpaths or speed bumps?</h4>
                            <p class="poll-meta">89 votes &middot; Closes Apr 18</p>
                        </div>
                    </div>
                </div>

                <!-- Document Vault -->
                <div class="panel">
                    <div class="panel-header">
                        <span class="panel-title">Document vault</span>
                        <a href="DocumentList.jsp" class="view-all-link">View all</a>
                    </div>
                    <div class="stat-row">
                        <span class="stat-row-label">Total documents</span>
                        <span class="stat-row-value">407</span>
                    </div>
                    <div class="stat-row">
                        <span class="stat-row-label">Pending verification</span>
                        <span class="stat-row-value value-orange">14</span>
                    </div>
                    <div class="stat-row">
                        <span class="stat-row-label">Verified</span>
                        <span class="stat-row-value value-green">393</span>
                    </div>
                </div>

                <!-- Application Status -->
                <div class="panel">
                    <div class="panel-header">
                        <span class="panel-title">Application Status</span>
                        <a href="ApplicationList.jsp" class="view-all-link">View all</a>
                    </div>
                    <div class="stat-row">
                        <span class="stat-row-label">Total Applications</span>
                        <span class="stat-row-value">10</span>
                    </div>
                    <div class="stat-row">
                        <span class="stat-row-label">Pending Applications</span>
                        <span class="stat-row-value value-orange">2</span>
                    </div>
                    <div class="stat-row">
                        <span class="stat-row-label">Verified Applications</span>
                        <span class="stat-row-value value-green">8</span>
                    </div>
                </div>

            </div>
        </div>

    </main>
</div>

</body>
</html>
