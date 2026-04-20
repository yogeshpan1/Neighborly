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
                        <i data-lucide="search" width="16" height="16" class="searchIcon"></i>
                        <input type="text" class="searchInput"
                            placeholder="Search services, documents, or applications..." />
                    </div>
                </div>

                <div class="servicesSection">
                    <h2 class="sectionTitle">Available Services</h2>
                    <div class="servicesList">
                        <div class="serviceItem">
                            <div class="serviceIconBox">
                                <i data-lucide="id-card" width="28" height="28"></i>
                            </div>
                            <span class="serviceLabel">National ID</span>
                        </div>
                        <div class="serviceItem">
                            <div class="serviceIconBox">
                                <i data-lucide="car" width="28" height="28"></i>
                            </div>
                            <span class="serviceLabel">Driving License</span>
                        </div>
                        <div class="serviceItem">
                            <div class="serviceIconBox">
                                <i data-lucide="credit-card" width="28" height="28"></i>
                            </div>
                            <span class="serviceLabel">PAN Card</span>
                        </div>
                        <div class="serviceItem">
                            <div class="serviceIconBox">
                                <i data-lucide="house" width="28" height="28"></i>
                            </div>
                            <span class="serviceLabel">Property Tax</span>
                        </div>
                        <div class="serviceItem">
                            <div class="serviceIconBox">
                                <i data-lucide="book-open" width="28" height="28"></i>
                            </div>
                            <span class="serviceLabel">Bluebook</span>
                        </div>
                        <div class="serviceItem">
                            <div class="serviceIconBox">
                                <i data-lucide="ellipsis" width="28" height="28"></i>
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
                            <button class="payFineBtn">Pay fine</button>
                        </div>
                    </div>
                </div>

                <div class="bottomCards">
                    <div class="pollCard">
                        <div class="cardHeader">
                            <i data-lucide="bar-chart-2" width="24" height="24" class="cardIcon"></i>
                            <h3 class="cardTitle">Community Poll</h3>
                        </div>
                        <p class="pollQuestion">Should the Singha Durbar be redeveloped as a National Heritage Site?</p>
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
                            <i data-lucide="triangle-alert" width="48" height="48" class="reportIcon"></i>
                        </div>
                        <h3 class="reportTitle">See a problem? Report it.</h3>
                        <p class="reportDesc">Help us keep Neighborly beautiful. Report potholes, broken lights, or trash accumulation.</p>
                        <button class="reportBtn">File a Report</button>
                    </div>
                </div>

            </div>
        </div>

        <script>lucide.createIcons();</script>
    </body>
</html>