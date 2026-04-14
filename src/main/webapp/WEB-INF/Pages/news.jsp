<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ page import="jakarta.servlet.http.HttpSession" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Neighborly | News </title>
            <link rel="stylesheet" href="CSS/news.css">
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

                <!-- ===== SIDEBAR ===== -->
                <aside class="sidebar">
                    <a href="Home.jsp" class="sidebarLogo">
                        <img src="<%=request.getContextPath()%>/Images/Logo.png" alt="" class="sidebarLogoImg" />
                    </a>

                    <p class="sidebarSectionLabel">MAIN</p>
                    <ul class="sidebarNav">
                        <li>
                            <a href="Home.jsp">
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
                            <a href="Feed.jsp">
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
                            <a href="news.jsp" class="active">
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
                            <a href="DocumentVault.jsp">
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
                            <a href="Applications.jsp">
                                <span class="navIcon">
                                    <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                        stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                        <path
                                            d="M16 4h2a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2h2">
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
                            <a href="ReportIssue.jsp">
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
                            <a href="Polls.jsp">
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
                            <a href="Notices.jsp">
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
                                <%= userInitials %>
                            </div>
                            <div class="userInfo">
                                <span class="userName">
                                    <%= userName %>
                                </span>
                                <span class="userRole">
                                    <%= userRole %>
                                </span>
                            </div>
                        </div>
                    </div>
                </aside>

                <!-- ===== MAIN CONTENT ===== -->
                <div class="mainContent">

                    <!-- TOPBAR -->
                    <header class="topbar">
                        <div class="topbarLeft">
                            <h1>News</h1>
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

                    <!-- CONTENT AREA -->
                    <div class="contentArea">
                        <div class="dashboardGrid">
                            <!-- Left Column: Feed -->
                            <div class="feedColumn">
                                
                                <!-- Featured Article -->
                                <div class="featuredArticle">
                                    <div class="featuredImage" style="background: linear-gradient(to top, rgba(30, 60, 40, 0.9), rgba(50, 90, 60, 0.2)), url('<%=request.getContextPath()%>/Images/cleanup.jpg') center/cover;">
                                        <h2 class="featuredTitle">Ward 4 launches three-month Bagmati river corridor cleanup & restoration drive</h2>
                                    </div>
                                    <div class="featuredContent">
                                        <p>Caught an incredible sunset at Oak Ridge Park today. It's so quiet and peaceful this time of year. We really are lucky to have such a great green space right in our backyard. Does anyone know if the city plans to install more benches near the pond area.Caught an incredible sunset at Oak Ridge Park today. It's so quiet and peaceful this time of year. We really are lucky to have such a great green space right in our backyard. Does anyone know if the city plans to install more benches near the pond area?</p>
                                        <div class="featuredMeta">
                                            <span class="featuredAuthor">KMC Ward 4 Office</span>
                                            <span class="featuredTime">3h ago | 4 min read</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="sectionHeader">
                                    <span class="sectionTitle">LATEST STORIES</span>
                                    <div class="sectionDivider"></div>
                                </div>

                                <div class="storyList">
                                    <div class="storyCard">
                                        <img src="<%=request.getContextPath()%>/Images/meeting.jpg" alt="Footpath repairs" style="width: 100px; height: 100px; object-fit: cover; border-radius: 8px;">
                                        <div class="storyContent">
                                            <div class="storyMeta"><span class="storyBadge badgeOfficial" style="display:inline-block; width:auto; min-width:auto; height:auto; padding:2px 8px; margin-right:8px;">OFFICIAL</span> 6h ago  3 min</div>
                                            <h3 class="storyTitle">Ward Committee approves NPR 12M budget for footpath repairs</h3>
                                            <p class="storyExcerpt">Caught an incredible sunset at Oak Ridge Park today. It's so quiet and peaceful this time of year. We really are lucky to have such a great green space right in our backyard. Does anyone know if the city.</p>
                                            <div class="storyFooter">
                                                <span class="storySource">Ward 4 Bulletin</span>
                                                <button class="bookmarkBtn">
                                                    <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                                        <path d="M19 21l-7-5-7 5V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2z"></path>
                                                    </svg>
                                                </button>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="storyCard">
                                        <img src="<%=request.getContextPath()%>/Images/traffic.jpg" alt="Traffic marshals" style="width: 100px; height: 100px; object-fit: cover; border-radius: 8px;">
                                        <div class="storyContent">
                                            <div class="storyMeta"><span class="storyBadge badgeAlert" style="display:inline-block; width:auto; min-width:auto; height:auto; padding:2px 8px; margin-right:8px;">ALERT</span> 6h ago  3 min</div>
                                            <h3 class="storyTitle">New traffic marshals deployed at Pulchowk intersection</h3>
                                            <p class="storyExcerpt">Caught an incredible sunset at Oak Ridge Park today. It's so quiet and peaceful this time of year. We really are lucky to have such a great green space right in our backyard. Does anyone know if the city.</p>
                                            <div class="storyFooter">
                                                <span class="storySource">Kathmandu Post</span>
                                                <button class="bookmarkBtn">
                                                    <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                                        <path d="M19 21l-7-5-7 5V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2z"></path>
                                                    </svg>
                                                </button>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="storyCard">
                                        <img src="<%=request.getContextPath()%>/Images/water.jpg" alt="Water supply" style="width: 100px; height: 100px; object-fit: cover; border-radius: 8px;">
                                        <div class="storyContent">
                                            <div class="storyMeta"><span class="storyBadge badgeUpdate" style="display:inline-block; width:auto; min-width:auto; height:auto; padding:2px 8px; margin-right:8px;">UPDATE</span> 6h ago  3 min</div>
                                            <h3 class="storyTitle">Water supply restoration timeline revised — back online Apr 18</h3>
                                            <p class="storyExcerpt">Caught an incredible sunset at Oak Ridge Park today. It's so quiet and peaceful this time of year. We really are lucky to have such a great green space right in our backyard. Does anyone know if the city.</p>
                                            <div class="storyFooter">
                                                <span class="storySource">KUKL Notice</span>
                                                <button class="bookmarkBtn">
                                                    <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                                        <path d="M19 21l-7-5-7 5V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2z"></path>
                                                    </svg>
                                                </button>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="storyCard">
                                        <img src="<%=request.getContextPath()%>/Images/health.jpg" alt="Health camp" style="width: 100px; height: 100px; object-fit: cover; border-radius: 8px;">
                                        <div class="storyContent">
                                            <div class="storyMeta"><span class="storyBadge badgeCommunity" style="display:inline-block; width:auto; min-width:auto; height:auto; padding:2px 8px; margin-right:8px;">COMMUNITY</span> 6h ago  3 min</div>
                                            <h3 class="storyTitle">Community health camp at Patan Dhoka — free check-ups this Sat</h3>
                                            <p class="storyExcerpt">Caught an incredible sunset at Oak Ridge Park today. It's so quiet and peaceful this time of year. We really are lucky to have such a great green space right in our backyard. Does anyone know if the city.</p>
                                            <div class="storyFooter">
                                                <span class="storySource">Ward 4 Health Desk</span>
                                                <button class="bookmarkBtn">
                                                    <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                                        <path d="M19 21l-7-5-7 5V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2z"></path>
                                                    </svg>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Right Column: Sidebar Widgets -->
                            <div class="rightSidebar">
                                <div class="wardMeetingCard">
                                    <div class="meetingIcon">
                                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                            <path d="M4 15s1-1 4-1 5 2 8 2 4-1 4-1V3s-1 1-4 1-5-2-8-2-4 1-4 1z"></path>
                                            <line x1="4" y1="22" x2="4" y2="15"></line>
                                        </svg>
                                    </div>
                                    <div class="meetingInfo">
                                        <h4>Ward Meeting — Apr 15</h4>
                                        <p>Budget review & bike lane vote.<br>5:30 PM, Ward Office.</p>
                                    </div>
                                </div>

                                <div class="widgetSection">
                                    <div class="widgetHeader">
                                        <h3>Official Notices</h3>
                                        <a href="#" class="viewAll">View all</a>
                                    </div>
                                    <ul class="widgetList">
                                        <li>
                                            <div class="widgetItemTitle">Property tax deadline extended to Apr 30</div>
                                            <div class="widgetItemMeta">KMC Revenue Dept · Today</div>
                                        </li>
                                        <li>
                                            <div class="widgetItemTitle">Load-shedding updated — 4h daily Apr 14</div>
                                            <div class="widgetItemMeta">NEA Ward 4 · Yesterday</div>
                                        </li>
                                        <li>
                                            <div class="widgetItemTitle">Birth registration — no fees until May 1</div>
                                            <div class="widgetItemMeta">Ward 4 Admin · 2 days ago</div>
                                        </li>
                                        <li>
                                            <div class="widgetItemTitle">Earthquake drill — Apr 25, all wards</div>
                                            <div class="widgetItemMeta">NDRRMA · 3 days ago</div>
                                        </li>
                                    </ul>
                                </div>

                                <div class="widgetSection">
                                    <div class="widgetHeader">
                                        <h3>Upcoming Events</h3>
                                        <a href="#" class="viewAll">See all</a>
                                    </div>
                                    <ul class="eventList">
                                        <li>
                                            <div class="eventDateBox badgeOfficial">
                                                <span class="eventMonth">APR</span>
                                                <span class="eventDay">13</span>
                                            </div>
                                            <div class="eventDetails">
                                                <div class="eventName">Bagmati Cleanup Drive</div>
                                                <div class="eventTime">7:00 AM · Teku Bridge</div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="eventDateBox badgeUpdate">
                                                <span class="eventMonth">APR</span>
                                                <span class="eventDay">15</span>
                                            </div>
                                            <div class="eventDetails">
                                                <div class="eventName">Ward Committee Meeting</div>
                                                <div class="eventTime">5:30 PM · Ward Office Hall B</div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="eventDateBox badgeCommunity">
                                                <span class="eventMonth">APR</span>
                                                <span class="eventDay">19</span>
                                            </div>
                                            <div class="eventDetails">
                                                <div class="eventName">Free Health Camp</div>
                                                <div class="eventTime">8:00 AM – 2:00 PM · Open entry</div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

        </body>

        </html>