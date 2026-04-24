<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>My Profile - Neighborly</title>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/profile.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/sidebar.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/navbar.css">
    </head>
    
    <body>
        <jsp:include page="/Components/sidebar.jsp" />
        
        <div class="mainContent">
            <jsp:include page="/Components/navbar.jsp" />
            
            <div class="contentArea">
                <div class="profileCenter">
                    
                    <div class="profileHeader">
                        <div class="coverPhoto"></div>
                        <div class="avatarWrapper">
                            <div class="profileAvatar"></div>
                        </div>
                        <div class="profileActions">
                            <button class="btnEdit">Edit</button>
                            <button class="btnCreate">+ Create</button>
                        </div>
                    </div>

                    <div class="profileDetails">
                        <h1 class="profileName">My Profile</h1>
                    </div>

                    <div class="profileTabs">
                        <button class="tab active">Posts</button>
                        <button class="tab">Saved</button>
                    </div>

                    <div class="emptyStateCard">
                        <h2 class="emptyTitle">No posts yet</h2>
                        <p class="emptySubtext">When you post something, it will appear here.</p>
                        <button class="btnCreatePost">Create Post</button>
                    </div>

                </div>
            </div>
        </div>
    </body>
</html>