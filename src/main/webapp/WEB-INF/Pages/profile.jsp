<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Neighborly</title>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/profile.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/sidebar.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/navbar.css">

</head>
<body>
    <jsp:include page="/Components/sidebar.jsp" />
    
    <div class="mainContent">
        <jsp:include page="/Components/navbar.jsp" />
        
        <div class="profileContainer">
            <div class="profileHeader">
                <div class="profileAvatarLarge">
                    </div>
                
                <div class="profileInfo">
                    <h1>My Profile</h1>
                    <p>Manage your posts and interactions</p>
                </div>

                <div class="actionButtons">
                    <button class="custom-btn btn-secondary">Edit Profile</button>
                    <button class="custom-btn btn-primary">+ Create</button>
                </div>
            </div>

            <div class="profileTabs">
                <div class="tab active" onclick="openTab(event, 'postsSection')">Posts</div>
                <div class="tab" onclick="openTab(event, 'savedSection')">Saved</div>
            </div>

            <div id="postsSection" class="tab-content active-content">
                <div class="orange-card-box">
                    <c:choose>
                        <c:when test="${not empty userPosts}">
                            <div class="postsGrid">
                                <c:forEach var="post" items="${userPosts}">
                                    <div class="postCard"><p>${post.content}</p></div>
                                </c:forEach>
                            </div>
                        </c:when>
                        <c:otherwise>
                            <div class="emptyState">
                                <h2>No posts yet</h2>
                                <p>When you post something, it will appear here.</p>
                            </div>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>

            <div id="savedSection" class="tab-content">
                <div class="orange-card-box">
                    <div class="emptyState">
                        <h2>Nothing saved</h2>
                        <p>Posts you save will be shown here.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        function openTab(evt, sectionId) {
            // Hide all tab content
            const tabcontent = document.getElementsByClassName("tab-content");
            for (let i = 0; i < tabcontent.length; i++) {
                tabcontent[i].classList.remove("active-content");
            }

            // Remove 'active' class from all tabs
            const tablinks = document.getElementsByClassName("tab");
            for (let i = 0; i < tablinks.length; i++) {
                tablinks[i].classList.remove("active");
            }

            // Show the current tab content and add 'active' class to the clicked tab
            document.getElementById(sectionId).classList.add("active-content");
            evt.currentTarget.classList.add("active");
        }
    </script>
</body>
</html>