<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Poll Management - Neighborly</title>

    <!-- Link to our unified Admin CSS -->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/CSS/Admin-Side.css">
    
    <style>
    
        .poll-page-wrapper {
            max-width: 1040px;
            margin: 0 auto; 
            padding-top: 16px;
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
            flex: 1; /* Automatically stretches to fill the container */
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

        .stat-card-poll:hover {
            border-color: #CFD3D6;
            transform: translateY(-2px);
        }

        .poll-list-container {
            display: flex;
            flex-direction: column;
            gap: 24px; 
        }
        
        .poll-row {
            background-color: #212224;
            border: 1px solid #323639;
            border-radius: 8px;
            padding: 24px 32px; 
            display: flex;
            align-items: center;
            gap: 28px;
            transition: border-color 0.2s, transform 0.2s;
        }
        
        .poll-row:hover {
            border-color: #75787D;
            transform: translateY(-2px);
            box-shadow: 0 4px 12px rgba(0,0,0,0.2); 
        }
        
        .poll-info {
            flex: 1;
        }
        
        .poll-info h4 {
            font-size: 17px;
            font-weight: 600;
            color: #ffffff;
            margin-bottom: 8px;
        }
        
        .poll-info p {
            font-size: 14px;
            color: #75787D;
            margin: 0;
        }
        
        .poll-actions {
            display: flex;
            gap: 16px; 
        }
        
        .btn {
            display: flex;
            align-items: center;
            gap: 8px;
            padding: 10px 22px;
            border: none;
            border-radius: 6px;
            font-size: 13px;
            font-weight: 600;
            cursor: pointer;
            transition: opacity 0.2s, transform 0.1s;
        }
        
        .btn:hover {
            opacity: 0.9;
        }

        .btn:active {
            transform: scale(0.97);
        }
        
        .btn-edit {
            background-color: #323639;
            color: #ffffff;
        }
        
        .btn-delete {
            background-color: #7f1d1d;
            color: #ffffff;
            border: 1px solid #991b1b;
        }

        .btn-primary {
            background-color: #D35400;
            color: #ffffff;
            padding: 12px 24px;
            font-size: 14px;
            box-shadow: 0 4px 12px rgba(211, 84, 0, 0.3);
            transition: all 0.2s;
        }

        .btn-primary:hover {
            background-color: #e65c00;
            transform: translateY(-2px);
            box-shadow: 0 6px 16px rgba(211, 84, 0, 0.4);
            opacity: 1; /* override default btn opacity */
        }
    </style>
</head>
<body>

<!-- SIDEBAR COMPONENT -->
<jsp:include page="/components/admin-sidebar.jsp" />

<div class="main-content">

    <!-- TOPBAR COMPONENT -->
    <% request.setAttribute("pageTitle", "Admin Dashboard"); %>
    <jsp:include page="/components/admin-topbar.jsp" />

    <main class="dashboard-body">
        
        <!-- Wraps content to center it automatically -->
        <div class="poll-page-wrapper">
            
            <div class="page-header">
                <h1 class="page-title">Poll Management</h1>
                <button class="btn btn-primary">
                    <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><line x1="12" y1="5" x2="12" y2="19"></line><line x1="5" y1="12" x2="19" y2="12"></line></svg>
                    Create New Poll
                </button>
            </div>
            
            <hr class="divider">

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

            <hr class="divider">

            <!-- LIST OF POLLS -->
            <div class="poll-list-container">
                
                <div class="poll-row">
                    <div class="poll-icon-box">
                        <div class="stat-bars bars-blue" style="height: 20px; gap: 3px;">
                            <div class="bar h-60" style="width: 4px;"></div>
                            <div class="bar h-100" style="width: 4px;"></div>
                            <div class="bar h-80" style="width: 4px;"></div>
                        </div>
                    </div>
                    <div class="poll-info">
                        <h4>Should the Singha Durbar be redeveloped as a National Heritage Site?</h4>
                        <p>Started 2 days ago &middot; 142 votes</p>
                    </div>
                    <div class="poll-actions">
                        <button class="btn btn-edit">
                            <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7"></path><path d="M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1 1-4 9.5-9.5z"></path></svg>
                            Edit
                        </button>
                        <button class="btn btn-delete">
                            <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><polyline points="3 6 5 6 21 6"></polyline><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path></svg>
                            Delete
                        </button>
                    </div>
                </div>

                <div class="poll-row">
                    <div class="poll-icon-box">
                         <div class="stat-bars bars-blue" style="height: 20px; gap: 3px;">
                            <div class="bar h-60" style="width: 4px;"></div>
                            <div class="bar h-100" style="width: 4px;"></div>
                            <div class="bar h-80" style="width: 4px;"></div>
                        </div>
                    </div>
                    <div class="poll-info">
                        <h4>New Bike Lanes: Main St.</h4>
                        <p>Started 5 days ago &middot; 892 votes</p>
                    </div>
                    <div class="poll-actions">
                        <button class="btn btn-edit">
                            <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7"></path><path d="M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1 1-4 9.5-9.5z"></path></svg>
                            Edit
                        </button>
                        <button class="btn btn-delete">
                            <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><polyline points="3 6 5 6 21 6"></polyline><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path></svg>
                            Delete
                        </button>
                    </div>
                </div>

                <div class="poll-row">
                    <div class="poll-icon-box">
                         <div class="stat-bars bars-blue" style="height: 20px; gap: 3px;">
                            <div class="bar h-60" style="width: 4px;"></div>
                            <div class="bar h-100" style="width: 4px;"></div>
                            <div class="bar h-80" style="width: 4px;"></div>
                        </div>
                    </div>
                    <div class="poll-info">
                        <h4>Annual Winter Festival Location</h4>
                        <p>Started 12 hours ago &middot; 45 votes</p>
                    </div>
                    <div class="poll-actions">
                        <button class="btn btn-edit">
                            <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7"></path><path d="M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1 1-4 9.5-9.5z"></path></svg>
                            Edit
                        </button>
                        <button class="btn btn-delete">
                            <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><polyline points="3 6 5 6 21 6"></polyline><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path></svg>
                            Delete
                        </button>
                    </div>
                </div>

            </div>
        </div>
    </main>
</div>
</body>
</html>
 