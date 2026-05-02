<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
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
                    <div class="composer">
                        <div class="composerTop">
                            <a href="<%=request.getContextPath()%>/profile" style="text-decoration: none;">
                                <div class="composerAvatar" style="background-color: #E86A33; cursor: pointer;">
                                    P
                                </div>
                            </a>
                            <input type="text" class="composerInput"
                                placeholder="What's on your mind, Prayush?" />
                            <button class="photoActionButton" title="Add Photo" style="padding: 8px;">
                                <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="#65676B"
                                    stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
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

                    <div class="post">
                        <div class="postHeader">
                            <div class="postHeaderLeft">
                                <div class="postAvatar" style="background: #1976d2; color: white;">PS</div>
                                <div class="postAuthor">Prayush Shrestha</div>
                                <div class="postTime">• 2 hr. ago</div>
                            </div>
                            <div class="postHeaderRight">
                                <button class="moreButton">
                                    <svg width="20" height="20" viewBox="0 0 24 24" fill="none"
                                        stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                        stroke-linejoin="round">
                                        <circle cx="12" cy="12" r="1"></circle>
                                        <circle cx="19" cy="12" r="1"></circle>
                                        <circle cx="5" cy="12" r="1"></circle>
                                    </svg>
                                </button>
                            </div>
                        </div>

                        <div class="postTextContent">
                            <div class="postTitle">Beautiful evening at Oak Ridge Park</div>
                            <p class="postBody">Caught an incredible sunset at Oak Ridge Park today. It's so
                                quiet and peaceful this time of year. We really are lucky to have such a great
                                green space right in our backyard. Does anyone know if the city plans to install
                                more benches near the pond area?</p>
                        </div>

                        <div class="postActions" style="justify-content: space-between;">
                            <div class="actionPill voteGroup" style="padding: 4px 8px;">
                                <button class="voteButton">
                                    <svg width="18" height="18" viewBox="0 0 24 24" fill="none"
                                        stroke="currentColor" stroke-width="1.5" stroke-linecap="round"
                                        stroke-linejoin="round">
                                        <polyline points="18 15 12 9 6 15"></polyline>
                                    </svg>
                                </button>
                                <span class="voteCount">42</span>
                                <button class="voteButton">
                                    <svg width="18" height="18" viewBox="0 0 24 24" fill="none"
                                        stroke="currentColor" stroke-width="1.5" stroke-linecap="round"
                                        stroke-linejoin="round">
                                        <polyline points="6 9 12 15 18 9"></polyline>
                                    </svg>
                                </button>
                            </div>
                            <button class="actionPill saveBtnPill" style="border: none; padding: 6px 12px;">
                                <svg width="18" height="18" viewBox="0 0 24 24" fill="none"
                                    stroke="currentColor" stroke-width="1.5" stroke-linecap="round"
                                    stroke-linejoin="round">
                                    <path d="M19 21l-7-5-7 5V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2z"></path>
                                </svg>
                                <span class="actionText">Save</span>
                            </button>
                        </div>
                    </div>

                    <div class="post">
                        <div class="postHeader">
                            <div class="postHeaderLeft">
                                <div class="postAvatar" style="background: #2e7d32; color: white;">AR</div>
                                <div class="postAuthor">Arjan Regmi</div>
                                <div class="postTime">• 5 hr. ago</div>
                            </div>
                            <div class="postHeaderRight">
                                <button class="moreButton">
                                    <svg width="20" height="20" viewBox="0 0 24 24" fill="none"
                                        stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                        stroke-linejoin="round">
                                        <circle cx="12" cy="12" r="1"></circle>
                                        <circle cx="19" cy="12" r="1"></circle>
                                        <circle cx="5" cy="12" r="1"></circle>
                                    </svg>
                                </button>
                            </div>
                        </div>

                        <div class="postTextContent">
                            <div class="postTitle" style="color: #e53935;">URGENT: Lost Golden Retriever</div>
                            <div class="alertBox"
                                style="background: #FFF8E7; border-left: 4px solid #FF9800; padding: 12px 16px; margin-bottom: 16px; border-radius: 8px; color: #BF5E00; font-weight: 500; font-size: 14px;">
                                Found near Main & 4th — currently safe, no collar or tags
                            </div>
                        </div>

                        <div class="postActions" style="justify-content: space-between;">
                            <div class="actionPill voteGroup" style="padding: 4px 8px;">
                                <button class="voteButton">
                                    <svg width="18" height="18" viewBox="0 0 24 24" fill="none"
                                        stroke="currentColor" stroke-width="1.5" stroke-linecap="round"
                                        stroke-linejoin="round">
                                        <polyline points="18 15 12 9 6 15"></polyline>
                                    </svg>
                                </button>
                                <span class="voteCount">42</span>
                                <button class="voteButton">
                                    <svg width="18" height="18" viewBox="0 0 24 24" fill="none"
                                        stroke="currentColor" stroke-width="1.5" stroke-linecap="round"
                                        stroke-linejoin="round">
                                        <polyline points="6 9 12 15 18 9"></polyline>
                                    </svg>
                                </button>
                            </div>
                            <button class="actionPill saveBtnPill" style="border: none; padding: 6px 12px;">
                                <svg width="18" height="18" viewBox="0 0 24 24" fill="none"
                                    stroke="currentColor" stroke-width="1.5" stroke-linecap="round"
                                    stroke-linejoin="round">
                                    <path d="M19 21l-7-5-7 5V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2z"></path>
                                </svg>
                                <span class="actionText">Save</span>
                            </button>
                        </div>
                    </div>

                    <div class="post">
                        <div class="postHeader">
                            <div class="postHeaderLeft">
                                <div class="postAvatar" style="background: #00897b; color: white;">YP</div>
                                <div class="postAuthor">Yogesh Pant</div>
                                <div class="postTime">• Yesterday</div>
                            </div>
                            <div class="postHeaderRight">
                                <button class="moreButton">
                                    <svg width="20" height="20" viewBox="0 0 24 24" fill="none"
                                        stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                        stroke-linejoin="round">
                                        <circle cx="12" cy="12" r="1"></circle>
                                        <circle cx="19" cy="12" r="1"></circle>
                                        <circle cx="5" cy="12" r="1"></circle>
                                    </svg>
                                </button>
                            </div>
                        </div>

                        <div class="postTextContent">
                            <div class="postTitle" style="color: #1976d2;">Thoughts on proposed KTM Street bike
                                lanes?</div>
                            <p class="postBody">The Metropolitan is discussing the proposal for protected bike
                                lanes on Durbar Marg next Tuesday's meeting. This would mean losing about 20% of
                                the current street parking.</p>
                        </div>

                        <div class="postActions" style="justify-content: space-between;">
                            <div class="actionPill voteGroup" style="padding: 4px 8px;">
                                <button class="voteButton">
                                    <svg width="18" height="18" viewBox="0 0 24 24" fill="none"
                                        stroke="currentColor" stroke-width="1.5" stroke-linecap="round"
                                        stroke-linejoin="round">
                                        <polyline points="18 15 12 9 6 15"></polyline>
                                    </svg>
                                </button>
                                <span class="voteCount">42</span>
                                <button class="voteButton">
                                    <svg width="18" height="18" viewBox="0 0 24 24" fill="none"
                                        stroke="currentColor" stroke-width="1.5" stroke-linecap="round"
                                        stroke-linejoin="round">
                                        <polyline points="6 9 12 15 18 9"></polyline>
                                    </svg>
                                </button>
                            </div>
                            <button class="actionPill saveBtnPill" style="border: none; padding: 6px 12px;">
                                <svg width="18" height="18" viewBox="0 0 24 24" fill="none"
                                    stroke="currentColor" stroke-width="1.5" stroke-linecap="round"
                                    stroke-linejoin="round">
                                    <path d="M19 21l-7-5-7 5V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2z"></path>
                                </svg>
                                <span class="actionText">Save</span>
                            </button>
                        </div>
                    </div>
                </div>

            </div>
        </div>

    </body>
</html>

