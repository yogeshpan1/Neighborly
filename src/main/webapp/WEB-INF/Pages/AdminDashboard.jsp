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

<div class="main-content">

    <!-- TOPBAR component -->
    <% request.setAttribute("pageTitle", "Admin Dashboard"); %>
    <jsp:include page="/components/admin-topbar.jsp" />

    <!-- DASHBOARD BODY -->
    <main class="dashboard-body">

        <!-- STAT CARDS -->
        <div class="stats-grid">
            <div class="stat-card">
                <div class="stat-icon-wrap">
                    <div class="stat-bars bars-green">
                        <div class="bar h-40"></div><div class="bar h-60"></div><div class="bar h-80"></div><div class="bar h-100"></div><div class="bar h-60"></div>
                    </div>
                </div>
                <div class="stat-info">
                    <span class="stat-label">Total citizens</span>
                    <span class="stat-value">1,342</span>
                    <span class="stat-trend green">▲ +22 this week</span>
                </div>
            </div>
            <div class="stat-card">
                <div class="stat-icon-wrap">
                     <div class="stat-bars bars-orange">
                        <div class="bar h-50"></div><div class="bar h-80"></div><div class="bar h-100"></div><div class="bar h-60"></div>
                    </div>
                </div>
                <div class="stat-info">
                    <span class="stat-label">Open civic issues</span>
                    <span class="stat-value">8</span>
                    <span class="stat-trend orange">Needs attention</span>
                </div>
            </div>
            <div class="stat-card">
                <div class="stat-icon-wrap">
                     <div class="stat-bars bars-blue">
                        <div class="bar h-70"></div><div class="bar h-50"></div><div class="bar h-100"></div>
                    </div>
                </div>
                <div class="stat-info">
                    <span class="stat-label">Documents pending</span>
                    <span class="stat-value">14</span>
                    <span class="stat-trend orange">Awaiting review</span>
                </div>
            </div>
            <div class="stat-card">
                <div class="stat-icon-wrap">
                     <div class="stat-bars bars-yellow">
                        <div class="bar h-100"></div><div class="bar h-80"></div>
                    </div>
                </div>
                <div class="stat-info">
                    <span class="stat-label">Active polls</span>
                    <span class="stat-value">3</span>
                    <span class="stat-trend orange">On track</span>
                </div>
            </div>
        </div>

        <!-- MAIN GRID -->
        <div class="dashboard-grid">
            <!-- LEFT COLUMN -->
            <div class="left-col">
                <div class="panel">
                    <div class="panel-header">
                        <span class="panel-title">Recent civic issues</span>
                        <a href="CivicIssueList.jsp" class="view-all-link">View all</a>
                    </div>
                    <table class="data-table">
                        <thead>
                            <tr><th>Citizen</th><th>Category</th><th>Submitted</th><th>Status</th></tr>
                        </thead>
                        <tbody>
                            <tr><td class="primary-text">Arjun Sharma</td><td class="secondary-text">Roads</td><td class="secondary-text">Apr 8</td><td><span class="badge badge-pending">Pending</span></td></tr>
                            <tr><td class="primary-text">Priya Thapa</td><td class="secondary-text">Lighting</td><td class="secondary-text">Apr 8</td><td><span class="badge badge-progress">In progress</span></td></tr>
                            <tr><td class="primary-text">Rohan KC</td><td class="secondary-text">Waste</td><td class="secondary-text">Apr 7</td><td><span class="badge badge-resolved">Resolved</span></td></tr>
                        </tbody>
                    </table>
                </div>
                <div class="panel">
                    <div class="panel-header">
                        <span class="panel-title">News &amp; Jobs</span>
                        <a href="NewsList.jsp" class="view-all-link">View all</a>
                    </div>
                    <table class="data-table">
                        <thead>
                            <tr><th>Title</th><th>Type</th><th>Date</th><th>Status</th></tr>
                        </thead>
                        <tbody>
                            <tr><td class="secondary-text">Road closure notice — Baneshwor</td><td><span class="type-badge">News</span></td><td class="secondary-text">Apr 8</td><td><span class="badge badge-published">Published</span></td></tr>
                        </tbody>
                    </table>
                </div>
            </div>

            <!-- RIGHT COLUMN -->
            <div class="right-col">
                <div class="panel">
                    <div class="panel-header">
                        <span class="panel-title">Active polls</span>
                        <a href="PollList.jsp" class="view-all-link">View all</a>
                    </div>
                    <div class="poll-item">
                        <div class="poll-icon-box">
                            <div class="stat-bars bars-blue" style="height: 16px; gap: 2px;"><div class="bar h-60" style="width: 3px;"></div><div class="bar h-100" style="width: 3px;"></div><div class="bar h-80" style="width: 3px;"></div></div>
                        </div>
                        <div class="poll-details">
                            <h4>New bus route — Kalanki</h4>
                            <p class="poll-meta">142 votes &middot; Closes Apr 15</p>
                        </div>
                    </div>
                    <div class="poll-item">
                        <div class="poll-icon-box">
                             <div class="stat-bars bars-blue" style="height: 16px; gap: 2px;"><div class="bar h-60" style="width: 3px;"></div><div class="bar h-100" style="width: 3px;"></div><div class="bar h-80" style="width: 3px;"></div></div>
                        </div>
                        <div class="poll-details">
                            <h4>Footpaths or speed bumps?</h4>
                            <p class="poll-meta">89 votes &middot; Closes Apr 18</p>
                        </div>
                    </div>
                </div>
                <div class="panel">
                    <div class="panel-header">
                        <span class="panel-title">Document vault</span>
                        <a href="DocumentList.jsp" class="view-all-link">View all</a>
                    </div>
                    <div class="stat-row"><span class="stat-row-label">Total documents</span><span class="stat-row-value">407</span></div>
                    <div class="stat-row"><span class="stat-row-label">Pending verification</span><span class="stat-row-value value-orange">14</span></div>
                    <div class="stat-row"><span class="stat-row-label">Verified</span><span class="stat-row-value value-green">393</span></div>
                </div>
                <div class="panel">
                    <div class="panel-header">
                        <span class="panel-title">Application Status</span>
                        <a href="ApplicationList.jsp" class="view-all-link">View all</a>
                    </div>
                    <div class="stat-row"><span class="stat-row-label">Total Applications</span><span class="stat-row-value">10</span></div>
                    <div class="stat-row"><span class="stat-row-label">Pending Applications</span><span class="stat-row-value value-orange">2</span></div>
                    <div class="stat-row"><span class="stat-row-label">Verified Applications</span><span class="stat-row-value value-green">8</span></div>
                </div>
            </div>
        </div>
    </main>
</div>
</body>
</html>
