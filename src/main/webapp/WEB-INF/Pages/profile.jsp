<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <title> Neighborly</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/sidebar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/navbar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/profile.css">
</head>
<body>
    <jsp:include page="/Components/sidebar.jsp" />
    
    <div class="mainContent">
        <jsp:include page="/Components/navbar.jsp" />
        
        <div class="profileContainer">
            <div class="profileBanner"></div>

            <div class="profileHeader">
                <div class="headerTopRow">
                    <div class="profileAvatarLarge">
                        ${fn:substring(user.userName, 0, 1).toUpperCase()}
                    </div>
                    <div class="actionButtons">
                        <button class="custom-btn btn-secondary">Edit</button>
                        <button class="custom-btn btn-primary">+ Create</button>
                    </div>
                </div>
                
                <div class="profileInfo">
                    <h2>${user.userName}</h2>
                    <div class="handle-info">u/${user.userName} • 0 followers</div>
                </div>
            </div>

            <div class="profileTabs">
                <div class="tab active" onclick="openTab(event, 'postsSection')">Posts</div>
                <div class="tab" onclick="openTab(event, 'savedSection')">Saved</div>
            </div>

            <div id="postsSection" class="tab-content active-content">
                <c:choose>
                    <c:when test="${not empty userPosts}">
                        <div class="postsGrid">
                            <c:forEach var="post" items="${userPosts}">
                                <div class="postCard">
                                    <p>${post.content}</p>
                                </div>
                            </c:forEach>
                        </div>
                    </c:when>
                    <c:otherwise>
                        <div class="emptyState">
                            <h2>You don't have any posts yet</h2>
                            <p>Once you post to a community, it'll show up here.</p>
                            <button class="custom-btn btn-primary">Update Settings</button>
                        </div>
                    </c:otherwise>
                </c:choose>
            </div>

            <div id="savedSection" class="tab-content">
                <div class="emptyState">
                    <h2>Nothing saved yet</h2>
                    <p>Posts you save will appear here for easy access.</p>
                </div>
            </div>
        </div>
    </div>

    <script>
        function openTab(evt, sectionId) {
            const tabcontent = document.getElementsByClassName("tab-content");
            for (let i = 0; i < tabcontent.length; i++) {
                tabcontent[i].classList.remove("active-content");
            }

            const tablinks = document.getElementsByClassName("tab");
            for (let i = 0; i < tablinks.length; i++) {
                tablinks[i].classList.remove("active");
            }

            const targetSection = document.getElementById(sectionId);
            if (targetSection) {
                targetSection.classList.add("active-content");
                evt.currentTarget.classList.add("active");
            }
        }
    </script>
</body>
</html>