<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Neighborly</title>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/news.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/sidebar.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/navbar.css">
    </head>

    <body>

            <jsp:include page="/Components/sidebar.jsp" />
            <div class="mainContent">
                <jsp:include page="/Components/navbar.jsp" />
                    <div class="contentArea">
                        <div class="dashboardGrid">
                            <div class="feedColumn">
                                <div class="featuredArticle">
                                    <div class="featuredImage"
                                        style="background: linear-gradient(to top, rgba(30, 60, 40, 0.9), rgba(50, 90, 60, 0.2)), url('<%=request.getContextPath()%>/Images/cleanup.jpg') center/cover;">
                                        <h2 class="featuredTitle">Ward 4 launches three-month Bagmati river corridor
                                            cleanup & restoration drive</h2>
                                    </div>
                                    <div class="featuredContent">
                                        <p>Caught an incredible sunset at Oak Ridge Park today. It's so quiet and
                                            peaceful this time of year. We really are lucky to have such a great
                                            green space right in our backyard. Does anyone know if the city plans to
                                            install more benches near the pond area.Caught an incredible sunset at
                                            Oak Ridge Park today. It's so quiet and peaceful this time of year. We
                                            really are lucky to have such a great green space right in our backyard.
                                            Does anyone know if the city plans to install more benches near the pond
                                            area?</p>
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
                                        <img src="<%=request.getContextPath()%>/Images/meeting.jpg"
                                            alt="Footpath repairs"
                                            style="width: 100px; height: 100px; object-fit: cover; border-radius: 8px;">
                                        <div class="storyContent">
                                            <div class="storyMeta"><span class="storyBadge badgeOfficial"
                                                    style="display:inline-block; width:auto; min-width:auto; height:auto; padding:2px 8px; margin-right:8px;">OFFICIAL</span>
                                                6h ago 3 min</div>
                                            <h3 class="storyTitle">Ward Committee approves NPR 12M budget for
                                                footpath repairs</h3>
                                            <p class="storyExcerpt">Caught an incredible sunset at Oak Ridge Park
                                                today. It's so quiet and peaceful this time of year. We really are
                                                lucky to have such a great green space right in our backyard. Does
                                                anyone know if the city.</p>
                                            <div class="storyFooter">
                                                <span class="storySource">Ward 4 Bulletin</span>
                                                <button class="bookmarkButton">
                                                    <svg width="20" height="20" viewBox="0 0 24 24" fill="none"
                                                        stroke="currentColor" stroke-width="2"
                                                        stroke-linecap="round" stroke-linejoin="round">
                                                        <path d="M19 21l-7-5-7 5V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2z">
                                                        </path>
                                                    </svg>
                                                </button>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="storyCard">
                                        <img src="<%=request.getContextPath()%>/Images/traffic.jpg"
                                            alt="Traffic marshals"
                                            style="width: 100px; height: 100px; object-fit: cover; border-radius: 8px;">
                                        <div class="storyContent">
                                            <div class="storyMeta"><span class="storyBadge badgeAlert"
                                                    style="display:inline-block; width:auto; min-width:auto; height:auto; padding:2px 8px; margin-right:8px;">ALERT</span>
                                                6h ago 3 min</div>
                                            <h3 class="storyTitle">New traffic marshals deployed at Pulchowk
                                                intersection</h3>
                                            <p class="storyExcerpt">Caught an incredible sunset at Oak Ridge Park
                                                today. It's so quiet and peaceful this time of year. We really are
                                                lucky to have such a great green space right in our backyard. Does
                                                anyone know if the city.</p>
                                            <div class="storyFooter">
                                                <span class="storySource">Kathmandu Post</span>
                                                <button class="bookmarkButton">
                                                    <svg width="20" height="20" viewBox="0 0 24 24" fill="none"
                                                        stroke="currentColor" stroke-width="2"
                                                        stroke-linecap="round" stroke-linejoin="round">
                                                        <path d="M19 21l-7-5-7 5V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2z">
                                                        </path>
                                                    </svg>
                                                </button>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="storyCard">
                                        <img src="<%=request.getContextPath()%>/Images/water.jpg" alt="Water supply"
                                            style="width: 100px; height: 100px; object-fit: cover; border-radius: 8px;">
                                        <div class="storyContent">
                                            <div class="storyMeta"><span class="storyBadge badgeUpdate"
                                                    style="display:inline-block; width:auto; min-width:auto; height:auto; padding:2px 8px; margin-right:8px;">UPDATE</span>
                                                6h ago 3 min</div>
                                            <h3 class="storyTitle">Water supply restoration timeline revised — back
                                                online Apr 18</h3>
                                            <p class="storyExcerpt">Caught an incredible sunset at Oak Ridge Park
                                                today. It's so quiet and peaceful this time of year. We really are
                                                lucky to have such a great green space right in our backyard. Does
                                                anyone know if the city.</p>
                                            <div class="storyFooter">
                                                <span class="storySource">KUKL Notice</span>
                                                <button class="bookmarkButton">
                                                    <svg width="20" height="20" viewBox="0 0 24 24" fill="none"
                                                        stroke="currentColor" stroke-width="2"
                                                        stroke-linecap="round" stroke-linejoin="round">
                                                        <path d="M19 21l-7-5-7 5V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2z">
                                                        </path>
                                                    </svg>
                                                </button>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="storyCard">
                                        <img src="<%=request.getContextPath()%>/Images/health.jpg" alt="Health camp"
                                            style="width: 100px; height: 100px; object-fit: cover; border-radius: 8px;">
                                        <div class="storyContent">
                                            <div class="storyMeta"><span class="storyBadge badgeCommunity"
                                                    style="display:inline-block; width:auto; min-width:auto; height:auto; padding:2px 8px; margin-right:8px;">COMMUNITY</span>
                                                6h ago 3 min</div>
                                            <h3 class="storyTitle">Community health camp at Patan Dhoka — free
                                                check-ups this Sat</h3>
                                            <p class="storyExcerpt">Caught an incredible sunset at Oak Ridge Park
                                                today. It's so quiet and peaceful this time of year. We really are
                                                lucky to have such a great green space right in our backyard. Does
                                                anyone know if the city.</p>
                                            <div class="storyFooter">
                                                <span class="storySource">Ward 4 Health Desk</span>
                                                <button class="bookmarkButton">
                                                    <svg width="20" height="20" viewBox="0 0 24 24" fill="none"
                                                        stroke="currentColor" stroke-width="2"
                                                        stroke-linecap="round" stroke-linejoin="round">
                                                        <path d="M19 21l-7-5-7 5V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2z">
                                                        </path>
                                                    </svg>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="rightSidebar">
                                <div class="wardMeetingCard">
                                    <div class="meetingIcon">
                                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                            stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                            stroke-linejoin="round">
                                            <path d="M4 15s1-1 4-1 5 2 8 2 4-1 4-1V3s-1 1-4 1-5-2-8-2-4 1-4 1z">
                                            </path>
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
                                            <div class="widgetItemTitle">Property tax deadline extended to Apr 30
                                            </div>
                                            <div class="widgetItemMeta">KMC Revenue Dept · Today</div>
                                        </li>
                                        <li>
                                            <div class="widgetItemTitle">Load-shedding updated — 4h daily Apr 14
                                            </div>
                                            <div class="widgetItemMeta">NEA Ward 4 · Yesterday</div>
                                        </li>
                                        <li>
                                            <div class="widgetItemTitle">Birth registration — no fees until May 1
                                            </div>
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
