<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Citizen Management - Neighborly</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/CSS/Admin-Side.css">
</head>
<body>

    <div class="mainContent">
        <!-- TOPBAR component -->
        <% request.setAttribute("pageTitle", "Admin Dashboard"); %>
        <jsp:include page="/components/admin-topbar.jsp" />

        <div class="dashboardBody">
            <div class="twoColumnLayout">
                
                <!--LEFT Column-->
                <div class="leftColumn">
                    <div class="pageHeader">
                        <h1 class="pageTitle">Citizen Management</h1>
                        <p class="pageSubtitle">Manage the Community</p>
                    </div>
                    
                    <hr class="divider">

                    <!-- STAT CARDS -->
                    <div class="statsFlex smallStats" style="margin-bottom: 24px;">
                        <div class="statCard statCardSmall">
                            <div class="statIconWrap">
                                <div class="statBars barsGreen">
                                    <div class="bar h40"></div><div class="bar h60"></div><div class="bar h80"></div><div class="bar h100"></div><div class="bar h60"></div>
                                </div>
                            </div>
                            <div class="statInfo">
                                <span class="statLabel">Total citizens</span>
                                <span class="statValue">1,342</span>
                                <span class="statTrend green">+22 this week</span>
                            </div>
                        </div>
                        <div class="statCard statCardSmall">
                            <div class="statIconWrap">
                                 <div class="statBars barsBlue">
                                    <div class="bar h70"></div><div class="bar h50"></div><div class="bar h100"></div>
                                </div>
                            </div>
                            <div class="statInfo">
                                <span class="statLabel">Active Citizens</span>
                                <span class="statValue">1,500</span>
                                <span class="statTrend blue" style="color: #3b82f6; font-size: 11px; margin-top: 4px; font-weight: 600;">Good Standing</span>
                            </div>
                        </div>
                        <div class="statCard statCardSmall">
                            <div class="statIconWrap">
                                 <div class="statBars barsOrange">
                                    <div class="bar h50"></div><div class="bar h80"></div><div class="bar h100"></div><div class="bar h60"></div>
                                </div>
                            </div>
                            <div class="statInfo">
                                <span class="statLabel">Suspended</span>
                                <span class="statValue">42</span>
                                <span class="statTrend orange">Needs attention</span>
                            </div>
                        </div>
                    </div>

                    <div class="citizenList">
                        <!-- Citizen 1 -->
                        <div class="citizenCard">
                            <div class="citizenInfo">
                                <div class="avatarBox">
                                    <div class="nameGroup">
                                    <h3>Arjan Regmi</h3>
                                    <p>ID: #1 &bull; Active</p>
                                </div>
                                <span class="roleTag">Resident</span>
                            </div>
                            <a class="buttonReview" href="<%= request.getContextPath() %>/citizenlist?name=Arjan+Regmi&username=Arjan204&email=arjan%40gmail.com&address=Kathmandu%2C+Nepal">Review</a>
                        </div>

                        <!-- Citizen 2 -->
                        <div class="citizenCard">
                            <div class="citizenInfo">
                                <div class="avatarBox">
                                   </div>
                                <div class="nameGroup">
                                    <h3>Rikesh Adhikari</h3>
                                </div>
                                <span class="roleTag">Resident</span>
                            </div>
                            <a class="buttonReview" href="<%= request.getContextPath() %>/citizenlist?name=Rikesh+Adhikari&username=Rikesh99&email=rikesh%40gmail.com&address=Lalitpur%2C+Nepal">Review</a>
                        </div>
		                </div>
		                </div>
		                </div>
		                </div>
				</body>
				</html>