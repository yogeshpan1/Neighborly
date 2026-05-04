<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>News Management - Neighborly</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/CSS/Admin-Side.css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/CSS/NewsManagement.css">
</head>
<body>

    <!-- SIDEBAR component -->
    <jsp:include page="/components/admin-sidebar.jsp" />

    <div class="mainContent">
        <!-- TOPBAR component -->
        <% request.setAttribute("pageTitle", "Admin Dashboard"); %>
        <jsp:include page="/components/admin-topbar.jsp" />

        <div class="dashboardBody">

            <!-- PAGE HEADER -->
            <div class="newsPageHeader">
                <div>
                    <h1 class="newsPageTitle">News Management</h1>
                </div>
            </div>

            <hr class="newsDivider">

            <!-- NEWS PREVIEW CARDS -->
            <div class="newsPreviewGrid">

                <!-- Preview Card 1 -->
                <div class="newsPreviewCard">
                    <div class="newsPreviewImage previewBlue"></div>
                    <div class="newsPreviewBody">
                        <h3 class="newsPreviewTitle">Ward Committee Approves</h3>
                        <p class="newsPreviewSnippet">Ward Committee Approves the Budget of NPR 5 Lakhs for Government School Renovation.</p>
                        <span class="newsPreviewTime">6h ago</span>
                    </div>
                </div>

                <!-- Preview Card 2 -->
                <div class="newsPreviewCard">
                    <div class="newsPreviewImage previewYellow"></div>
                    <div class="newsPreviewBody">
                        <h3 class="newsPreviewTitle">New Traffic Marshals Deployed</h3>
                        <p class="newsPreviewSnippet">New Marshals Deployed and the Public are not happy</p>
                        <span class="newsPreviewTime">4h ago</span>
                    </div>
                </div>

                <!-- Preview Card 3 -->
                <div class="newsPreviewCard">
                    <div class="newsPreviewImage previewPink"></div>
                    <div class="newsPreviewBody">
                        <h3 class="newsPreviewTitle">Water Supply Restoration</h3>
                        <p class="newsPreviewSnippet">Ministry of Water Resources and Irrigation orders immediate restoration of Melamchi water supply.</p>
                        <span class="newsPreviewTime">1h ago</span>
                    </div>
                </div>
            <!-- NEWS LIST SECTION -->
            <div class="newsListHeader">
                <h2 class="newsListTitle">News Application</h2>
                <span class="newsPillBadge">Total: 3</span>
            </div>

            <div class="newsListContainer">

                <!-- News Row 1 -->
                <div class="newsRow">
                    <div class="newsIconWrap">
                        <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="#3b82f6" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path>
                            <polyline points="14 2 14 8 20 8"></polyline>
                            <line x1="16" y1="13" x2="8" y2="13"></line>
                            <line x1="16" y1="17" x2="8" y2="17"></line>
                            <polyline points="10 9 9 9 8 9"></polyline>
                        </svg>
                    </div>
                    <div class="newsInfo">
                        <h4>Ward Committee Approves</h4>
                        <p>Arjan Regmi</p>
                    </div>
                    <div class="newsActions">
                        <button class="buttonNewsEdit" >Edit</button>
                        <button class="buttonNewsDelete" >Delete</button>
                    </div>
                </div>

                <!-- News Row 2 -->
                <div class="newsRow">
                    <div class="newsIconWrap">
                        <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="#3b82f6" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path>
                            <polyline points="14 2 14 8 20 8"></polyline>
                            <line x1="16" y1="13" x2="8" y2="13"></line>
                            <line x1="16" y1="17" x2="8" y2="17"></line>
                            <polyline points="10 9 9 9 8 9"></polyline>
                        </svg>
                    </div>
                    <div class="newsInfo">
                        <h4>New Traffic Marshals Deployed</h4>
                        <p>Yogesh Pant</p>
                    </div>
                    <div class="newsActions">
                        <button class="buttonNewsEdit">Edit</button>
                        <button class="buttonNewsDelete">Delete</button>
                    </div>
                </div>

                <!-- News Row 3 -->
                <div class="newsRow">
                    <div class="newsIconWrap">
                        <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="#3b82f6" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path>
                            <polyline points="14 2 14 8 20 8"></polyline>
                            <line x1="16" y1="13" x2="8" y2="13"></line>
                            <line x1="16" y1="17" x2="8" y2="17"></line>
                            <polyline points="10 9 9 9 8 9"></polyline>
                        </svg>
                    </div>
                    <div class="newsInfo">
                        <h4>Water Supply Restoration</h4>
                        <p>Rikesh Adhikari</p>
                    </div>
                    <div class="newsActions">
                        <button class="buttonNewsEdit">Edit</button>
                        <button class="buttonNewsDelete" >Delete</button>
                    </div>
                </div>

            </div>

        </div>
    </div>
    </div>
</body>
</html>
