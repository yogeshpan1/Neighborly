<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Neighborly</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/feed.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/sidebar.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/navbar.css">
</head>
<body>

    <jsp:include page="/Components/sidebar.jsp" />

    <div class="mainContent">
        <jsp:include page="/Components/navbar.jsp" />

        <div class="contentArea">
            <div class="feedCenter">

                <%-- Create Post --%>
                <div class="composer">
                    <div class="composerTop">
                        <a href="<%=request.getContextPath()%>/profile" class="composerAvatarLink">
                            <div class="composerAvatar">P</div>
                        </a>
                        <input type="text" class="composerInput" placeholder="What's on your mind, ${user.userName}?" />
                        <button class="photoActionButton" title="Add Photo">
                            <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <rect x="3" y="3" width="18" height="18" rx="2" ry="2"></rect>
                                <circle cx="8.5" cy="8.5" r="1.5"></circle>
                                <polyline points="21 15 16 10 5 21"></polyline>
                            </svg>
                        </button>
                    </div>
                    <div class="composerBottom">
                        <button class="postButton">Post</button>
                    </div>
                </div>

                <%-- Default Posts --%>
                <div class="post">
                    <div class="postHeader">
                        <div class="postHeaderLeft">
                            <div class="postAvatar" style="background:#1976d2;">PS</div>
                            <span class="postAuthor">Prayush Shrestha</span>
                            <span class="postTime">• 2 hr. ago</span>
                        </div>
                        <button class="moreButton" aria-label="More options">&#8943;</button>
                    </div>
                    <div class="postTextContent">
                        <div class="postTitle">Beautiful evening at Oak Ridge Park</div>
                        <p class="postBody">Caught an incredible sunset at Oak Ridge Park today. It's so quiet and peaceful this time of year. We really are lucky to have such a great green space right in our backyard. Does anyone know if the city plans to install more benches near the pond area?</p>
                    </div>
                    <div class="postFooter">
                        <div class="voteGroup">
                            <button class="voteButton" aria-label="Upvote">
                                <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><polyline points="18 15 12 9 6 15"></polyline></svg>
                            </button>
                            <span class="voteCount">42</span>
                            <button class="voteButton" aria-label="Downvote">
                                <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><polyline points="6 9 12 15 18 9"></polyline></svg>
                            </button>
                        </div>
                        <button class="saveButton" aria-label="Save post">
                            <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M19 21l-7-5-7 5V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2z"></path></svg>
                            <span>Save</span>
                        </button>
                    </div>
                </div>

                <%--  Post 2 --%>
                <div class="post post--alert">
                    <div class="postHeader">
                        <div class="postHeaderLeft">
                            <div class="postAvatar" style="background:#2e7d32;">AR</div>
                            <span class="postAuthor">Arjan Regmi</span>
                            <span class="postTime">• 5 hr. ago</span>
                        </div>
                        <button class="moreButton" aria-label="More options">&#8943;</button>
                    </div>
                    <div class="postTextContent">
                        <div class="postTitle postTitle--urgent">URGENT: Lost Golden Retriever</div>
                        <div class="alertBox">Found near Main &amp; 4th — currently safe, no collar or tags</div>
                    </div>
                    <div class="postFooter">
                        <div class="voteGroup">
                            <button class="voteButton" aria-label="Upvote">
                                <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><polyline points="18 15 12 9 6 15"></polyline></svg>
                            </button>
                            <span class="voteCount">89</span>
                            <button class="voteButton" aria-label="Downvote">
                                <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><polyline points="6 9 12 15 18 9"></polyline></svg>
                            </button>
                        </div>
                        <button class="saveButton" aria-label="Save post">
                            <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M19 21l-7-5-7 5V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2z"></path></svg>
                            <span>Save</span>
                        </button>
                    </div>
                </div>

                <%--  Post 3 --%>
                <div class="post post--discussion">
                    <div class="postHeader">
                        <div class="postHeaderLeft">
                            <div class="postAvatar" style="background:#00897b;">YP</div>
                            <span class="postAuthor">Yogesh Pant</span>
                            <span class="postTime">• Yesterday</span>
                        </div>
                        <button class="moreButton" aria-label="More options">&#8943;</button>
                    </div>
                    <div class="postTextContent">
                        <div class="postTitle postTitle--civic">Thoughts on proposed KTM Street bike lanes?</div>
                        <p class="postBody">The Metropolitan is discussing the proposal for protected bike lanes on Durbar Marg at next Tuesday's meeting. This would mean losing about 20% of the current street parking.</p>
                    </div>
                    <div class="postFooter">
                        <div class="voteGroup">
                            <button class="voteButton" aria-label="Upvote">
                                <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><polyline points="18 15 12 9 6 15"></polyline></svg>
                            </button>
                            <span class="voteCount">31</span>
                            <button class="voteButton" aria-label="Downvote">
                                <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><polyline points="6 9 12 15 18 9"></polyline></svg>
                            </button>
                        </div>
                        <button class="saveButton" aria-label="Save post">
                            <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M19 21l-7-5-7 5V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2z"></path></svg>
                            <span>Save</span>
                        </button>
                    </div>
                </div>

            </div>
        </div>
    </div>

</body>
</html>
