<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Neighborly</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/feed.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/leftbar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/navbar.css">
</head>
<body>

    <jsp:include page="/Components/leftbar.jsp" />

    <main class="mainContent">
        <jsp:include page="/Components/navbar.jsp" />
        
        <section class="contentArea">
            <div class="feedCenter">
                <!-- Composer -->
                <section class="composer">
                    <div class="composerTop">
                        <a href="${pageContext.request.contextPath}/profile" style="text-decoration: none;">
                            <div class="composerAvatar" style="background-color: #E86A33; cursor: pointer; overflow: hidden; padding: 0;">
                                <c:choose>
                                    <c:when test="${not empty user.image}">
                                        <img src="${pageContext.request.contextPath}/getimage?name=${user.userName}"
                                             alt="${user.userName}"
                                             style="width:100%; height:100%; object-fit:cover; border-radius:50%;">
                                    </c:when>
                                    <c:otherwise>
                                        ${user.userName[0]}
                                    </c:otherwise>
                                </c:choose>
                            </div>
                        </a>
                        <input type="text" class="composerInput" placeholder="What's on your mind, ${user.userName}?" />
                        <button class="photoActionBtn" title="Add Photo" style="padding: 8px;">
                            <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="#65676B" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <rect x="3" y="3" width="18" height="18" rx="2" ry="2"></rect>
                                <circle cx="8.5" cy="8.5" r="1.5"></circle>
                                <polyline points="21 15 16 10 5 21"></polyline>
                            </svg>
                        </button>
                    </div>
                    <div class="composerBottom">
                        <button class="postBtn">Post</button>
                    </div>
                </section>

                <!-- Post 1 -->
                <article class="post">
                    <header class="postHeader">
                        <div class="postHeaderLeft">
                            <div class="postAvatar" style="background: #1976d2; color: white;">PS</div>
                            <span class="postAuthor">Prayush Shrestha</span>
                            <span class="postTime">• 2 hr. ago</span>
                        </div>
                        <button class="moreBtn">
                            <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <circle cx="12" cy="12" r="1"></circle><circle cx="19" cy="12" r="1"></circle><circle cx="5" cy="12" r="1"></circle>
                            </svg>
                        </button>
                    </header>

                    <div class="postTextContent">
                        <h3 class="postTitle" style="margin: 0; font-size: inherit;">Beautiful evening at Oak Ridge Park</h3>
                        <p class="postBody">Caught an incredible sunset at Oak Ridge Park today. It's so quiet and peaceful this time of year. We really are lucky to have such a great green space right in our backyard. Does anyone know if the city plans to install more benches near the pond area?</p>
                    </div>

                    <footer class="postActions" style="justify-content: space-between;">
                        <div class="actionPill voteGroup" style="padding: 4px 8px;">
                            <button class="voteBtn"><svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5"><polyline points="18 15 12 9 6 15"></polyline></svg></button>
                            <span class="voteCount">42</span>
                            <button class="voteBtn"><svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5"><polyline points="6 9 12 15 18 9"></polyline></svg></button>
                        </div>
                        <button class="actionPill saveBtnPill" style="border: none; padding: 6px 12px;">
                            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5"><path d="M19 21l-7-5-7 5V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2z"></path></svg>
                            <span class="actionText">Save</span>
                        </button>
                    </footer>
                </article>

                <!-- Post 2 -->
                <article class="post">
                    <header class="postHeader">
                        <div class="postHeaderLeft">
                            <div class="postAvatar" style="background: #2e7d32; color: white;">AR</div>
                            <span class="postAuthor">Arjan Regmi</span>
                            <span class="postTime">• 5 hr. ago</span>
                        </div>
                        <button class="moreBtn">
                            <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><circle cx="12" cy="12" r="1"></circle><circle cx="19" cy="12" r="1"></circle><circle cx="5" cy="12" r="1"></circle></svg>
                        </button>
                    </header>

                    <div class="postTextContent">
                        <h3 class="postTitle" style="color: #e53935; margin: 0; font-size: inherit;">URGENT: Lost Golden Retriever</h3>
                        <div class="alertBox" style="background: #FFF8E7; border-left: 4px solid #FF9800; padding: 12px 16px; margin-bottom: 16px; border-radius: 8px; color: #BF5E00; font-weight: 500; font-size: 14px;">
                            Found near Main & 4th — currently safe, no collar or tags
                        </div>
                    </div>

                    <footer class="postActions" style="justify-content: space-between;">
                        <div class="actionPill voteGroup" style="padding: 4px 8px;">
                            <button class="voteBtn"><svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5"><polyline points="18 15 12 9 6 15"></polyline></svg></button>
                            <span class="voteCount">89</span>
                            <button class="voteBtn"><svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5"><polyline points="6 9 12 15 18 9"></polyline></svg></button>
                        </div>
                        <button class="actionPill saveBtnPill" style="border: none; padding: 6px 12px;">
                            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5"><path d="M19 21l-7-5-7 5V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2z"></path></svg>
                            <span class="actionText">Save</span>
                        </button>
                    </footer>
                </article>

                <!-- Post 3 -->
                <article class="post">
                    <header class="postHeader">
                        <div class="postHeaderLeft">
                            <div class="postAvatar" style="background: #00897b; color: white;">YP</div>
                            <span class="postAuthor">Yogesh Pant</span>
                            <span class="postTime">• Yesterday</span>
                        </div>
                        <button class="moreBtn">
                            <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><circle cx="12" cy="12" r="1"></circle><circle cx="19" cy="12" r="1"></circle><circle cx="5" cy="12" r="1"></circle></svg>
                        </button>
                    </header>

                    <div class="postTextContent">
                        <h3 class="postTitle" style="color: #1976d2; margin: 0; font-size: inherit;">Thoughts on proposed KTM Street bike lanes?</h3>
                        <p class="postBody">The Metropolitan is discussing the proposal for protected bike lanes on Durbar Marg next Tuesday's meeting. This would mean losing about 20% of the current street parking.</p>
                    </div>

                    <footer class="postActions" style="justify-content: space-between;">
                        <div class="actionPill voteGroup" style="padding: 4px 8px;">
                            <button class="voteBtn"><svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5"><polyline points="18 15 12 9 6 15"></polyline></svg></button>
                            <span class="voteCount">31</span>
                            <button class="voteBtn"><svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5"><polyline points="6 9 12 15 18 9"></polyline></svg></button>
                        </div>
                        <button class="actionPill saveBtnPill" style="border: none; padding: 6px 12px;">
                            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5"><path d="M19 21l-7-5-7 5V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2z"></path></svg>
                            <span class="actionText">Save</span>
                        </button>
                    </footer>
                </article>

            </div>
        </section>
    </main>

</body>
</html>