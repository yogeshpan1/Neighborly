<%@ page isELIgnored="false" %>
    <aside class="sidebar">
        <a href="${pageContext.request.contextPath}/Home.jsp" class="sidebarLogo">
            <img src="${pageContext.request.contextPath}/Images/Logo.png" alt="" class="sidebarLogoImg" />
        </a>

        <p class="sidebarSectionLabel">MAIN</p>
        <ul class="sidebarNav">
            <li>
                <a href="${pageContext.request.contextPath}/home">
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
                <a href="${pageContext.request.contextPath}/feed">
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
                <a href="${pageContext.request.contextPath}/news">
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
                <a href="${pageContext.request.contextPath}/documents">
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
                <a href="${pageContext.request.contextPath}/applications">
                    <span class="navIcon">
                        <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor"
                            stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M16 4h2a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2h2">
                            </path>
                            <rect x="8" y="2" width="8" height="4" rx="1" ry="1"></rect>
                        </svg>
                    </span>
                    Applications
                </a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/payments">
                    <span class="navIcon">
                        <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor"
                            stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <rect x="2" y="5" width="20" height="14" rx="2" ry="2"></rect>
                            <line x1="2" y1="10" x2="22" y2="10"></line>
                        </svg>
                    </span>
                    Payments & fines
                </a>
            </li>
        </ul>

        <p class="sidebarSectionLabel">COMMUNITY</p>
        <ul class="sidebarNav">
            <li>
                <a href="${pageContext.request.contextPath}/ReportIssue.jsp">
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
                <a href="${pageContext.request.contextPath}/Polls.jsp">
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
                <a href="${pageContext.request.contextPath}/notices">
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

        <div class="sidebarFooter">
            <div class="userProfile">
                <div class="userAvatar" style="background-color: #E86A33;">
                    G
                </div>
                <div class="userInfo">
                    <span class="userName">
                        ${not empty sessionScope.userName ? sessionScope.userName : 'Guest'}
                    </span>
                    <span class="userRole">
                        ${not empty sessionScope.userRole ? sessionScope.userRole : 'Visitor'}
                    </span>
                </div>
            </div>
        </div>
    </aside>