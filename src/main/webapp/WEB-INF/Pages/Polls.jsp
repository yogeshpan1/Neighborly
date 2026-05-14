<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Neighborly</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/sidebar.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/navbar.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/Polls.css">
</head>
<body>

    <jsp:include page="/Components/sidebar.jsp" />

    <main class="mainContent">
        <jsp:include page="/Components/navbar.jsp" />

        <section class="pollsContainer">
            <h1 class="pollsPageTitle">Polls</h1>
            
            <div class="pollsList">
                <article class="pollCard">
                    <div class="pollHeader">
                        <div class="pollIcon gold">
                            <svg width="40" height="40" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.2">
                                <path d="M12 4l-2 4h4l-2-4z" />
                                <path d="M8 9l-2 4h4l-2-4z" />
                                <path d="M16 9l-2 4h4l-2-4z" />
                                <rect x="4" y="14" width="16" height="4" rx="1" />
                            </svg>
                        </div>
                        <p class="pollQuestion">How much will Gold(NPR) go up by May 2026?</p>
                    </div>
                    
                    <form action="<%=request.getContextPath()%>/polls" method="POST" class="pollActions">
                        <input type="hidden" name="pollId" value="Gold_2026">
                        <button type="submit" name="vote" value="Yes" class="pollBtn btnYes">Yes</button>
                        <button type="submit" name="vote" value="No" class="pollBtn btnNo">No</button>
                    </form>
                </article>

                <article class="pollCard">
                    <div class="pollHeader">
                        <div class="pollIcon silver">
                            <svg width="40" height="40" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.2">
                                <path d="M12 4l-2 4h4l-2-4z" />
                                <path d="M8 9l-2 4h4l-2-4z" />
                                <path d="M16 9l-2 4h4l-2-4z" />
                                <rect x="4" y="14" width="16" height="4" rx="1" />
                            </svg>
                        </div>
                        <p class="pollQuestion">How much will Silver(NPR) go up by May 2026?</p>
                    </div>
                    
                    <form action="${pageContext.request.contextPath}/polls" method="POST" class="pollActions">
                        <input type="hidden" name="pollId" value="Silver_2026">
                        <button type="submit" name="vote" value="Yes" class="pollBtn btnYes">Yes</button>
                        <button type="submit" name="vote" value="No" class="pollBtn btnNo">No</button>
                    </form>
                </article>
            </div>
        </section>
    </main>

</body>
</html>