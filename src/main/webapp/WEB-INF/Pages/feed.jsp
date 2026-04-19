<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ page import="jakarta.servlet.http.HttpSession" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Neighborly | Feed</title>
            <link rel="stylesheet" href="CSS/feed.css">
        </head>

        <body>

                <jsp:include page="/Components/sidebar.jsp" />

                <!-- ===== MAIN CONTENT ===== -->
                <div class="mainContent">

                    <!-- TOPBAR -->
                    <jsp:include page="/Components/navbar.jsp" />

                    <!-- CONTENT AREA -->
                    <div class="contentArea">
                        <div class="feedCenter">

                            <!-- Composer -->
                            <div class="feedCard composer">
                                <div class="composerTop">
                                    <div class="composerAvatar" style="background-color: #E86A33;">
                                             US
                                    </div>
                                    <input type="text" class="composerInput"
                                        placeholder="Start a conversation with your neighbors..." />
                                </div>
                                <div class="composerBottom">
                                    <button class="photoBtn">Add Photo</button>
                                    <button class="postBtn">Post</button>
                                </div>
                            </div>

                            <!-- Post 1 -->
                            <div class="feedCard post">
                                <div class="postHeader">
                                    <div class="postAvatar" style="background: #2e7d32; color: white;">PS</div>
                                    <div class="postMetaInfo">
                                        <div class="postAuthor">Prayush Shrestha</div>
                                        <div class="postTime">2h ago</div>
                                    </div>
                                </div>
                                <div class="postTitle">Beautiful evening at Oak Ridge Park</div>
                                <p class="postBody">Caught an incredible sunset at Oak Ridge Park today. It's so quiet
                                    and peaceful this time of year. We really are lucky to have such a great green space
                                    right in our backyard. Does anyone know if the city plans to install more benches
                                    near the pond area?</p>
                                <div class="postImage">
                                    <img src="<%= request.getContextPath() %>/Images/nature.jpg" alt="Nature">
                                </div>
                                <div class="postActions">
                                    <div class="vote">
                                        <button class="voteBtn">
                                            <img src="<%= request.getContextPath() %>/Images/up.png" alt="up"
                                                class="voteImg">
                                        </button>
                                        <span>42</span>
                                        <button class="voteBtn">
                                            <img src="<%= request.getContextPath() %>/Images/down.png" alt="down"
                                                class="voteImg">
                                        </button>
                                    </div>
                                    <button class="actionBtn">12 Comments</button>
                                    <button class="actionBtn">Repost</button>
                                    <button class="actionBtn saveBtn">Save</button>
                                </div>
                            </div>

                            <!-- Post 2 -->
                            <div class="feedCard post">
                                <div class="postHeader">
                                    <div class="postAvatar" style="background: #1976d2; color: white;">AR</div>
                                    <div class="postMetaInfo">
                                        <div class="postAuthor">Arjan Regmi</div>
                                        <div class="postTime">5h ago</div>
                                    </div>
                                </div>
                                <div class="postTitle urgent">URGENT: Lost Golden Retriever</div>
                                <div class="alertBox">
                                    Found near Main & 4th — currently safe, no collar or tags
                                </div>
                                <div class="postActions">
                                    <div class="vote">
                                        <button class="voteBtn">
                                            <img src="<%= request.getContextPath() %>/Images/up.png" alt="up"
                                                class="voteImg">
                                        </button>
                                        <span>42</span>
                                        <button class="voteBtn">
                                            <img src="<%= request.getContextPath() %>/Images/down.png" alt="down"
                                                class="voteImg">
                                        </button>
                                    </div>
                                    <button class="actionBtn">12 Comments</button>
                                    <button class="actionBtn">Repost</button>
                                    <button class="actionBtn saveBtn">Save</button>
                                </div>
                            </div>

                            <!-- Post 3 -->
                            <div class="feedCard post">
                                <div class="postHeader">
                                    <div class="postAvatar" style="background: #00897b; color: white;">YP</div>
                                    <div class="postMetaInfo">
                                        <div class="postAuthor">Yogesh Pant</div>
                                        <div class="postTime">Yesterday</div>
                                    </div>
                                </div>
                                <div class="postTitle linkTitle">Thoughts on proposed KTM Street bike lanes?</div>
                                <p class="postBody">The Metropolitan is discussing the proposal for protected bike
                                    lanes on Durbar Marg next Tuesday's meeting. This would mean losing about 20% of the
                                    current street parking.</p>
                                <div class="postActions">
                                    <div class="vote">
                                        <button class="voteBtn">
                                            <img src="<%= request.getContextPath() %>/Images/up.png" alt="up"
                                                class="voteImg">
                                        </button>
                                        <span>42</span>
                                        <button class="voteBtn">
                                            <img src="<%= request.getContextPath() %>/Images/down.png" alt="down"
                                                class="voteImg">
                                        </button>
                                    </div>
                                    <button class="actionBtn">12 Comments</button>
                                    <button class="actionBtn">Repost</button>
                                    <button class="actionBtn saveBtn">Save</button>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>

        </body>

        </html>