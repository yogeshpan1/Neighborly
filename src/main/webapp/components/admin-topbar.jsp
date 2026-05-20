<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<header class="topbar">
    <div class="topbarLeft">
        <a href="${pageContext.request.contextPath}/admindashboard" class="topbarLogo">
            <img src="${pageContext.request.contextPath}/Images/Logo.png" alt="Neighborly Logo" style="width: 140px; height: auto;">
        </a>
        <h1 style="border-left: 1px solid #323639; padding-left: 24px; margin-left: 48px;">${pageTitle}</h1>
    </div>

    <div class="topbarRight">
        <div class="userInfo" onclick="document.getElementById('profileDropdown').classList.toggle('active')">
            <div class="userAvatar">${sessionScope.user.initials}</div>
            <div class="userDetails">
                <span class="userName">${sessionScope.user.userName}</span>
                <span class="userRole">Admin</span>
            </div>
            <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="#75787D" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="margin-left: 4px;">
                <polyline points="6 9 12 15 18 9"></polyline>
            </svg>
        </div>

        <div class="dropdownMenu" id="profileDropdown">
            <button class="dropdownItem" onclick="window.location.href='${pageContext.request.contextPath}/logout'" style="color: #ef4444;">Logout</button>
        </div>
    </div>
</header>
<script>
    window.addEventListener("click", function(e) {
        if (!e.target.closest(".userInfo") && !e.target.closest(".dropdownMenu")) {
            const dropdown = document.getElementById("profileDropdown");
            if (dropdown && dropdown.classList.contains("active")) {
                dropdown.classList.remove("active");
            }
        }
    });
</script>