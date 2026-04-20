<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile - ${user.userName}</title>
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/feed.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/sidebar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/navbar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/profile.css">
    
    <style>
        .tab-content { display: none; width: 100%; }
        .tab-content.active-content { display: block; }
        .tab { cursor: pointer; transition: all 0.3s ease; }
        .postGrid { display: grid; grid-template-columns: repeat(auto-fill, minmax(250px, 1fr)); gap: 15px; padding: 20px 0; }
        .postItem { border: 1px solid #ddd; padding: 15px; border-radius: 8px; background: white; }
    </style>
</head>

<body>
    <jsp:include page="/Components/sidebar.jsp" />
    
    <div class="mainContent">
        <jsp:include page="/Components/navbar.jsp" />
        
        <div class="contentArea profileContentArea">
            <div class="profileContainer">
                
                <div class="profileHeader">
                    <div class="profileAvatarLarge" style="background-color: #E86A33;">
                        ${fn:substring(user.userName, 0, 1).toUpperCase()}
                    </div>
                    
                    <div class="profileDetails">
                        <div class="profileUsernameRow">
                            <h2 class="profileUsername">${user.userName}</h2>
                        </div>
                        
                        <div class="profileName">Guest</div>
                        
                        <div class="profileStats">
                            <span><b>${fn:length(userPosts)}</b> posts</span>
                            <span><b>0</b> followers</span>
                            <span><b>0</b> following</span>
                        </div>
                        
                        <div class="profileActions">
                            <button class="profileBtn">Edit profile</button>
                            <button class="profileBtn">Settings</button>
                        </div>
                    </div>
                </div>

                <div class="profileTabs">
                    <div class="tab active" onclick="openTab(event, 'postsSection')">
                        <span>POSTS</span>
                    </div>
                    <div class="tab" onclick="openTab(event, 'savedSection')">
                        <span>SAVED</span>
                    </div>
                </div>

                <div id="postsSection" class="tab-content active-content">
                    <c:choose>
                        <c:when test="${not empty userPosts}">
                            <div class="postGrid">
                                <c:forEach var="post" items="${userPosts}">
                                    <div class="postItem">
                                        <p>${post.content}</p> 
                                    </div>
                                </c:forEach>
                            </div>
                        </c:when>
                        <c:otherwise>
                            <div class="emptyState">
                                <div class="emptyStateIcon">
                                    <svg width="40" height="40" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5">
                                        <path d="M23 19a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h4l2-3h6l2 3h4a2 2 0 0 1 2 2z"></path>
                                        <circle cx="12" cy="13" r="4"></circle>
                                    </svg>
                                </div>
                                <h2>No Posts Yet</h2>
                                <p>Start a conversation to see your posts here.</p>
                                <a href="${pageContext.request.contextPath}/feed" class="shareLink">Back to Feed</a>
                            </div>
                        </c:otherwise>
                    </c:choose>
                </div>

                <div id="savedSection" class="tab-content">
                    <c:choose>
                        <c:when test="${not empty savedPosts}">
                            <div class="postGrid">
                                <c:forEach var="post" items="${savedPosts}">
                                    <div class="postItem">
                                        <p>${post.content}</p>
                                    </div>
                                </c:forEach>
                            </div>
                        </c:when>
                        <c:otherwise>
                            <div class="emptyState">
                                <div class="emptyStateIcon">
                                    <svg width="40" height="40" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5">
                                        <path d="M19 21l-7-5-7 5V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2z"></path>
                                    </svg>
                                </div>
                                <h2>No Saved Posts</h2>
                                <p>Save posts from your feed to see them here.</p>
                            </div>
                        </c:otherwise>
                    </c:choose>
                </div>

            </div>
        </div>
    </div>

    <script>
        function openTab(evt, sectionName) {
            var i, tabcontent, tablinks;

            tabcontent = document.getElementsByClassName("tab-content");
            for (i = 0; i < tabcontent.length; i++) {
                tabcontent[i].classList.remove("active-content");
            }

            tablinks = document.getElementsByClassName("tab");
            for (i = 0; i < tablinks.length; i++) {
                tablinks[i].classList.remove("active");
            }

            document.getElementById(sectionName).classList.add("active-content");
            evt.currentTarget.classList.add("active");
        }
    </script>
</body>
</html>