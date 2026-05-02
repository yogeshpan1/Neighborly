<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>

<aside class="sidebar">
    <a href="${pageContext.request.contextPath}/home" class="sidebarLogo">
        <img src="${pageContext.request.contextPath}/Images/Logo.png" alt="" class="sidebarLogoImg" />
    </a>

    <p class="sidebarSectionLabel">MAIN</p>
    <ul class="sidebarNav">
        <li>
            <a href="${pageContext.request.contextPath}/home" class="${activePage == 'Home' ? 'active' : ''}">
                <span class="navIcon">
                    <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor"
                        stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                        <path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path>
                        <polyline points="9 22 9 12 15 12 15 22"></polyline>
                    </svg>
                </span>
                Home
            </a>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/feed" class="${activePage == 'Feed' ? 'active' : ''}">
                <span class="navIcon">
                    <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor"
                        stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                        <path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z"></path>
                    </svg>
                </span>
                Feed
            </a>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/news" class="${activePage == 'News' ? 'active' : ''}">
                <span class="navIcon">
                    <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor"
                        stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                        <path d="M14 2H6a2 2 0 0 0-2 2v16c0 1.1.9 2 2 2h12a2 2 0 0 0 2-2V8l-6-6z" />
                        <path d="M14 3v5h5M16 13H8M16 17H8M10 9H8" />
                    </svg>
                </span>
                News
            </a>
        </li>
    </ul>

    <p class="sidebarSectionLabel">SERVICES</p>
    <ul class="sidebarNav">
        <li>
            <a href="${pageContext.request.contextPath}/documents" class="${activePage == 'Documents' ? 'active' : ''}">
                <span class="navIcon">
                    <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor"
                        stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                        <path d="M13 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V9z"></path>
                        <polyline points="13 2 13 9 20 9"></polyline>
                    </svg>
                </span>
                Document vault
            </a>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/payments" class="${activePage == 'Payments' ? 'active' : ''}">
                <span class="navIcon">
                    <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor"
                        stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                        <rect x="2" y="5" width="20" height="14" rx="2" ry="2"></rect>
                        <line x1="2" y1="10" x2="22" y2="10"></line>
                    </svg>
                </span>
                Payments &amp; fines
            </a>
        </li>
    </ul>

    <p class="sidebarSectionLabel">COMMUNITY</p>
    <ul class="sidebarNav">
        <li>
            <a href="${pageContext.request.contextPath}/ReportIssue.jsp" class="${activePage == 'Report' ? 'active' : ''}">
                <span class="navIcon">
                    <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor"
                        stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                        <circle cx="12" cy="12" r="10"></circle>
                        <line x1="12" y1="8" x2="12" y2="12"></line>
                        <line x1="12" y1="16" x2="12.01" y2="16"></line>
                    </svg>
                </span>
                Report issue
            </a>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/Polls.jsp" class="${activePage == 'Polls' ? 'active' : ''}">
                <span class="navIcon">
                    <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor"
                        stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                        <line x1="18" y1="20" x2="18" y2="10"></line>
                        <line x1="12" y1="20" x2="12" y2="4"></line>
                        <line x1="6" y1="20" x2="6" y2="14"></line>
                    </svg>
                </span>
                Polls
            </a>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/notices" class="${activePage == 'Notices' ? 'active' : ''}">
                <span class="navIcon">
                    <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor"
                        stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                        <path d="M18 8A6 6 0 0 0 6 8c0 7-3 9-3 9h18s-3-2-3-9"></path>
                        <path d="M13.73 21a2 2 0 0 1-3.46 0"></path>
                    </svg>
                </span>
                Notices
            </a>
        </li>
    </ul>

    <div class="menuWrapper" id="userMenuWrapper">
        <div class="userProfile" id="userMenuToggle">
            <div class="userAvatar" style="background-color: #E86A33;">
                G
            </div>
            <div class="userInfo">
                <span class="userName">${user.userName}</span>
                <span class="userRole">Citizen</span>
            </div>
            <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="#666" stroke-width="2"
                stroke-linecap="round" stroke-linejoin="round" style="margin-left:auto">
                <polyline points="18 15 12 9 6 15"></polyline>
            </svg>
        </div>

        <div class="menuDropdown" id="userDropdownMenu">
            <ul>
                <li>
                    <a href="${pageContext.request.contextPath}/profile">
                        <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor"
                            stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                            style="margin-right: 12px;">
                            <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                            <circle cx="12" cy="7" r="4"></circle>
                        </svg>
                        My Profile
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/settings">
                        <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor"
                            stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                            style="margin-right: 12px;">
                            <circle cx="12" cy="12" r="3"></circle>
                            <path d="M19.4 15a1.65 1.65 0 0 0 .33 1.82l.06.06a2 2 0 0 1 0 2.83 2 2 0 0 1-2.83 0l-.06-.06a1.65 1.65 0 0 0-1.82-.33 1.65 1.65 0 0 0-1 1.51V21a2 2 0 0 1-2 2 2 2 0 0 1-2-2v-.09A1.65 1.65 0 0 0 9 19.4a1.65 1.65 0 0 0-1.82.33l-.06.06a2 2 0 0 1-2.83 0 2 2 0 0 1 0-2.83l.06-.06a1.65 1.65 0 0 0 .33-1.82 1.65 1.65 0 0 0-1.51-1H3a2 2 0 0 1-2-2 2 2 0 0 1 2-2h.09A1.65 1.65 0 0 0 4.6 9a1.65 1.65 0 0 0-.33-1.82l-.06-.06a2 2 0 0 1 0-2.83 2 2 0 0 1 2.83 0l.06.06a1.65 1.65 0 0 0 1.82.33H9a1.65 1.65 0 0 0 1-1.51V3a2 2 0 0 1 2-2 2 2 0 0 1 2 2v.09a1.65 1.65 0 0 0 1 1.51 1.65 1.65 0 0 0 1.82-.33l.06-.06a2 2 0 0 1 2.83 0 2 2 0 0 1 0 2.83l-.06.06a1.65 1.65 0 0 0-.33 1.82V9a1.65 1.65 0 0 0 1.51 1H21a2 2 0 0 1 2 2 2 2 0 0 1-2 2h-.09a1.65 1.65 0 0 0-1.51 1z"></path>
                        </svg>
                        Account settings
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/about">
                        <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor"
                            stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                            style="margin-right: 12px;">
                            <circle cx="12" cy="12" r="10"></circle>
                            <line x1="12" y1="16" x2="12" y2="12"></line>
                            <line x1="12" y1="8" x2="12.01" y2="8"></line>
                        </svg>
                        About us
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/contact">
                        <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor"
                            stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                            style="margin-right: 12px;">
                            <path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"></path>
                            <polyline points="22,6 12,13 2,6"></polyline>
                        </svg>
                        Contact us
                    </a>
                </li>
                <li style="border-top: 1px solid #E0E0E0; margin-top: 4px; padding-top: 4px;">
                    <a href="${pageContext.request.contextPath}/logout" style="color: #D32F2F;">
                        <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor"
                            stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                            style="margin-right: 12px;">
                            <path d="M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4"></path>
                            <polyline points="16 17 21 12 16 7"></polyline>
                            <line x1="21" y1="12" x2="9" y2="12"></line>
                        </svg>
                        Logout
                    </a>
                </li>
            </ul>
        </div>
    </div>

    <script>
        (function () {
            const toggle = document.getElementById('userMenuToggle');
            const dropdown = document.getElementById('userDropdownMenu');
            const wrapper = document.getElementById('userMenuWrapper');

            if (toggle && dropdown) {
                toggle.addEventListener('click', function (e) {
                    e.stopPropagation();
                    dropdown.classList.toggle('active');
                });

                document.addEventListener('click', function (e) {
                    if (wrapper && !wrapper.contains(e.target)) {
                        dropdown.classList.remove('active');
                    }
                });
            }
        })();
    </script>
</aside>
