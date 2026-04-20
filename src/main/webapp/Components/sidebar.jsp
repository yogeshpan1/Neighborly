<%@ page isELIgnored="false" %>
<script src="https://unpkg.com/lucide@latest"></script>

<aside class="sidebar">
    <a href="${pageContext.request.contextPath}/home" class="sidebarLogo">
        <img src="${pageContext.request.contextPath}/Images/Logo.png" alt="" class="sidebarLogoImg" />
    </a>

    <p class="sidebarSectionLabel">MAIN</p>
    <ul class="sidebarNav">
        <li>
            <a href="${pageContext.request.contextPath}/home">
                <span class="navIcon"><i data-lucide="house" width="18" height="18"></i></span>
                Home
            </a>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/feed">
                <span class="navIcon"><i data-lucide="message-square" width="18" height="18"></i></span>
                Feed
            </a>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/news">
                <span class="navIcon"><i data-lucide="file-text" width="18" height="18"></i></span>
                News
            </a>
        </li>
    </ul>

    <p class="sidebarSectionLabel">SERVICES</p>
    <ul class="sidebarNav">
        <li>
            <a href="${pageContext.request.contextPath}/documents">
                <span class="navIcon"><i data-lucide="file" width="18" height="18"></i></span>
                Document vault
            </a>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/applications">
                <span class="navIcon"><i data-lucide="clipboard" width="18" height="18"></i></span>
                Applications
            </a>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/payments">
                <span class="navIcon"><i data-lucide="credit-card" width="18" height="18"></i></span>
                Payments & fines
            </a>
        </li>
    </ul>

    <p class="sidebarSectionLabel">COMMUNITY</p>
    <ul class="sidebarNav">
        <li>
            <a href="${pageContext.request.contextPath}/ReportIssue.jsp">
                <span class="navIcon"><i data-lucide="alert-circle" width="18" height="18"></i></span>
                Report issue
            </a>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/Polls.jsp">
                <span class="navIcon"><i data-lucide="bar-chart-2" width="18" height="18"></i></span>
                Polls
            </a>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/notices">
                <span class="navIcon"><i data-lucide="bell" width="18" height="18"></i></span>
                Notices
            </a>
        </li>
    </ul>

    <div class="menuWrapper" id="userMenuWrapper">
        <div class="userProfile" id="userMenuToggle">
            <div class="userAvatar" style="background-color: #E86A33;">G</div>
            <div class="userInfo">
                <span class="userName">${user.userName}</span>
                <span class="userRole">Citizen</span>
            </div>
            <i data-lucide="chevron-up" width="16" height="16" style="margin-left:auto; color:#666;"></i>
        </div>

        <div class="menuDropdown" id="userDropdownMenu">
            <ul>
                <li>
                    <a href="${pageContext.request.contextPath}/settings">
                        <i data-lucide="settings" width="16" height="16" style="margin-right:12px;"></i>
                        Account settings
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/about">
                        <i data-lucide="info" width="16" height="16" style="margin-right:12px;"></i>
                        About us
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/contact">
                        <i data-lucide="mail" width="16" height="16" style="margin-right:12px;"></i>
                        Contact us
                    </a>
                </li>
                <li style="border-top: 1px solid #E0E0E0; margin-top: 4px; padding-top: 4px;">
                    <a href="${pageContext.request.contextPath}/logout" style="color: #D32F2F;">
                        <i data-lucide="log-out" width="16" height="16" style="margin-right:12px;"></i>
                        Logout
                    </a>
                </li>
            </ul>
        </div>
    </div>

    <script>
        lucide.createIcons();

        (function() {
            const toggle = document.getElementById('userMenuToggle');
            const dropdown = document.getElementById('userDropdownMenu');
            const wrapper = document.getElementById('userMenuWrapper');

            if (toggle && dropdown) {
                toggle.addEventListener('click', function(e) {
                    e.stopPropagation();
                    dropdown.classList.toggle('active');
                });

                document.addEventListener('click', function(e) {
                    if (wrapper && !wrapper.contains(e.target)) {
                        dropdown.classList.remove('active');
                    }
                });
            }
        })();
    </script>
</aside>