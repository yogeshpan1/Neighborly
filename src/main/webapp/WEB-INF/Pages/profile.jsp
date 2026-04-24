<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Neighborly</title>
    
    <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/sidebar.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/navbar.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/profile.css">
</head>
<body>

    <jsp:include page="/Components/sidebar.jsp" />

    <div class="mainContent">
        <jsp:include page="/Components/navbar.jsp" />

        <div class="contentArea">
            <div class="profileWrapper">
                
                <div class="profileHeader">
                    <div class="profileAvatarLarge">U</div>
                    
                    <div class="profileInfoSection">
                        <div class="profileText">
                            <h1>My Profile</h1>
                            <p class="sub-text">Welcome to your profile</p>
                        </div>
                        
                        <div class="bioContainer">
                            <label>BIO</label>
                            <textarea placeholder="Tell your neighbors about yourself..."></textarea>
                        </div>

                        <div class="actionButtons">
                            <button class="custom-btn btn-secondary">Edit Profile</button>
                            <button class="custom-btn btn-primary">+ Create Post</button>
                        </div>
                    </div>
                </div>

                <div class="profileTabs">
                    <div class="tab active" onclick="switchTab(event, 'postsTab')">Posts</div>
                    <div class="tab" onclick="switchTab(event, 'savedTab')">Saved</div>
                </div>

                <div id="postsTab" class="tab-content active-content">
                    <div class="orange-card-box">
                        <div class="emptyState">
                            <h2 class="emptyTitle">No posts yet</h2>
                            <p>When you post something, it will appear here.</p>
                            <button class="custom-btn btn-primary" style="margin-top: 15px;">Create Post</button>
                        </div>
                    </div>
                </div>

                <div id="savedTab" class="tab-content">
                    <div class="orange-card-box">
                        <div class="emptyState">
                            <h2 class="emptyTitle">No saved items</h2>
                            <p>Posts you save will appear here for easy access.</p>
                            <button class="custom-btn btn-secondary" style="margin-top: 15px;">Browse Feed</button>
                        </div>
                    </div>
                </div>

            </div> </div> </div> <script>
        function switchTab(evt, tabId) {
            // 1. Hide all tab content sections
            const contents = document.querySelectorAll(".tab-content");
            contents.forEach(content => {
                content.classList.remove("active-content");
            });

            // 2. Remove "active" class from all tab buttons
            const tabs = document.querySelectorAll(".tab");
            tabs.forEach(tab => {
                tab.classList.remove("active");
            });

            // 3. Show the specific tab content and set the button to active
            document.getElementById(tabId).classList.add("active-content");
            evt.currentTarget.classList.add("active");
        }
    </script>
</body>
</html>