<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Neighborly – Polls</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/sidebar.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/navbar.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/polls.css">
</head>
<body>

    <jsp:include page="/Components/sidebar.jsp" />

    <main class="mainContent">
        <jsp:include page="/Components/navbar.jsp" />

        <section class="pollSection">

            <h2 class="pollPageTitle">Polls</h2>

            <!-- Poll Card 1: Gold -->
            <article class="pollCard">
                <header class="pollCardHeader">
                    <div class="pollCardIcon">
                        <%-- Stacked gold ingot / bar icon --%>
                        <svg width="52" height="44" viewBox="0 0 52 44" fill="none"
                             xmlns="http://www.w3.org/2000/svg">
                            <!-- Top ingot (centered) -->
                            <polygon points="16,2 36,2 40,14 12,14"
                                     fill="none" stroke="#E8A050" stroke-width="1.6"
                                     stroke-linejoin="round"/>
                            <!-- Bottom-left ingot -->
                            <polygon points="1,18 22,18 24,30 0,30"
                                     fill="none" stroke="#E8A050" stroke-width="1.6"
                                     stroke-linejoin="round"/>
                            <!-- Bottom-right ingot -->
                            <polygon points="30,18 51,18 52,30 28,30"
                                     fill="none" stroke="#E8A050" stroke-width="1.6"
                                     stroke-linejoin="round"/>
                        </svg>
                    </div>
                    <p class="pollCardQuestion">How much will Gold(NPR) go up by May 2026?</p>
                </header>

                <div class="pollOptions">
                    <form action="${pageContext.request.contextPath}/polls" method="POST">
                        <input type="hidden" name="pollId" value="1">
                        <input type="hidden" name="vote"   value="yes">
                        <button type="submit" class="pollOptionBtn yes">Yes</button>
                    </form>
                    <form action="${pageContext.request.contextPath}/polls" method="POST">
                        <input type="hidden" name="pollId" value="1">
                        <input type="hidden" name="vote"   value="no">
                        <button type="submit" class="pollOptionBtn no">No</button>
                    </form>
                </div>
            </article>

            <!-- Poll Card 2: Silver -->
            <article class="pollCard">
                <header class="pollCardHeader">
                    <div class="pollCardIcon">
                        <%-- Single ingot icon for Silver --%>
                        <svg width="52" height="44" viewBox="0 0 52 44" fill="none"
                             xmlns="http://www.w3.org/2000/svg">
                            <!-- Top ingot (centered, slightly taller) -->
                            <polygon points="18,1 34,1 37,14 15,14"
                                     fill="none" stroke="#E8A050" stroke-width="1.6"
                                     stroke-linejoin="round"/>
                            <!-- Bottom-left ingot -->
                            <polygon points="1,18 22,18 24,30 0,30"
                                     fill="none" stroke="#E8A050" stroke-width="1.6"
                                     stroke-linejoin="round"/>
                            <!-- Bottom-right ingot -->
                            <polygon points="30,18 51,18 52,30 28,30"
                                     fill="none" stroke="#E8A050" stroke-width="1.6"
                                     stroke-linejoin="round"/>
                        </svg>
                    </div>
                    <p class="pollCardQuestion">How much will Silver(NPR) go up by May 2026?</p>
                </header>

                <div class="pollOptions">
                    <form action="${pageContext.request.contextPath}/polls" method="POST">
                        <input type="hidden" name="pollId" value="2">
                        <input type="hidden" name="vote"   value="yes">
                        <button type="submit" class="pollOptionBtn yes">Yes</button>
                    </form>
                    <form action="${pageContext.request.contextPath}/polls" method="POST">
                        <input type="hidden" name="pollId" value="2">
                        <input type="hidden" name="vote"   value="no">
                        <button type="submit" class="pollOptionBtn no">No</button>
                    </form>
                </div>
            </article>

        </section>
    </main>

</body>
</html>