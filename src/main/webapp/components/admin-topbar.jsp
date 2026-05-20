<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%
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

    String title = (String) request.getAttribute("pageTitle");
    if (title == null) {
        title = "Admin Dashboard";
    }
%>

<header class="topbar">
    <div class="topbarLeft">
        <a href="<%= request.getContextPath() %>/admindashboard" class="topbarLogo">
            <img src="<%= request.getContextPath() %>/Images/Logo.png" alt="Neighborly Logo" style="width: 140px; height: auto;">
        </a>
        <h1 style="border-left: 1px solid #323639; padding-left: 24px; margin-left: 48px;"><%= title %></h1>
    </div>

    <div class="topbarCenter">
        <div class="topbarSearch">
            <svg class="searchIcon" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <circle cx="11" cy="11" r="8"></circle>
                <line x1="21" y1="21" x2="16.65" y2="16.65"></line>
            </svg>
            <input type="text" placeholder="Search services, documents, or applications..." />
        </div>
    </div>

    <div class="topbarRight">
        <!-- Profile Section -->
        <div class="userInfo" onclick="document.getElementById('profileDropdown').classList.toggle('active')">
            <div class="userAvatar"><%= initials %></div>
            <div class="userDetails">
                <span class="userName"><%= name %></span>
                <span class="userRole">Admin</span>
            </div>
            <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="#75787D" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="margin-left: 4px;">
                <polyline points="6 9 12 15 18 9"></polyline>
            </svg>
        </div>
        
        <div class="dropdownMenu" id="profileDropdown">
            <button class="dropdownItem" onclick="window.location.href='<%= request.getContextPath() %>/logout'" style="color: #ef4444;">Logout</button>
        </div>
    </div>
</header>
<script>
    // Close dropdown if clicking outside
    window.addEventListener("click", function(e) {
        if (!e.target.closest(".userInfo") && !e.target.closest(".dropdownMenu")) {
            const dropdown = document.getElementById("profileDropdown");
            if (dropdown && dropdown.classList.contains("active")) {
                dropdown.classList.remove("active");
            }
        }
    });
</script>
