<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Neighborly</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/news.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/leftbar.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/navbar.css">
    </head>

    <body>

            <jsp:include page="/Components/leftbar.jsp" />
            <div class="mainContent">
                <jsp:include page="/Components/navbar.jsp" />
                    <div class="contentArea">
                        <div class="dashboardGrid">
                            <div class="feedColumn">
                                <div class="featuredArticle">
                                    <div class="featuredImage"
                                        style="background: linear-gradient(to top, rgba(30, 60, 40, 0.9), rgba(50, 90, 60, 0.2)), url('${pageContext.request.contextPath}/Images/cleanup.jpg') center/cover;">
                                        <h2 class="featuredTitle">Ward 4 launches three-month Bagmati river corridor
                                            cleanup & restoration drive</h2>
                                    </div>
                                    <div class="featuredContent">
                                        <p>Caught an incredible sunset at Oak Ridge Park today. It's so quiet and
                                            peaceful this time of year. We really are lucky to have such a great
                                            green space right in our backyard. Does anyone know if the city plans to
                                            install more benches near the pond area.Caught an incredible sunset at
                                            Oak Ridge Park today. It's so quiet and peaceful this time of year. We
                                            really are lucky to have such a great green space right in our backyard.
                                            Does anyone know if the city plans to install more benches near the pond
                                            area?</p>
                                        <div class="featuredMeta">
                                            <span class="featuredAuthor">KMC Ward 4 Office</span>
                                            <span class="featuredTime">3h ago | 4 min read</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="sectionHeader">
                                    <span class="sectionTitle">LATEST STORIES</span>
                                    <div class="sectionDivider"></div>
                                </div>

                                <div class="storyList">
                                    <div class="storyCard">
                                        <img src="${pageContext.request.contextPath}/Images/meeting.jpg"
                                            alt="Footpath repairs"
                                            style="width: 100px; height: 100px; object-fit: cover; border-radius: 8px;">
                                        <div class="storyContent">
                                            <div class="storyMeta"><span class="storyBadge badgeOfficial"
                                                    style="display:inline-block; width:auto; min-width:auto; height:auto; padding:2px 8px; margin-right:8px;">OFFICIAL</span>
                                                6h ago 3 min</div>
                                            <h3 class="storyTitle">Ward Committee approves NPR 12M budget for
                                                footpath repairs</h3>
                                            <p class="storyExcerpt">Caught an incredible sunset at Oak Ridge Park
                                                today. It's so quiet and peaceful this time of year. We really are
                                                lucky to have such a great green space right in our backyard. Does
                                                anyone know if the city.</p>
                                            <div class="storyFooter">
                                                <span class="storySource">Ward 4 Bulletin</span>
                                                <button class="bookmarkButton">
                                                    <svg width="20" height="20" viewBox="0 0 24 24" fill="none"
                                                        stroke="currentColor" stroke-width="2"
                                                        stroke-linecap="round" stroke-linejoin="round">
                                                        <path d="M19 21l-7-5-7 5V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2z">
                                                        </path>
                                                    </svg>
                                                </button>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="storyCard">
                                        <img src="${pageContext.request.contextPath}/Images/traffic.jpg"
                                            alt="Traffic marshals"
                                            style="width: 100px; height: 100px; object-fit: cover; border-radius: 8px;">
                                        <div class="storyContent">
                                            <div class="storyMeta"><span class="storyBadge badgeAlert"
                                                    style="display:inline-block; width:auto; min-width:auto; height:auto; padding:2px 8px; margin-right:8px;">ALERT</span>
                                                6h ago 3 min</div>
                                            <h3 class="storyTitle">New traffic marshals deployed at Pulchowk
                                                intersection</h3>
                                            <p class="storyExcerpt">Caught an incredible sunset at Oak Ridge Park
                                                today. It's so quiet and peaceful this time of year. We really are
                                                lucky to have such a great green space right in our backyard. Does
                                                anyone know if the city.</p>
                                            <div class="storyFooter">
                                                <span class="storySource">Kathmandu Post</span>
                                                <button class="bookmarkButton">
                                                    <svg width="20" height="20" viewBox="0 0 24 24" fill="none"
                                                        stroke="currentColor" stroke-width="2"
                                                        stroke-linecap="round" stroke-linejoin="round">
                                                        <path d="M19 21l-7-5-7 5V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2z">
                                                        </path>
                                                    </svg>
                                                </button>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="storyCard">
                                        <img src="${pageContext.request.contextPath}/Images/water.jpg" alt="Water supply"
                                            style="width: 100px; height: 100px; object-fit: cover; border-radius: 8px;">
                                        <div class="storyContent">
                                            <div class="storyMeta"><span class="storyBadge badgeUpdate"
                                                    style="display:inline-block; width:auto; min-width:auto; height:auto; padding:2px 8px; margin-right:8px;">UPDATE</span>
                                                6h ago 3 min</div>
                                            <h3 class="storyTitle">Water supply restoration timeline revised — back
                                                online Apr 18</h3>
                                            <p class="storyExcerpt">Caught an incredible sunset at Oak Ridge Park
                                                today. It's so quiet and peaceful this time of year. We really are
                                                lucky to have such a great green space right in our backyard. Does
                                                anyone know if the city.</p>
                                            <div class="storyFooter">
                                                <span class="storySource">KUKL Notice</span>
                                                <button class="bookmarkButton">
                                                    <svg width="20" height="20" viewBox="0 0 24 24" fill="none"
                                                        stroke="currentColor" stroke-width="2"
                                                        stroke-linecap="round" stroke-linejoin="round">
                                                        <path d="M19 21l-7-5-7 5V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2z">
                                                        </path>
                                                    </svg>
                                                </button>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="storyCard">
                                        <img src="${pageContext.request.contextPath}/Images/health.jpg" alt="Health camp"
                                            style="width: 100px; height: 100px; object-fit: cover; border-radius: 8px;">
                                        <div class="storyContent">
                                            <div class="storyMeta"><span class="storyBadge badgeCommunity"
                                                    style="display:inline-block; width:auto; min-width:auto; height:auto; padding:2px 8px; margin-right:8px;">COMMUNITY</span>
                                                6h ago 3 min</div>
                                            <h3 class="storyTitle">Community health camp at Patan Dhoka — free
                                                check-ups this Sat</h3>
                                            <p class="storyExcerpt">Caught an incredible sunset at Oak Ridge Park
                                                today. It's so quiet and peaceful this time of year. We really are
                                                lucky to have such a great green space right in our backyard. Does
                                                anyone know if the city.</p>
                                            <div class="storyFooter">
                                                <span class="storySource">Ward 4 Health Desk</span>
                                                <button class="bookmarkButton">
                                                    <svg width="20" height="20" viewBox="0 0 24 24" fill="none"
                                                        stroke="currentColor" stroke-width="2"
                                                        stroke-linecap="round" stroke-linejoin="round">
                                                        <path d="M19 21l-7-5-7 5V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2z">
                                                        </path>
                                                    </svg>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                   		</div>

    </body>

</html>
