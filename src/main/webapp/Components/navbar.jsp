<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>

<header class="topbar">
    <div class="topbarLeft">
        <button id="sidebarToggle" class="sidebarToggleButton" title="Toggle Sidebar">
            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <line x1="3" y1="12" x2="21" y2="12"></line>
                <line x1="3" y1="6" x2="21" y2="6"></line>
                <line x1="3" y1="18" x2="21" y2="18"></line>
            </svg>
        </button>
        <a href="${pageContext.request.contextPath}/home" class="navbarLogo">
            <img src="${pageContext.request.contextPath}/Images/Logo.png" alt="Neighborly" class="navbarLogoImage" />
        </a>
    </div>
    <div class="topbarCenter">
        <h1><span>${activePage}</span></h1>
    </div>
    <div class="topbarRight">
        <button class="bellIcon" title="Notifications">
            <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                stroke-linecap="round" stroke-linejoin="round">
                <path d="M18 8A6 6 0 0 0 6 8c0 7-3 9-3 9h18s-3-2-3-9"></path>
                <path d="M13.73 21a2 2 0 0 1-3.46 0"></path>
            </svg>
        </button>

    </div>
</header>
<script>
    if (localStorage.getItem('sidebarCollapsed') === 'true') {
        document.body.classList.add('sidebar-collapsed');
    }

    document.addEventListener('DOMContentLoaded', function() {
        const toggleBtn = document.getElementById('sidebarToggle');
        if (toggleBtn) {
            toggleBtn.addEventListener('click', function() {
                const isCollapsed = document.body.classList.toggle('sidebar-collapsed');
                localStorage.setItem('sidebarCollapsed', isCollapsed);
            });
        }
    });
</script>

