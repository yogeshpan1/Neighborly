<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Neighborly - UserDashboard</title>
  <link rel="stylesheet" href="<%= request.getContextPath() %>/CSS/UserDashboard.css">
</head>

<body>
    <%
                String userName = (String) session.getAttribute("userName");
                String userRole = (String) session.getAttribute("userRole");
                if (userName == null) userName = "Guest";
                if (userRole == null) userRole = "Visitor";
                String userInitials = "G";
                if (userName != null && !userName.trim().isEmpty()) {
                    String[] parts = userName.trim().split("\\s+");
                    if (parts.length > 1) {
                        userInitials = parts[0].substring(0, 1) + parts[1].substring(0, 1);
                    } else {
                        userInitials = userName.substring(0, 1);
                    }
                }
            %>

  <div class="layout">

    <!-- ===== SIDEBAR ===== -->
    <aside class="sidebar">
      <a href="Home.jsp" class="sidebarLogo">
        <img src="<%=request.getContextPath()%>/images/Logo.png" alt="Logo" class="sidebarLogoImg" />
      </a>

      <p class="sidebarSectionLabel">MAIN</p>
      <ul class="sidebarNav">
        <li>
          <a href="Home.jsp" class="active">
            <span class="navIcon">
              <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                stroke-linecap="round" stroke-linejoin="round">
                <path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path>
                <polyline points="9 22 9 12 15 12 15 22"></polyline>
              </svg>
            </span>
            Home
          </a>
        </li>
        <li>
          <a href="Feed.jsp">
            <span class="navIcon">
              <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                stroke-linecap="round" stroke-linejoin="round">
                <path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z"></path>
              </svg>
            </span>
            Feed
          </a>
        </li>
        <li>
          <a href="news.jsp">
            <span class="navIcon">
              <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                stroke-linecap="round" stroke-linejoin="round">
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
          <a href="DocumentVault.jsp">
            <span class="navIcon">
              <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                stroke-linecap="round" stroke-linejoin="round">
                <path d="M13 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V9z"></path>
                <polyline points="13 2 13 9 20 9"></polyline>
              </svg>
            </span>
            Document vault
          </a>
        </li>
        <li>
          <a href="Applications.jsp">
            <span class="navIcon">
              <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                stroke-linecap="round" stroke-linejoin="round">
                <path d="M16 4h2a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2h2">
                </path>
                <rect x="8" y="2" width="8" height="4" rx="1" ry="1"></rect>
              </svg>
            </span>
            Applications
          </a>
        </li>
        <li>
          <a href="PaymentsAndFines.jsp">
            <span class="navIcon">
              <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                stroke-linecap="round" stroke-linejoin="round">
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
          <a href="ReportIssue.jsp">
            <span class="navIcon">
              <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                stroke-linecap="round" stroke-linejoin="round">
                <circle cx="12" cy="12" r="10"></circle>
                <line x1="12" y1="8" x2="12" y2="12"></line>
                <line x1="12" y1="16" x2="12.01" y2="16"></line>
              </svg>
            </span>
            Report issue
          </a>
        </li>
        <li>
          <a href="Polls.jsp">
            <span class="navIcon">
              <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                stroke-linecap="round" stroke-linejoin="round">
                <line x1="18" y1="20" x2="18" y2="10"></line>
                <line x1="12" y1="20" x2="12" y2="4"></line>
                <line x1="6" y1="20" x2="6" y2="14"></line>
              </svg>
            </span>
            Polls
          </a>
        </li>
        <li>
          <a href="Notices.jsp">
            <span class="navIcon">
              <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                stroke-linecap="round" stroke-linejoin="round">
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
            <%= userInitials %>
          </div>
          <div class="userInfo">
            <span class="userName"><%= userName %></span>
            <span class="userRole"><%= userRole %></span>
          </div>
        </div>
      </div>
    </aside>

    <!-- MAIN CONTENT -->
    <div class="main">

      <!-- TOPBAR -->
      <div class="topbar">
        <span class="page-title">Home</span>
        <span class="bell">
          <img src="<%= request.getContextPath() %>/images/notification.jpg" class="bell-icon" alt="Notifications">
        </span>
      </div>

      <div class="content">

        <!-- SEARCH -->
        <div class="search-wrap">
          <input class="search-input" type="text" placeholder="Search services, documents, or applications...">
        </div>

        <!-- SERVICES -->
        <div class="section-header">
          <span class="section-title">Available Services</span>
        </div>

        <div class="services-grid">
          <div class="service-card">
            <div class="service-icon">
              <img src="<%= request.getContextPath() %>/images/national.png" alt="National ID">
            </div>
            <div class="service-label">National ID</div>
          </div>

          <div class="service-card">
            <div class="service-icon">
              <img src="<%= request.getContextPath() %>/images/drive.png" alt="Driving License">
            </div>
            <div class="service-label">Driving License</div>
          </div>

          <div class="service-card">
            <div class="service-icon">
              <img src="<%= request.getContextPath() %>/images/pan.png" alt="PAN Card">
            </div>
            <div class="service-label">PAN Card</div>
          </div>

          <div class="service-card">
            <div class="service-icon">
              <img src="<%= request.getContextPath() %>/images/tax.jpg" alt="Property Tax">
            </div>
            <div class="service-label">Property Tax</div>
          </div>

          <div class="service-card">
            <div class="service-icon">
              <img src="<%= request.getContextPath() %>/images/bluebook.jpg" alt="Bluebook">
            </div>
            <div class="service-label">Bluebook</div>
          </div>

          <div class="service-card">
            <div class="service-icon">
              <img src="<%= request.getContextPath() %>/images/dot.png" alt="Other Services">
            </div>
            <div class="service-label">Other Services</div>
          </div>
        </div>

        <!-- APPLICATIONS -->
        <div class="section-header">
          <span class="section-title">My applications</span>
          <a class="view-all" href="#">View all ▾</a>
        </div>

        <div class="panel">
          <div class="app-item">
            <div class="app-left">
              <div class="app-bar yellow"></div>
              <div>
                <div class="app-name">PAN card application</div>
                <div class="app-sub">APP-2025-181 · Submitted Mar 28</div>
              </div>
            </div>
            <span class="badge badge-review">Under review</span>
          </div>

          <div class="app-item">
            <div class="app-left">
              <div class="app-bar green"></div>
              <div>
                <div class="app-name">Bluebook renewal</div>
                <div class="app-sub">APP-2025-047 · Submitted Mar 10</div>
              </div>
            </div>
            <span class="badge badge-approved">Approved</span>
          </div>
        </div>

        <!-- FINES -->
        <div class="section-header">
          <span class="section-title">Pending fines</span>
          <a class="view-all" href="#">View all ▾</a>
        </div>

        <div class="panel">
          <div class="fine-item">
            <div class="fine-left">
              <div class="fine-bar"></div>
              <div>
                <div class="fine-name">Parking violation</div>
                <div class="fine-meta">Apr 5, 2025 · Main Street, Lalitpur</div>
                <span class="unpaid-badge">Unpaid</span>
              </div>
            </div>
            <div class="fine-right">
              <div class="fine-amount">Rs. 500</div>
              <button class="pay-btn">Pay fine</button>
            </div>
          </div>
        </div>

        <!-- BOTTOM SECTION -->
        <div class="bottom-grid">

          <!-- POLL -->
          <div class="panel poll-panel">
            <div class="poll-title">
              <img src="<%= request.getContextPath() %>/images/communitypoll.png" alt="Community Poll">
              Community Poll
            </div>
            <p class="poll-question">
              Should the Singha Durbar be redeveloped as a National Heritage Site?
            </p>
            <div class="poll-option">
              <span>Yes, preserve the heritage</span>
              <input type="radio" name="poll">
            </div>
            <hr class="divider">
            <div class="poll-option">
              <span>No, leave it as it is</span>
              <input type="radio" name="poll">
            </div>
          </div>

          <!-- REPORT -->
          <div class="panel report-panel">
            <div class="report-icon">
              <img src="<%= request.getContextPath() %>/images/report.jpg" alt="Report Issue">
            </div>
            <div class="report-title">See a problem? Report it.</div>
            <p class="report-desc">
              Help us keep Neighborly beautiful. Report potholes, broken lights, or trash accumulation.
            </p>
            <button class="report-btn">File a Report</button>
          </div>

        </div>

      </div>
    </div>
  </div>

</body>

</html>