<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Poll Management - Neighborly</title>
	<link rel = "stylesheet" href = "<%= request.getContextPath() %>/CSS/Admin-Side.css">
	
	<style>
		
		.poll-page-wrapper {
			max-width: 1040px;
			margin: 0 auto;
			paddin-top: 16px;
		}
		
		.page-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 24px;
        }
        
        .page-title {
            font-size: 32px;
            font-weight: 700;
            color: #ffffff;
            margin: 0;
        }
        
        .divider {
            border: 0;
            height: 1px;
            background-color: #323639;
            margin-bottom: 40px;
            width: 100%;
        }
        
        .polls-stat-container {
            display: flex;
            gap: 24px; 
            margin-bottom: 40px;
        }
        
        .stat-card-poll {
            flex: 1; 
            background-color: #212224;
            border: 1px solid #323639;
            border-radius: 10px;
            padding: 24px 32px;
            display: flex;
            align-items: center;
            gap: 24px;
            height: 130px;
            transition: border-color 0.2s, transform 0.2s;
        }
	
	
	
	
	
	</style>
</head>

<body>

<jsp:include page="/components/admin-sidebar.jsp" />

<div class="main-content">

    <!-- TOPBAR COMPONENT -->
    <% request.setAttribute("pageTitle", "Admin Dashboard"); %>
    <jsp:include page="/components/admin-topbar.jsp" />

    <main class="dashboard-body">
        
        <!-- Wraps content to center it automatically -->
        <div class="poll-page-wrapper">
            
            <div class="page-header">
                <h1 class="page-title">Polls Management</h1>
                <button class="btn btn-primary">
                    <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><line x1="12" y1="5" x2="12" y2="19"></line><line x1="5" y1="12" x2="19" y2="12"></line></svg>
                    Create New Poll
                </button>
            </div>
            
            <hr class="divider">

            <!-- STAT CARDS (Now Centered and Spaced) -->
            <div class="polls-stat-container">
                <!-- Card 1 -->
                <div class="stat-card-poll">
                    <div class="stat-icon-wrap">
                        <div class="stat-bars bars-green">
                            <div class="bar h-50"></div><div class="bar h-80"></div><div class="bar h-100"></div><div class="bar h-60"></div>
                        </div>
                    </div>
                    <div class="stat-info">
                        <span class="stat-label">Total Polls</span>
                        <span class="stat-value">3</span>
                    </div>
                </div>

                <!-- Card 2 -->
                <div class="stat-card-poll">
                    <div class="stat-icon-wrap">
                        <div class="stat-bars bars-orange">
                            <div class="bar h-60"></div><div class="bar h-100"></div><div class="bar h-80"></div>
                        </div>
                    </div>
                    <div class="stat-info">
                        <span class="stat-label">Active Polls</span>
                        <span class="stat-value">2</span>
                    </div>
                </div>

                <!-- Card 3 -->
                <div class="stat-card-poll">
                    <div class="stat-icon-wrap">
                        <div class="stat-bars bars-blue">
                            <div class="bar h-70"></div><div class="bar h-40"></div><div class="bar h-100"></div>
                        </div>
                    </div>
                    <div class="stat-info">
                        <span class="stat-label">Total Votes</span>
                        <span class="stat-value">8</span>
                    </div>
                </div>
            </div>
</body>
	
</html>
