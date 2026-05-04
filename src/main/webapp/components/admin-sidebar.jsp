<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String uri = request.getRequestURI() != null ? request.getRequestURI().toLowerCase() : "";
%>
<aside class="sidebar">
    <p class="sidebarSectionLabel">Main</p>
    <ul class="sidebarNav">
        <li>
            <a href="<%= request.getContextPath() %>/admindashboard" class="<%= uri.contains("/admindashboard") ? "active" : "" %>">
                <span class="navIcon">
                    <svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor">
                        <path d="M3 13h8V3H3v10zm0 8h8v-6H3v6zm10 0h8V11h-8v10zm0-18v6h8V3h-8z"/>
                    </svg>
                </span>
                Home
            </a>
        </li>
        <li>
            <a href="<%= request.getContextPath() %>/citizenlist" class="<%= (uri.contains("/citizenlist") || uri.contains("citizenmanagement")) ? "active" : "" %>">
                <span class="navIcon">
                    <svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor">
                        <path d="M16 11c1.66 0 2.99-1.34 2.99-3S17.66 5 16 5c-1.66 0-3 1.34-3 3s1.34 3 3 3zm-8 0c1.66 0 2.99-1.34 2.99-3S9.66 5 8 5C6.34 5 5 6.34 5 8s1.34 3 3 3zm0 2c-2.33 0-7 1.17-7 3.5V19h14v-2.5c0-2.33-4.67-3.5-7-3.5zm8 0c-.29 0-.62.02-.97.05 1.16.84 1.97 1.97 1.97 3.45V19h6v-2.5c0-2.33-4.67-3.5-7-3.5z"/>
                    </svg>
                </span>
                Citizen
            </a>
        </li>
        <li>
            <a href="<%= request.getContextPath() %>/documentlist" class="<%= uri.contains("/documentlist") ? "active" : "" %>">
                <span class="navIcon">
                    <svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor">
                        <path d="M14 2H6c-1.1 0-2 .9-2 2v16c0 1.1.89 2 2 2h12c1.1 0 2-.9 2-2V8l-6-6zm4 18H6V4h7v5h5v11z"/>
                    </svg>
                </span>
                Documents
            </a>
        </li>
    </ul>

    <p class="sidebarSectionLabel">Services</p>
    <ul class="sidebarNav">
        <li>
            <a href="<%= request.getContextPath() %>/newslist" class="<%= uri.contains("/newslist") ? "active" : "" %>">
                <span class="navIcon">
                    <svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor">
                        <path d="M20 3H4c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2zm-5 14H7v-2h8v2zm3-4H7v-2h11v2zm0-4H7V7h11v2z"/>
                    </svg>
                </span>
                News
            </a>
        </li>
        <li>
            <a href="<%= request.getContextPath() %>/joblisting" class="<%= uri.contains("/joblisting") ? "active" : "" %>">
                <span class="navIcon">
                    <svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor">
                        <path d="M20 6h-2.18c.07-.44.18-.86.18-1 0-2.21-1.79-4-4-4s-4 1.79-4 4c0 .14.11.56.18 1H8c-1.1 0-2 .9-2 2v12c0 1.1.9 2 2 2h12c1.1 0 2-.9 2-2V8c0-1.1-.9-2-2-2zm-6-3c1.1 0 2 .9 2 2 0 .14-.11.56-.18 1h-3.64c-.07-.44-.18-.86-.18-1 0-1.1.9-2 2-2zm0 10l-4-4 1.41-1.41L14 10.17l6.59-6.58L22 5l-8 8z"/>
                    </svg>
                </span>
                Jobs
            </a>
        </li>
        <li>
            <a href="<%= request.getContextPath() %>/pollmanagement" class="<%= (uri.contains("/pollmanagement") || uri.contains("/polls/")) ? "active" : "" %>">
                <span class="navIcon">
                    <svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor">
                        <path d="M19 3H5c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2zM9 17H7v-7h2v7zm4 0h-2V7h2v10zm4 0h-2v-4h2v4z"/>
                    </svg>
                </span>
                Polls
            </a>
        </li>
        <li>
            <a href="<%= request.getContextPath() %>/applicationmanagement" class="<%= uri.contains("/applicationmanagement") ? "active" : "" %>">
                <span class="navIcon">
                    <svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor">
                        <path d="M19 3H5c-1.11 0-2 .9-2 2v14c0 1.1.89 2 2 2h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2zm-7 3c1.93 0 3.5 1.57 3.5 3.5S13.93 13 12 13s-3.5-1.57-3.5-3.5S10.07 6 12 6zm7 13H5v-.23c0-.62.28-1.2.76-1.58C7.47 15.82 9.64 15 12 15s4.53.82 6.24 2.19c.48.38.76.97.76 1.58V19z"/>
                    </svg>
                </span>
                Application
            </a>
        </li>
    </ul>

    <p class="sidebarSectionLabel">Community</p>
    <ul class="sidebarNav">
        <li>
            <a href="<%= request.getContextPath() %>/reportissue" class="<%= uri.contains("/reportissue") ? "active" : "" %>">
                <span class="navIcon">
                    <svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor">
                        <path d="M1 21h22L12 2 1 21zm12-3h-2v-2h2v2zm0-4h-2v-4h2v4z"/>
                    </svg>
                </span>
                Report issue
            </a>
        </li>
        <li>
            <a href="<%= request.getContextPath() %>/noticelist" class="<%= (uri.contains("/noticelistt") || uri.contains("noticemanagement")) ? "active" : "" %>">
                <span class="navIcon">
                    <svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor">
                        <path d="M12 22c1.1 0 2-.9 2-2h-4c0 1.1.9 2 2 2zm6-6v-5c0-3.07-1.64-5.64-4.5-6.32V4c0-.83-.67-1.5-1.5-1.5s-1.5.67-1.5 1.5v.68C7.63 5.36 6 7.92 6 11v5l-2 2v1h16v-1l-2-2z"/>
                    </svg>
                </span>
                Notices
            </a>
        </li>
        <li>
            <a href="<%= request.getContextPath() %>/issuefine" class="<%= uri.contains("/issuefine") ? "active" : "" %>">
                <span class="navIcon">
                    <svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor">
                        <path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm1 15h-2v-2h2v2zm0-4h-2V7h2v6z"/>
                    </svg>
                </span>
                Issue Fine
            </a>
        </li>
    </ul>
</aside>
