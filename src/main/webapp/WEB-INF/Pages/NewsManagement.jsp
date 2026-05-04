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

            </div>
            </div>
            </div>
</body>
</html>
