<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Neighborly - Profile</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/sidebar.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/navbar.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/profile.css">
</head>
<body>

    <jsp:include page="/Components/sidebar.jsp" />

    <div class="mainContent">
        <jsp:include page="/Components/navbar.jsp" />

        <div class="profileWrapper">
            <header class="profileHeader">
                <div class="profileAvatarLarge">
                    <div class="avatarCircle">G</div>
                </div>
                
                <div class="profileInfoSection">
                    <h2 class="username">Guest</h2>
                    
                    <div class="profileBio">
                        <span class="fullName">Guest Name</span>
                    </div>

                    <div class="profileActionRow">
                        <a href="${pageContext.request.contextPath}/editProfile" class="edit-btn">Edit profile</a>
                    </div>
                </div>
            </header>

            <div class="profileTabs">
                <div class="tab active" onclick="switchTab(event, 'postsTab')">
                    <span class="css-icon grid-icon"></span> POSTS
                </div>
                <div class="tab" onclick="switchTab(event, 'savedTab')">
                    <span class="css-icon bookmark-icon"></span> SAVED
                </div>
            </div>

            <div id="postsTab" class="tab-content active-content">
                <div class="emptyState">
                    <div class="icon-circle">
                        <span class="plus-icon"></span>
                    </div>
                    <h2 class="emptyTitle">Share Posts</h2>
                    <p>When you share photos, they will appear on your profile.</p>
                   
                </div>
            </div>

            <div id="savedTab" class="tab-content">
                <div class="emptyState">
                    <div class="icon-circle">
                        <span class=" bookmark-icon"></span>
                    </div>
                    <h2 class="emptyTitle">Save for later</h2>
                    <p>Items you save will appear here.</p>
                </div>
            </div>
        </div> 
    </div>

    <script>
        function switchTab(evt, tabId) {
            const contents = document.querySelectorAll(".tab-content");
            contents.forEach(content => content.classList.remove("active-content"));

            const tabs = document.querySelectorAll(".tab");
            tabs.forEach(tab => tab.classList.remove("active"));

            document.getElementById(tabId).classList.add("active-content");
            evt.currentTarget.classList.add("active");
        }
    </script>
</body>
</html>