<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Neighborly</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/sidebar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/navbar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/profile.css">
</head>

<body>

    <jsp:include page="/Components/sidebar.jsp" />

    <main class="mainContent">
        <jsp:include page="/Components/navbar.jsp" />

        <article class="profileWrapper">
            <header class="profileHeader">
                <section class="profileAvatarLarge">
                    <div class="avatarCircle">
                        <svg width="70" height="70" viewBox="0 0 24 24" fill="none" stroke="white" stroke-width="1" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                            <circle cx="12" cy="7" r="4"></circle>
                        </svg>
                    </div>
                </section>

                <section class="profileInfoSection">
                    <h2 class="username">${user != null ? user.userName : 'Guest'}</h2>

                    <div class="profileBio">
                        <span class="fullName">${user != null ? user.firstName : 'Guest'} ${user != null ?
                            user.lastName : 'Name'}</span>
                    </div>

                    <div class="profileActionRow">
                        <a href="${pageContext.request.contextPath}/editprofile" class="edit-btn" style="text-decoration:none; text-align:center;">Edit Profile</a>
                    </div>
                </section>
            </header>

            <nav class="profileTabs">
                <button class="tab active" onclick="switchTab(event, 'postsTab')">POSTS</button>
                <button class="tab" onclick="switchTab(event, 'savedTab')">
                    <span class="css-icon bookmark-icon"></span> SAVED
                </button>
            </nav>

            <section id="postsTab" class="tab-content active-content">
                <div class="emptyState">
                    <span class="icon-circle"><span class="plus-icon"></span></span>
                    <h2 class="emptyTitle">Share posts</h2>
                </div>
            </section>

            <section id="savedTab" class="tab-content">
                <div class="emptyState">
                    <span class="icon-circle"><span class="large-bookmark-icon"></span></span>
                    <h2 class="emptyTitle">Save for later</h2>
                    <p>Items you save will appear here.</p>
                </div>
            </section>
        </article>
    </main>

    <script>
        function switchTab(evt, tabId) {
            document.querySelectorAll(".tab-content").forEach(c => c.classList.remove("active-content"));
            document.querySelectorAll(".tab").forEach(t => t.classList.remove("active"));
            document.getElementById(tabId).classList.add("active-content");
            evt.currentTarget.classList.add("active");
        }

    </script>
</body>

</html>