<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Neighborly</title>
  <link rel="stylesheet" href="CSS/feed.css">
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

    <!-- SIDEBAR -->
    
      <aside class="sidebar">
                    <a href="Home.jsp" class="sidebarLogo">
                        <img src="<%=request.getContextPath()%>/Images/Logo.png" alt="" class="sidebarLogoImg" />
                    </a>
      
      <p class="sidebarSectionLabel">MAIN</p>
      <ul class="sidebarNav">
        <li>
          <a href="Home.jsp">
            <span class="navIcon">
              <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"/>
                <polyline points="9 22 9 12 15 12 15 22"/>
              </svg>
            </span>
            Home
          </a>
        </li>
        <li>
          <a href="Feed.jsp" class="active">
            <span class="navIcon">
              <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z"/>
              </svg>
            </span>
            Feed
          </a>
        </li>
        <li>
          <a href="News.jsp">
            <span class="navIcon">
              <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <path d="M14 2H6a2 2 0 0 0-2 2v16c0 1.1.9 2 2 2h12a2 2 0 0 0 2-2V8l-6-6z"/>
                <path d="M14 3v5h5M16 13H8M16 17H8M10 9H8"/>
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
              <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <path d="M13 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V9z"/>
                <polyline points="13 2 13 9 20 9"/>
              </svg>
            </span>
            Document vault
          </a>
        </li>
        <li>
          <a href="Applications.jsp">
            <span class="navIcon">
              <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <path d="M16 4h2a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2h2"/>
                <rect x="8" y="2" width="8" height="4" rx="1" ry="1"/>
              </svg>
            </span>
            Applications
          </a>
        </li>
        <li>
          <a href="PaymentsAndFines.jsp">
            <span class="navIcon">
              <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <rect x="2" y="5" width="20" height="14" rx="2" ry="2"/>
                <line x1="2" y1="10" x2="22" y2="10"/>
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
              <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <circle cx="12" cy="12" r="10"/>
                <line x1="12" y1="8" x2="12" y2="12"/>
                <line x1="12" y1="16" x2="12.01" y2="16"/>
              </svg>
            </span>
            Report issue
          </a>
        </li>
        <li>
          <a href="Polls.jsp">
            <span class="navIcon">
              <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <line x1="18" y1="20" x2="18" y2="10"/>
                <line x1="12" y1="20" x2="12" y2="4"/>
                <line x1="6" y1="20" x2="6" y2="14"/>
              </svg>
            </span>
            Polls
          </a>
        </li>
        <li>
          <a href="Notices.jsp">
            <span class="navIcon">
              <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <path d="M18 8A6 6 0 0 0 6 8c0 7-3 9-3 9h18s-3-2-3-9"/>
                <path d="M13.73 21a2 2 0 0 1-3.46 0"/>
              </svg>
            </span>
            Notices
          </a>
        </li>
      </ul>

      <!-- User -->
      <div class="sidebar-user">
        <div class="avatar"><%= userInitials %></div>
        <div>
          <div class="user-name"><%= userName %></div>
          <div class="user-role"><%= userRole %></div>
        </div>
      </div>

    </aside>

    <!-- MAIN CONTENT - FEED -->
    <div class="main">

         <!-- TOPBAR -->
                <header class="topbar">
                    <div class="topbarLeft">
                        <h1>Feed</h1>
                    </div>
                    <div class="topbarRight">
                        <button class="bellIcon" title="Notifications">
                            <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M18 8A6 6 0 0 0 6 8c0 7-3 9-3 9h18s-3-2-3-9"></path>
                                <path d="M13.73 21a2 2 0 0 1-3.46 0"></path>
                            </svg>
                            <span class="notifDot"></span>
                        </button>
                    </div>
                </header>

      <div class="content">
        <div class="feed-center">

          <!-- Composer -->
          <div class="feed-card composer">
            <div class="composer-top">
              <div class="composer-avatar"><%= userInitials %></div>
              <input type="text" class="composer-input" placeholder="Start a conversation with your neighbors..." />
            </div>
            <div class="composer-bottom">
              <button class="photo-btn">Add Photo</button>
              <button class="post-btn">Post</button>
            </div>
          </div>

          <!-- Post 1 -->
          <div class="feed-card post">
            <div class="post-header">
              <div class="post-avatar green-av">PS</div>
              <div>
                <div class="post-author">Prayush Shrestha</div>
                <div class="post-time">2h ago</div>
              </div>
            </div>
            <div class="post-title">Beautiful evening at Oak Ridge Park</div>
            <p class="post-body">Caught an incredible sunset at Oak Ridge Park today. It's so quiet and peaceful this time of year. We really are lucky to have such a great green space right in our backyard. Does anyone know if the city plans to install more benches near the pond area?</p>
            <div class="post-image">
              <img src="<%= request.getContextPath() %>/Images/nature.jpg" alt="Nature">
            </div>
            <div class="post-actions">
              <div class="vote">
                <button class="vote-btn">
                  <img src="<%= request.getContextPath() %>/Images/up.png" alt="up" class="vote-img">
                </button>
                <span>42</span>
                <button class="vote-btn">
                  <img src="<%= request.getContextPath() %>/Images/down.png" alt="down" class="vote-img">
                </button>
              </div>
              <button class="action-btn">12 Comments</button>
              <button class="action-btn">Repost</button>
              <button class="action-btn save-btn">Save</button>
            </div>
          </div>

          <!-- Post 2 -->
          <div class="feed-card post">
            <div class="post-header">
              <div class="post-avatar blue-av">AR</div>
              <div>
                <div class="post-author">Arjan Regmi</div>
                <div class="post-time">5h ago</div>
              </div>
            </div>
            <div class="post-title urgent">URGENT: Lost Golden Retriever</div>
            <div class="alert-box">
              Found near Main & 4th — currently safe, no collar or tags
            </div>
            <div class="post-actions">
              <div class="vote">
                <button class="vote-btn">
                  <img src="<%= request.getContextPath() %>/Images/up.png" alt="up" class="vote-img">
                </button>
                <span>42</span>
                <button class="vote-btn">
                  <img src="<%= request.getContextPath() %>/Images/down.png" alt="down" class="vote-img">
                </button>
              </div>
              <button class="action-btn">12 Comments</button>
              <button class="action-btn">Repost</button>
              <button class="action-btn save-btn">Save</button>
            </div>
          </div>

          <!-- Post 3 -->
          <div class="feed-card post">
            <div class="post-header">
              <div class="post-avatar teal-av">YP</div>
              <div>
                <div class="post-author">Yogesh Pant</div>
                <div class="post-time">Yesterday</div>
              </div>
            </div>
            <div class="post-title link-title">Thoughts on proposed KTM Street bike lanes?</div>
            <p class="post-body">The Metropolitan is discussing the proposal for protected bike lanes on Durbar Marg next Tuesday's meeting. This would mean losing about 20% of the current street parking.</p>
            <div class="post-actions">
              <div class="vote">
                <button class="vote-btn">
                  <img src="<%= request.getContextPath() %>/Images/up.png" alt="up" class="vote-img">
                </button>
                <span>42</span>
                <button class="vote-btn">
                  <img src="<%= request.getContextPath() %>/Images/down.png" alt="down" class="vote-img">
                </button>
              </div>
              <button class="action-btn">12 Comments</button>
              <button class="action-btn">Repost</button>
              <button class="action-btn save-btn">Save</button>
            </div>
          </div>

        </div>
      </div>
    </div>

  </div>

</body>
</html>