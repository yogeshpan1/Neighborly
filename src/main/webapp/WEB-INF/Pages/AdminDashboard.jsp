<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - Neighborly</title>
    <!-- MUST use scriptlet here if your server is blocking EL evaluation! -->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/CSS/Admin-Side.css">
</head>
<body>

<!-- SIDEBAR component -->
<jsp:include page="/components/admin-sidebar.jsp" />

<div class="mainContent">

    <!-- TOPBAR component -->
    <% request.setAttribute("pageTitle", "Admin Dashboard"); %>
    <jsp:include page="/components/admin-topbar.jsp" />

    <!-- DASHBOARD BODY -->
    <main class="dashboardBody">

        <!-- STAT CARDS -->
        <div class="statsFlex">
            <div class="statCard">
                <div class="statIconWrap">
                    <div class="statBars barsGreen">
                        <div class="bar h40"></div><div class="bar h60"></div><div class="bar h80"></div><div class="bar h100"></div><div class="bar h60"></div>
                    </div>
                </div>
                <div class="statInfo">
                    <span class="statLabel">Total citizens</span>
                    <span class="statValue">1,342</span>
                    <span class="statTrend green">▲ +22 this week</span>
                </div>
            </div>
            <div class="statCard">
                <div class="statIconWrap">
                     <div class="statBars barsOrange">
                        <div class="bar h50"></div><div class="bar h80"></div><div class="bar h100"></div><div class="bar h60"></div>
                    </div>
                </div>
                <div class="statInfo">
                    <span class="statLabel">Open civic issues</span>
                    <span class="statValue">8</span>
                    <span class="statTrend orange">Needs attention</span>
                </div>
            </div>
            <div class="statCard">
                <div class="statIconWrap">
                     <div class="statBars barsBlue">
                        <div class="bar h70"></div><div class="bar h50"></div><div class="bar h100"></div>
                    </div>
                </div>
                <div class="statInfo">
                    <span class="statLabel">Documents pending</span>
                    <span class="statValue">14</span>
                    <span class="statTrend orange">Awaiting review</span>
                </div>
            </div>
            <div class="statCard">
                <div class="statIconWrap">
                     <div class="statBars barsYellow">
                        <div class="bar h100"></div><div class="bar h80"></div>
                    </div>
                </div>
                <div class="statInfo">
                    <span class="statLabel">Active polls</span>
                    <span class="statValue">3</span>
                    <span class="statTrend orange">On track</span>
                </div>
            </div>
        </div>

        <!-- MAIN GRID -->
        <div class="dashboardFlex">
            <!-- LEFT COLUMN -->
            <div class="leftCol">
                <div class="panel">
                    <div class="panelHeader">
                        <span class="panelTitle">Recent civic issues</span>
                        <a href="CivicIssueList.jsp" class="viewAllLink">View all</a>
                    </div>
                    <table class="dataTable">
                        <thead>
                            <tr><th>Citizen</th><th>Category</th><th>Submitted</th><th>Status</th></tr>
                        </thead>
                        <tbody>
                            <tr><td class="primaryText">Arjun Sharma</td><td class="secondaryText">Roads</td><td class="secondaryText">Apr 8</td><td><span class="badge badgePending">Pending</span></td></tr>
                            <tr><td class="primaryText">Priya Thapa</td><td class="secondaryText">Lighting</td><td class="secondaryText">Apr 8</td><td><span class="badge badgeProgress">In progress</span></td></tr>
                            <tr><td class="primaryText">Rohan KC</td><td class="secondaryText">Waste</td><td class="secondaryText">Apr 7</td><td><span class="badge badgeResolved">Resolved</span></td></tr>
                        </tbody>
                    </table>
                </div>
                <div class="panel">
                    <div class="panelHeader">
                        <span class="panelTitle">News &amp; Jobs</span>
                        <a href="NewsList.jsp" class="viewAllLink">View all</a>
                    </div>
                    <table class="dataTable">
                        <thead>
                            <tr><th>Title</th><th>Type</th><th>Date</th><th>Status</th></tr>
                        </thead>
                        <tbody>
                            <tr><td class="secondaryText">Road closure notice — Baneshwor</td><td><span class="typeBadge">News</span></td><td class="secondaryText">Apr 8</td><td><span class="badge badgePublished">Published</span></td></tr>
                        </tbody>
                    </table>
                </div>
            </div>

            <!-- RIGHT COLUMN -->
            <div class="rightCol">
                <div class="panel">
                    <div class="panelHeader">
                        <span class="panelTitle">Active polls</span>
                        <a href="PollList.jsp" class="viewAllLink">View all</a>
                    </div>
                    <div class="pollItem">
                        <div class="pollIconBox">
                            <div class="statBars barsBlue" style="height: 16px; gap: 2px;"><div class="bar h60" style="width: 3px;"></div><div class="bar h100" style="width: 3px;"></div><div class="bar h80" style="width: 3px;"></div></div>
                        </div>
</html>
