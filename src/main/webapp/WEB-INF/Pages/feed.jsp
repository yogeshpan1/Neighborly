<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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

              <!-- CREATE POST -->
				<section class="composer">
				    <form method="post"
				          action="${pageContext.request.contextPath}/feed">
				
				        <input type="hidden" name="action" value="createPost">
				
				        <div class="composerTop">
				            <div class="composerAvatar" style="${empty user.image ? 'background-color: #E86A33;' : 'background-color: transparent; padding: 0;'}">
				                <c:choose>
				                    <c:when test="${not empty user.image}">
				                        <img src="${pageContext.request.contextPath}/getimage?name=${user.userName}"
				                             alt="${user.userName}"
				                             style="width:100%; height:100%; object-fit:cover; border-radius:50%;">
				                    </c:when>
				                    <c:otherwise>
				                        ${fn:toUpperCase(fn:substring(user.userName, 0, 1))}
				                    </c:otherwise>
				                </c:choose>
				            </div>
				            <div class="composerInputWrapper">
				                <c:if test="${not empty error}">
				                    <span class="composerError">${error}</span>
				                </c:if>
				                <input type="text"
				                       name="content"
				                       class="composerInput ${not empty error ? 'inputError' : ''}"
				                       placeholder="What's on your mind?"
				                       value="${not empty error ? param.content : ''}"
				                       >
				            </div>
				        </div>
				
				        <div class="composerBottom">
				            <select name="postType" class="postTypeSelect">
				                <option value="general">General</option>
				                <option value="alert">Alert</option>
				                <option value="discussion">Discussion</option>
				            </select>
				            <button type="submit" class="postBtn">Post</button>
				        </div>
				
				    </form>
				</section>

                <!-- POSTS -->
                <c:forEach var="post" items="${posts}">
                    <article class="post">

                        <!-- HEADER -->
                        <header class="postHeader">
                            <div class="postHeaderLeft">
                                <div class="postAvatar">
                                    <img src="${pageContext.request.contextPath}/getimage?name=${post.userName}"
                                         alt="${post.userName}"
                                         style="width:100%; height:100%; object-fit:cover; border-radius:50%;">
                                </div>
                                <div class="postAuthorInfo">
                                    <div style="display: flex; align-items: center; gap: 6px;">
                                        <span class="postAuthor">${post.userName}</span>
                                        <span class="postTime">${not empty post.postTime ? post.postTime : 'Just now'}</span>
                                    </div>
                                    <span class="postTypeBadge">${post.postType}</span>
                                </div>
                            </div>
                        </header>

                        <!-- BODY -->
                        <div class="postTextContent">
                            <p class="postBody">${post.content}</p>
                        </div>

                        <!-- ACTIONS -->
                        <footer class="postActions">

                            <div class="voteGroup">
                                <!-- UPVOTE -->
                                <form method="post"
                                      action="${pageContext.request.contextPath}/feed">
                                    <input type="hidden" name="action"  value="vote">
                                    <input type="hidden" name="postId"  value="${post.postId}">
                                    <input type="hidden" name="voteType" value="up">
                                    <button type="submit"
                                            class="voteBtn ${post.userVote == 'up' ? 'voteActive' : ''}">
                                        <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round" style="margin-right: 4px;">
                                            <line x1="12" y1="19" x2="12" y2="5"></line>
                                            <polyline points="5 12 12 5 19 12"></polyline>
                                        </svg>
                                        ${post.upCount}
                                    </button>
                                </form>

                                <!-- DOWNVOTE -->
                                <form method="post"
                                      action="${pageContext.request.contextPath}/feed">
                                    <input type="hidden" name="action"  value="vote">
                                    <input type="hidden" name="postId"  value="${post.postId}">
                                    <input type="hidden" name="voteType" value="down">
                                    <button type="submit"
                                            class="voteBtn downvoteBtn ${post.userVote == 'down' ? 'voteActive' : ''}">
                                        <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round" style="margin-right: 4px;">
                                            <line x1="12" y1="5" x2="12" y2="19"></line>
                                            <polyline points="19 12 12 19 5 12"></polyline>
                                        </svg>
                                        ${post.downCount}
                                    </button>
                                </form>
                            </div>

                            <!-- SAVE (toggle) -->
                            <form method="post"
                                  action="${pageContext.request.contextPath}/feed">
                                <input type="hidden" name="action" value="save">
                                <input type="hidden" name="postId" value="${post.postId}">
                                <button type="submit"
                                        class="saveBtnPill ${post.savedByUser ? 'saveActive' : ''}">
                                    ${post.savedByUser ? 'Saved' : 'Save'}
                                </button>
                            </form>

                        </footer>

                    </article>
                </c:forEach>

            </div>
        </section>

    </main>

</body>
</html>