<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=1440">
        <title>Neighborly</title>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/home.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/sidebar.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/navbar.css">
    </head>

    <body>

                    <jsp:include page="/Components/sidebar.jsp" />
            <div class="mainContent">
                <jsp:include page="/Components/navbar.jsp" />
                <div class="dashboardArea">
                    <div class="searchContainer">
                        <div class="searchWrapper">
                            <svg class="searchIcon" width="16" height="16" viewBox="0 0 24 24" fill="none"
                                stroke="#999999" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <circle cx="11" cy="11" r="8"></circle>
                                <line x1="21" y1="21" x2="16.65" y2="16.65"></line>
                            </svg>
                            <input type="text" class="searchInput"
                                placeholder="Search services, documents, or applications..." />
                        </div>
                    </div>

                    <div class="servicesSection">
                        <h2 class="sectionTitle">Available Services</h2>
                        <div class="servicesList">
                            <div class="serviceItem">
                                <div class="serviceIconBox">
                                    <svg width="28" height="28" viewBox="0 0 24 24" fill="none" stroke="#C05A2A"
                                        stroke-width="1.6" stroke-linecap="round" stroke-linejoin="round">
                                        <rect x="2" y="5" width="20" height="14" rx="2" ry="2" />
                                        <circle cx="8" cy="12" r="2.5" />
                                        <line x1="13" y1="9" x2="20" y2="9" />
                                        <line x1="13" y1="12" x2="18" y2="12" />
                                        <line x1="13" y1="15" x2="16" y2="15" />
                                    </svg>
                                </div>
                                <span class="serviceLabel">National ID</span>
                            </div>
                            <div class="serviceItem">
                                <div class="serviceIconBox">
                                    <svg width="28" height="28" viewBox="0 0 24 24" fill="none" stroke="#C05A2A"
                                        stroke-width="1.6" stroke-linecap="round" stroke-linejoin="round">
                                        <rect x="1" y="8" width="22" height="10" rx="2" />
                                        <path d="M5 8V6a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2v2" />
                                        <circle cx="7.5" cy="15" r="1.5" />
                                        <circle cx="16.5" cy="15" r="1.5" />
                                        <line x1="9" y1="15" x2="15" y2="15" />
                                    </svg>
                                </div>
                                <span class="serviceLabel">Driving License</span>
                            </div>
                            <div class="serviceItem">
                                <div class="serviceIconBox">
                                    <svg width="28" height="28" viewBox="0 0 24 24" fill="none" stroke="#C05A2A"
                                        stroke-width="1.6" stroke-linecap="round" stroke-linejoin="round">
                                        <rect x="2" y="5" width="20" height="14" rx="2" ry="2" />
                                        <line x1="2" y1="10" x2="22" y2="10" />
                                        <line x1="6" y1="15" x2="10" y2="15" />
                                        <line x1="13" y1="15" x2="17" y2="15" />
                                    </svg>
                                </div>
                                <span class="serviceLabel">PAN Card</span>
                            </div>
                            <div class="serviceItem">
                                <div class="serviceIconBox">
                                    <svg width="28" height="28" viewBox="0 0 24 24" fill="none" stroke="#C05A2A"
                                        stroke-width="1.6" stroke-linecap="round" stroke-linejoin="round">
                                        <path d="M3 9.5L12 3l9 6.5V20a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V9.5z" />
                                        <polyline points="9 21 9 13 15 13 15 21" />
                                    </svg>
                                </div>
                                <span class="serviceLabel">Property Tax</span>
                            </div>
                            <div class="serviceItem">
                                <div class="serviceIconBox">
                                    <svg width="28" height="28" viewBox="0 0 24 24" fill="none" stroke="#C05A2A"
                                        stroke-width="1.6" stroke-linecap="round" stroke-linejoin="round">
                                        <path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z" />
                                        <polyline points="14 2 14 8 20 8" />
                                        <line x1="8" y1="13" x2="16" y2="13" />
                                        <line x1="8" y1="17" x2="13" y2="17" />
                                    </svg>
                                </div>
                                <span class="serviceLabel">Bluebook</span>
                            </div>
                            <div class="serviceItem">
                                <div class="serviceIconBox">
                                    <svg width="28" height="28" viewBox="0 0 24 24" fill="none" stroke="#C05A2A"
                                        stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                        <circle cx="5" cy="12" r="1.5" fill="#C05A2A" />
                                        <circle cx="12" cy="12" r="1.5" fill="#C05A2A" />
                                        <circle cx="19" cy="12" r="1.5" fill="#C05A2A" />
                                    </svg>
                                </div>
                                <span class="serviceLabel">Other Services</span>
                            </div>

                        </div>
                    </div>

                    <div class="applicationsSection">
                        <div class="sectionHeader">
                            <h2 class="sectionTitle">My applications</h2>
                            <a href="#" class="viewAllLink">View all &rarr;</a>
                        </div>
                        <div class="appList">
                            <div class="appListItem">
                                <div class="appStatusLine lineYellow"></div>
                                <div class="appInfo">
                                    <div class="appTitle">PAN card application</div>
                                    <div class="appDesc">#APP-2026-981 &middot; Submitted Mar 28</div>
                                </div>
                                <div class="appStatusBadge badgeYellow">Under review</div>
                            </div>
                            <div class="appListItem">
                                <div class="appStatusLine lineGreen"></div>
                                <div class="appInfo">
                                    <div class="appTitle">Bluebook renewal</div>
                                    <div class="appDesc">#APP-2026-847 &middot; Submitted Mar 10</div>
                                </div>
                                <div class="appStatusBadge badgeGreen">Approved</div>
                            </div>
                        </div>
                    </div>

                    <div class="finesSection">
                        <div class="sectionHeader">
                            <h2 class="sectionTitle">Pending fines</h2>
                            <a href="#" class="viewAllLink">View all &rarr;</a>
                        </div>
                        <div class="fineListItem">
                            <div class="appStatusLine lineRed"></div>
                            <div class="fineInfo">
                                <div class="fineTitle">Parking violation</div>
                                <div class="fineDesc">April 5, 2026 &middot; Main Street, Lalitpur</div>
                                <div class="fineBadge badgeRed">Unpaid</div>
                            </div>
                            <div class="fineAction">
                                <div class="fineAmount">Rs. 500</div>
                                <button class="payFineButton">Pay fine</button>
                            </div>
                        </div>
                    </div>

                    <div class="bottomCards">
                        <div class="pollCard">
                            <div class="cardHeader">
                                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#8C4020"
                                    stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                    <line x1="18" y1="20" x2="18" y2="10" />
                                    <line x1="12" y1="20" x2="12" y2="4" />
                                    <line x1="6" y1="20" x2="6" y2="14" />
                                </svg>
                                <h3 class="cardTitle">Community Poll</h3>
                            </div>
                            <p class="pollQuestion">Should the Singha Durbar be redeveloped as a National Heritage
                                Site?</p>
                            <div class="pollOptions">
                                <div class="pollOption">
                                    <span class="pollOptionText">Yes, preserve the heritage</span>
                                    <div class="radioCircle"></div>
                                </div>
                                <div class="pollOption">
                                    <span class="pollOptionText">No, leave it as it is</span>
                                    <div class="radioCircle"></div>
                                </div>
                            </div>
                        </div>
                        <div class="reportCard">
                            <div class="reportIconWrapper">
                                <svg width="48" height="48" viewBox="0 0 24 24" fill="none" stroke="#C05A2A"
                                    stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
                                    <path
                                        d="M10.29 3.86L1.82 18a2 2 0 0 0 1.71 3h16.94a2 2 0 0 0 1.71-3L13.71 3.86a2 2 0 0 0-3.42 0z" />
                                    <line x1="12" y1="9" x2="12" y2="13" />
                                    <line x1="12" y1="17" x2="12.01" y2="17" />
                                </svg>
                            </div>
                            <h3 class="reportTitle">See a problem? Report it.</h3>
                            <p class="reportDesc">Help us keep Neighborly beautiful. Report potholes, broken lights,
                                or
                                trash accumulation.</p>
                            <button class="reportButton">File a Report</button>
                        </div>

                    </div>

                </div>
            </div>
    </body>
</html>
